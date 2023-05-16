import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/change_bloc/change_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/widgets/widget_create.dart';

@RoutePage()
class GodProductPage extends StatelessWidget {
  const GodProductPage({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<ChangeBloc>().add(const GetCreate());
                  },
                  child: const Card(
                    child: Text("Создать"),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Card(
                    child: Text("Удалить"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<ChangeBloc>().add(const GetChange());
                  },
                  child: const Card(
                    child: Text("Изменить"),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: BlocBuilder<ChangeBloc, ChangeState>(
                builder: ((context, state) {
                  if (state is ChangeCreate) {
                    return createWidget(context: context);
                  } else if (state is ChangeCreate) {
                    return const Text("create");
                  } else {
                    return const Text("Error");
                  }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
