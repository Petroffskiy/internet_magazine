import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/assets/project_strings.dart';

@RoutePage()
class BusketPage extends StatelessWidget {
  const BusketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              //TODO выбрать всё
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Checkbox(value: value, onChanged: onChanged),
                    const Text(changeAll),
                  ],
                ),
              ),
            ),
          ),
          // ListView.builder(
          //   itemCount: productList.length,
          //   itemBuilder: (context, index) {
          //     final product = productList[index];

          //     return Card(
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Checkbox(
          //               value: product.isSelected,
          //               onChanged: (value) {
          //                 product.isSelected = value ?? false;
          //               },
          //             ),
          //             Image.network(
          //               product.imageUrl,
          //               width: 100,
          //               height: 100,
          //               fit: BoxFit.cover,
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 10.0),
          //               child: Expanded(
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Text(
          //                       product.name,
          //                       style: const TextStyle(
          //                         fontSize: 16,
          //                         fontWeight: FontWeight.bold,
          //                       ),
          //                     ),
          //                     Padding(
          //                       padding: const EdgeInsets.only(top: 5.0),
          //                       child: Text(
          //                         product.description,
          //                         style: const TextStyle(fontSize: 14),
          //                       ),
          //                     ),
          //                     const SizedBox(height: 10),
          //                     Padding(
          //                       padding: const EdgeInsets.only(top: 10.0),
          //                       child: Text(
          //                         'Цена: ${product.price} руб.',
          //                         style: const TextStyle(
          //                           fontSize: 16,
          //                           fontWeight: FontWeight.bold,
          //                         ),
          //                       ),
          //                     ),
          //                     Padding(
          //                       padding: const EdgeInsets.only(top: 10.0),
          //                       child: ElevatedButton(
          //                         onPressed: () {},
          //                         child: const Text('Добавить в корзину'),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // )
        ],
      ),
    );
  }
}
