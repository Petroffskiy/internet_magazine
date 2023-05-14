import 'package:flutter/material.dart';
import 'package:internet_magazine/assets/project_strings.dart';

class NavigationModel {
  static const icons = [
    Icon(Icons.shop_outlined),
    Icon(Icons.shopping_basket_outlined),
    Icon(Icons.person_outline_outlined),
    Icon(Icons.admin_panel_settings_outlined)
  ];

  static const List<String> labels = [
    mainLabel,
    bascetLabel,
    personalLabel,
    adminLabel,
  ];

  static final List<BottomNavigationBarItem> bottomNavigationItemsListAdmin =
      List.generate(
    icons.length,
    (index) => BottomNavigationBarItem(
      icon: icons[index],
      label: labels[index],
    ),
  );

  static final List<BottomNavigationBarItem> bottomNavigationItemsListUser =
      List.generate(
    icons.length - 1,
    (index) => BottomNavigationBarItem(
      icon: icons[index],
      label: labels[index],
    ),
  );
}
