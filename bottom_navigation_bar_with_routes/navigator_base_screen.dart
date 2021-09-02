import 'package:tab_navigator.dart';
import 'package:tab_type.dart';
import 'package:flutter/material.dart';

class NavigatorBaseScreen extends StatefulWidget {
  @override
  _NavigatorBaseScreenState createState() => _NavigatorBaseScreenState();
}

class _NavigatorBaseScreenState extends State<NavigatorBaseScreen> {
  TabType _currentTab = TabType.PageOne;
  int _currentIndex = 0;

  Map<TabType, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabType.PageOne: GlobalKey<NavigatorState>(),
    TabType.PageTwo: GlobalKey<NavigatorState>(),
    TabType.PageThree: GlobalKey<NavigatorState>(),
  };

  void _onSelectedTab(TabType selectedTab) {
    //Navigate back to tab route when current tab is selected.
    if (selectedTab == _currentTab) {
      _navigatorKeys[selectedTab].currentState.popUntil((route) => route.isFirst);
    }
    //Update state to newly selected tab screen.
    else {
      setState(() {
        _currentTab = selectedTab;
        _currentIndex = selectedTab.index;
      });
    }
  }

  Widget _buildOffstageNavigator(TabType tabType) {
    return Offstage(
      offstage: _currentTab != tabType,
      child: TabNavigator(
        tabType: tabType,
        navigatorKey: _navigatorKeys[tabType],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await _navigatorKeys[_currentTab].currentState.maybePop(),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(54, 69, 79, 0.2),
        body: Stack(
          children: [
            _buildOffstageNavigator(TabType.PageOne),
            _buildOffstageNavigator(TabType.PageTwo),
            _buildOffstageNavigator(TabType.PageThree),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,
          backgroundColor: Color.fromRGBO(54, 69, 79, 0.3),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => _onSelectedTab(TabType.values[index]),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'One'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Two'),
            BottomNavigationBarItem(icon: Icon(Icons.file_download), label: 'Three'),
          ],
        ),
      ),
    );
  }
}
