import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/parameter_product_bloc/parameter_product_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/god_product/god_product_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/image_picker/image_picker_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/select_category/select_category_bloc.dart';

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
            context.router.pop();
          }
        },
        builder: (context, state) {
          if (state is GodProductLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GodProductDownload) {
            final TextEditingController countText = TextEditingController();
            final TextEditingController descriptionText =
                TextEditingController();

            final TextEditingController nameText = TextEditingController();
            final imagePickerBloc = context.read<ImagePickerBloc>();

            final String? imagePath =
                context.read<ImagePickerBloc>().getImagePath();
            return SingleChildScrollView(
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
                                listGadgets: state.listGadget));
                          },
                          isExpanded: true,
                          iconSize: 16,
                          hint: const Text(
                            "Выберите категорию",
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
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
                        return const Text("Произошла ошибка в блоке категории");
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      controller: countText,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
                      controller: descriptionText,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        border: InputBorder.none,
                        hintText: "Введите описание",
                        // hintStyle: Theme.of(context).textTheme.labelSmall,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      controller: nameText,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        border: InputBorder.none,
                        hintText: "Введите название",
                        // hintStyle: Theme.of(context).textTheme.labelSmall,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
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
                                color: grey),
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
                                color: grey),
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
                            if (stateParameter is ParameterProductDownload) {
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: stateParameter.dataList.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (value) {
                                            context
                                                .read<ParameterProductBloc>()
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
                                                .read<ParameterProductBloc>()
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
                                color: mainColorBlue,
                              ),
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
