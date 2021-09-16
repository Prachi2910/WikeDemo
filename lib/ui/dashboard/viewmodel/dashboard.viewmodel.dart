// Flutter imports:
import 'package:flutter/material.dart';

class DashboardViewModel extends ChangeNotifier {
  PageController pageController = PageController(initialPage: 0);
  int? currentIndex;
  DashboardViewModel() {
    setCurrentPage(pageController.initialPage);
  }

  void setCurrentPage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void setPageController(int index) {
    pageController.jumpToPage(index);
    notifyListeners();
  }
}
