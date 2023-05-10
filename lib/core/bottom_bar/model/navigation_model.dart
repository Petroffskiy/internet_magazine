import 'package:flutter/material.dart';
import 'package:internet_magazine/assets/project_strings.dart';

class NavigationModel {
  static const icons = [
    Icon(Icons.shop_outlined),
    Icon(Icons.shopping_basket_outlined),
    Icon(Icons.person_outline_outlined)
  ];

  static const List<String> labels = [
    mainLabel,
    bascetLabel,
    personalLabel,
  ];

  static final List<BottomNavigationBarItem> bottomNavigationItemsList =
      List.generate(
    icons.length,
    (index) => BottomNavigationBarItem(
      icon: icons[index],
      label: labels[index],
    ),
  );
}
