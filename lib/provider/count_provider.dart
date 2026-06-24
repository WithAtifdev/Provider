
import 'package:flutter/cupertino.dart';

class Countprovider with ChangeNotifier{

  int _count = 0;

  int get count => _count;

  void setCount(){
    _count++;
    notifyListeners();
  }

}