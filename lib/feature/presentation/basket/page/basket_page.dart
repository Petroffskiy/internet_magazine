import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/presentation/basket/bloc/busket/busket_bloc.dart';
import 'package:internet_magazine/feature/presentation/basket/bloc/list_view_check/list_view_check_bloc.dart';
import 'package:internet_magazine/core/injection.dart' as inj;

@RoutePage()
class BusketPage extends StatelessWidget {
  const BusketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inj.inject<ListViewCheckBloc>(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20.0),
        child: BlocConsumer<BusketBloc, BusketState>(
          listener: (context, state) {
            if (state is BusketDownload) {
              context.read<ListViewCheckBloc>().add(
                    SelectAllEvent(
                      lengthList: state.products.length,
                    ),
                  );
            }
          },
          builder: (context, state) {
            if (state is BusketDownload) {
              context.read<ListViewCheckBloc>().add(
                    SelectAllEvent(
                      lengthList: state.products.length,
                    ),
                  );
              return BlocBuilder<ListViewCheckBloc, ListViewCheckState>(
                builder: (context, check) {
                  if (check is ListLoaded) {
                    bool allCheck =
                        check.checkboxes.every((element) => element);

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Checkbox(
                                  value: allCheck,
                                  onChanged: (bool? value) {
                                    allCheck = !value!;
                                    
                                  },
                                ),
                                const Text(changeAll),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: state.products.length,
                            itemBuilder: (context, index) {
                              context.read<ListViewCheckBloc>().add(
                                    SelectAllEvent(
                                      lengthList: state.products.length,
                                    ),
                                  );
                              final isSelected = check.checkboxes[index];
                              final product = state.products[index];
                              return Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: isSelected,
                                        onChanged: (bool? value) {
                                          // product.isSelected = value!;
                                          final listBloc =
                                              context.read<ListViewCheckBloc>();
                                          listBloc
                                              .add(ToggleCheckboxEvent(index));
                                        },
                                      ),
                                      Image.network(
                                        product.image,
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                ),
                                                child: Text(
                                                  product.name,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Text(
                                                'Цена: ${product.price} руб.',
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  //TODO: delete
                                                  context
                                                      .read<BusketBloc>()
                                                      .add(DeleteBusketData(
                                                          index: product.id));
                                                  context.read<BusketBloc>().add(
                                                      const GetBusketData());
                                                },
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                      color: mainColorBlue,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        30,
                                                      ),
                                                    ),
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Text(
                                                          'Удалить из корзины'),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              );
            }
            if (state is BusketLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text(emptyBusket),
              );
            }
          },
        ),
      ),
    );
  }
}
