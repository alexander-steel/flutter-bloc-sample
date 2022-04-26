enum TabPage { home, calendar, pageView }

int getTabPageIndex(TabPage tabPage) {
  switch (tabPage) {
    case TabPage.home:
      return 0;
    case TabPage.calendar:
      return 1;
    case TabPage.pageView:
      return 2;
  }
}
