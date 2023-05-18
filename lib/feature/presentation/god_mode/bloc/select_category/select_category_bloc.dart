import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';

part 'select_category_event.dart';
part 'select_category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryInitial(selectedCategory: null)) {
    on<SelectCategory>(
      (event, emit) {
        emit(CategoryLoaded(
            categoryList: event.listGadgets, selectedCategory: event.category));
      },
    );
  }
}
