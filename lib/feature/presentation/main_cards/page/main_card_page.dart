import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/main_card_bloc.dart';
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
                    if (state is MainCardDownloaded) {
                      return Wrap(
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
                                      width: 100,
                                      height: 200,
                                      child: imageNetwork(
                                        image: state.listGadget[index].image,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 4.0,
                                      ),
                                      child: Text(state.listGadget[index].name),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else if (state is MainCardError) {
                      widgetSnackBar(context: context, text: state.message);
                      return const Center(
                        child: Text("Упс"),
                      );
                    } else if (state is MainCardInitial) {
                      context.read<MainCardBloc>().add(const GetListCategory());
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
