import 'package:flutter/material.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/project_strings.dart';

void widgetSnackBar({
  String? text,
  required BuildContext context,
  int? durMillisec,
}) {
  text ??= error;
  final snackBar = SnackBar(
    duration:  Duration(milliseconds: durMillisec ?? 700),
    content: Text(
      text,
      style:
      Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    backgroundColor: mainColorBlue,
  );
  ScaffoldMessenger.of(context).showSnackBar(
    snackBar,
  );
}