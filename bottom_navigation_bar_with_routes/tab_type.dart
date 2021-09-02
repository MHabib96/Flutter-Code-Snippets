enum TabType { PageOne, PageTwo, PageThree }

extension TabExtensions on TabType {
  int get index {
    switch (this) {
      case TabType.PageOne:
        return 0;
      case TabType.PageTwo:
        return 1;
      case TabType.PageThree:
        return 2;
    }
  }
}
