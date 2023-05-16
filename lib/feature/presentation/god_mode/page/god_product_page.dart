import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/change_bloc/change_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/god_data/god_data_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/widgets/widget_create.dart';
import 'package:internet_magazine/feature/presentation/widgets/image_network.dart';

@RoutePage()
class GodProductPage extends StatelessWidget {
  const GodProductPage({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<GodDataBloc, GodDataState>(
                  builder: (context, state) {
                    if (state is GodDataDownload) {
                      return Wrap(
                        children: [
                          ...List.generate(
                            state.listProduct.length,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 3,
                              ),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 5.0,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: imageNetwork(
                                          image: state.listProduct[index].image,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                state.listProduct[index]
                                                    .category,
                                              ),
                                              FittedBox(
                                                fit: BoxFit.fitWidth,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 5,
                                                  ),
                                                  child: Text(
                                                    state.listProduct[index]
                                                        .name,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  "${state.listProduct[index].price} руб.",
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.transform)),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon:
                                                      const Icon(Icons.delete))
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else if (state is GodDataLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return const Center(child: Text("Что-то пошло не так "));
                    }
                  },
                )
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: mainColorBlue,
                    borderRadius: BorderRadius.circular(40)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
