import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
  static MainController get to=>Get.put(MainController());

  PageController controller = PageController();

  final _selectedIndex = 0.obs;

  get selectedIndex => _selectedIndex.value;

  set selectedIndex(value) {
    _selectedIndex.value = value;
  }
}