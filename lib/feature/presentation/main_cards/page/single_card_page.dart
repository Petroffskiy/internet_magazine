import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SingleCardPage extends StatelessWidget {
  final int index;
   const SingleCardPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello this is $index"),
    );
  }
}
