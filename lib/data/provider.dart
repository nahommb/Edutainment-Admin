
import 'package:flutter/cupertino.dart';

class DataProvider with ChangeNotifier {

  int _pageIndex = 0;

  int get pageIndex =>_pageIndex;

  void changePage(index){
    _pageIndex = index;

    notifyListeners();
  }
}