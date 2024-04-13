import 'package:flutter/material.dart';

class SelectedItemProiver extends ChangeNotifier
{
  int selectedItem=1;
  void currentItem(int index)
  {
    selectedItem=index;
    notifyListeners();
  }
}