import 'package:tab_type';
import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  final TabType tabType;
  final GlobalKey<NavigatorState> navigatorKey;

  TabNavigator({this.tabType, this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    Widget child;

    switch (tabType) {
      case TabType.PageOne:
        child = PageOne();
        break;
      case TabType.PageTwo:
        child = PageTwo();
        break;
      case TabType.PageThree:
        child = PageThree();
        break;
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
