import 'package:flutter/material.dart';

Widget createWidget({
  required BuildContext context,
}) {
  final List<String> list = [
    'Все категории',
    'Категория 1',
    'Категория 2',
  ];

  String listValue = list.first;
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              borderRadius: const BorderRadius.all(
                Radius.circular(22.0),
              ),
              value: listValue,
              // dropdownColor: backgroundLogoColor,
              iconSize: 16,
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              // iconEnabledColor: textColorOnGreen,
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      top: 8.0,
                      bottom: 8.0,
                      right: 60.0,
                    ),
                    child: Text(
                      value,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                listValue = value!;
              },
            ),
          ],
        ),
      ),
    ],
  );
}
