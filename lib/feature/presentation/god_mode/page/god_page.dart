import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';

@RoutePage()
class GodPage extends StatelessWidget {
  const GodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Действия при нажатии на первую кнопку
                context.router.push(const GodProductRoute());
              },
              child: const Card(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Text(
                    "Товар",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                  // Действия при нажатии 
                },
                child: Text(
                  'Категори',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Действия при нажатии
              },
              child: Text(
                'Пользователи',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
