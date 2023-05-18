import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';
import 'package:internet_magazine/feature/presentation/basket/bloc/busket/busket_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/main_card/main_card_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/save_busket/save_busket_bloc.dart';
import 'package:internet_magazine/feature/presentation/widgets/image_network.dart';
import 'package:internet_magazine/feature/presentation/widgets/widget_stack_bar.dart';

@RoutePage()
class MainCardPage extends StatelessWidget {
  const MainCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: BlocBuilder<MainCardBloc, MainCardState>(
                  builder: (context, state) {
                    FlutterNativeSplash.remove();
                    if (state is MainCardDownloaded) {
                      return Column(
                        children: [
                          const Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(categories),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Wrap(
                              children: [
                                ...List.generate(
                                  state.listGadget.length,
                                  (index) => Card(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 3,
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 70,
                                            height: 140,
                                            child: imageNetwork(
                                              image:
                                                  state.listGadget[index].image,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 4.0,
                                            ),
                                            child: Text(
                                                state.listGadget[index].name),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Padding(
                              padding: EdgeInsets.only(top: 12.0, left: 20.0),
                              child: Text(product),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Wrap(
                              children: [
                                ...List.generate(
                                  state.listProduct.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                      vertical: 3,
                                    ),
                                    child: GestureDetector(
                                      onTap: (() {
                                        context.router.push(
                                          SingleCardRoute(index: index),
                                        );
                                      }),
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
                                                  image: state
                                                      .listProduct[index].image,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        state.listProduct[index]
                                                            .category,
                                                      ),
                                                      FittedBox(
                                                        fit: BoxFit.fitWidth,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            top: 5,
                                                          ),
                                                          child: Text(
                                                            state
                                                                .listProduct[
                                                                    index]
                                                                .name,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Spacer(),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Text(
                                                      "${state.listProduct[index].price} руб.",
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20.0),
                                                    child: BlocConsumer<
                                                        SaveBusketBloc,
                                                        SaveBusketState>(
                                                      listener: (contextSave,
                                                          stateSave) {
                                                        if (stateSave
                                                            is SaveBusketError) {
                                                          widgetSnackBar(
                                                              context:
                                                                  contextSave,
                                                              text: stateSave
                                                                  .message);
                                                        } else if (stateSave
                                                            is SaveBusketDownload) {
                                                          return widgetSnackBar(
                                                              context:
                                                                  contextSave,
                                                              text:
                                                                  saveComplete);
                                                        }
                                                      },
                                                      builder:
                                                          (context, stateSave) {
                                                        if (stateSave
                                                            is SaveBusketLoading) {
                                                          return const CircularProgressIndicator();
                                                        } else {
                                                          return GestureDetector(
                                                            onTap: () {
                                                              //TODO: add to hive and busket
                                                              context
                                                                  .read<
                                                                      SaveBusketBloc>()
                                                                  .add(
                                                                    SaveToBusket(
                                                                      product: state
                                                                              .listProduct[
                                                                          index],
                                                                      index:
                                                                          index,
                                                                    ),
                                                                  );
                                                              context.read<
                                                                  BusketBloc>();
                                                            },
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color:
                                                                    mainColorBlue,
                                                              ),
                                                              child:
                                                                  const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            10.0,
                                                                        vertical:
                                                                            7.0),
                                                                child: Text(
                                                                    payProdyct),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else if (state is MainCardError) {
                      return Center(
                        child: Text("Упс, ${state.message}"),
                      );
                    } else if (state is MainCardInitial) {
                      context.read<MainCardBloc>().add(const GetAllData());
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
