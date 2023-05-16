import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';


@RoutePage()
class GodPage extends StatelessWidget {
  const GodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello this is god mode"),
    );
  }
}
