import 'package:flutter/material.dart';

class GlobalConfigurationProvider with ChangeNotifier {
  String appName = "Learning Flutter with me";
  String author = "Lyhour";

  void changeAuthorName({String newName}) {
    author = newName;
    notifyListeners();
  }
}
