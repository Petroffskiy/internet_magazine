import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/god_data/god_data_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/parameter_product_bloc/parameter_product_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/god_product/god_product_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/image_picker/image_picker_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/select_category/select_category_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/main_card/main_card_bloc.dart';
import 'package:internet_magazine/feature/presentation/widgets/widget_stack_bar.dart';

@RoutePage()
class GodNewProductPage extends StatelessWidget {
  const GodNewProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: BlocConsumer<GodProductBloc, GodProductState>(
        listener: (context, state) {
          if (state is GodProductCreate) {
            context.read<MainCardBloc>().add(const GetAllData());
            context.read<GodProductBloc>().add(GetGadget());
            context.router.pop();
            widgetSnackBar(context: context, text: "Товар успешно создан");
          }
        },
        builder: (context, state) {
          //TODO: need bloc
          bool isCheck = true;
          if (state is GodProductLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GodProductDownload) {
            final TextEditingController countText = TextEditingController();
            final TextEditingController priceText = TextEditingController();

            final TextEditingController descriptionText =
                TextEditingController();

            final TextEditingController nameText = TextEditingController();
            final imagePickerBloc = context.read<ImagePickerBloc>();

            final String? imagePath =
                context.read<ImagePickerBloc>().getImagePath();
            String? category;
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      BlocBuilder<CategoryBloc, CategoryState>(
                        builder: (contextCategory, stateCategory) {
                          if (stateCategory is CategoryLoaded) {
                            final List<DropdownMenuItem<GadgetsModelDomain>>
                                dropdownMenuItemsGadgets =
                                _buildDropDownMenuItemsGadgets(
                                    list: state.listGadget);
                            return DropdownButton<GadgetsModelDomain>(
                              onChanged: (value) {
                                context.read<CategoryBloc>().add(SelectCategory(
                                      category: value!,
                                      listGadgets: state.listGadget,
                                    ));
                                category = value.id;
                              },
                              isExpanded: true,
                              iconSize: 16,
                              hint: const Text(
                                "Выберите категорию",
                              ),
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
                              value: stateCategory.selectedCategory,
                              items: dropdownMenuItemsGadgets,
                            );
                          }
                          if (stateCategory is CategoryInitial) {
                            context.read<CategoryBloc>().add(SelectCategory(
                                category: state.listGadget.first,
                                listGadgets: state.listGadget));
                            return const CircularProgressIndicator();
                          } else {
                            return const Text(
                                "Произошла ошибка в блоке категории");
                          }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          controller: countText,
                          maxLines: 1,
                          decoration: InputDecoration(
                            errorText: isCheck ? null : "Пустое поле",
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            border: InputBorder.none,
                            hintText: "Введите количество товара",
                            // hintStyle: Theme.of(context).textTheme.labelSmall,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          controller: priceText,
                          maxLines: 1,
                          decoration: InputDecoration(
                            errorText: isCheck ? null : "Пустое поле",
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            border: InputBorder.none,
                            hintText: "Введите цену",
                            // hintStyle: Theme.of(context).textTheme.labelSmall,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          controller: descriptionText,
                          maxLines: 1,
                          decoration: InputDecoration(
                            errorText: isCheck ? null : "Пустое поле",
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            border: InputBorder.none,
                            hintText: "Введите описание",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          controller: nameText,
                          maxLines: 1,
                          decoration: InputDecoration(
                            errorText: isCheck ? null : "Пустое поле",
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            border: InputBorder.none,
                            hintText: "Введите название",
                          ),
                        ),
                      ),
                      imagePath != null
                          ? Image.file(
                              File(imagePath),
                              height: 100,
                              width: 100,
                            )
                          : const SizedBox(),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text("Выберите фото"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                imagePickerBloc.add(PickImageFromCamera());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: isCheck ? grey : Colors.red,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Камера"),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                imagePickerBloc.add(PickImageFromGallery());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: isCheck ? grey : Colors.red),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Галлерея"),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            BlocBuilder<ParameterProductBloc,
                                ParameterProductState>(
                              builder: (context, stateParameter) {
                                if (stateParameter
                                    is ParameterProductDownload) {
                                  List<TextEditingController> controllers = [];
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: stateParameter.dataList.length,
                                    itemBuilder: (context, index) {
                                      TextEditingController indexController =
                                          TextEditingController();
                                      controllers.add(indexController);

                                      return Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller: controllers[index],
                                              onChanged: (value) {
                                                context
                                                    .read<
                                                        ParameterProductBloc>()
                                                    .add(UpdateParameterProduct(
                                                      index: index,
                                                      key: value,
                                                    ));
                                              },
                                              decoration: const InputDecoration(
                                                  labelText: 'Название '),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              onChanged: (value) {
                                                context
                                                    .read<
                                                        ParameterProductBloc>()
                                                    .add(UpdateParameterProduct(
                                                      index: index,
                                                      value: value,
                                                    ));
                                              },
                                              decoration: const InputDecoration(
                                                  labelText: 'Значение'),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                return Container();
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: GestureDetector(
                                onTap: () {
                                  context
                                      .read<ParameterProductBloc>()
                                      .add(AddParameterProduct());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          isCheck ? mainColorBlue : Colors.red),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Добавить'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: GestureDetector(
                    onTap: () {
                      //TODO: add
                      print("tap");
                      // if (context
                      //             .read<CategoryBloc>()
                      //             .state
                      //             .selectedCategory !=
                      //         null &&
                      //     countText.text.isNotEmpty &&
                      //     descriptionText.text.isNotEmpty &&
                      //     nameText.text.isNotEmpty &&
                      //     context.read<ParameterProductBloc>().state.dataList !=
                      //         null &&
                      //     imagePath != null &&
                      //     priceText.text.isNotEmpty) {
                      isCheck = false;
                      context.read<GodProductBloc>().add(CreateProduct(
                            image:
                                context.read<ImagePickerBloc>().getImagePath()!,
                            category: category ?? "",
                            count: countText.text,
                            name: nameText.text,
                            price: priceText.text,
                            parameters: context
                                .read<ParameterProductBloc>()
                                .state
                                .dataList!,
                          ));
                      // } else {
                      //   isCheck = false;
                      //   print("not check");
                      // }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: mainColorBlue),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Создать"),
                      ),
                    ),
                  ),
                )
              ],
            );
          } else if (state is GodProductLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Center(
              child: Text("Произошла ошибка"),
            );
          }
        },
      ),
    );
  }

  List<DropdownMenuItem<GadgetsModelDomain>> _buildDropDownMenuItemsGadgets(
      {required List<GadgetsModelDomain> list}) {
    List<DropdownMenuItem<GadgetsModelDomain>> items = List.generate(
      list.length,
      (index) => DropdownMenuItem(
        value: list[index],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Text(
            list[index].name,
          ),
        ),
      ),
    );
    return items;
  }
}
