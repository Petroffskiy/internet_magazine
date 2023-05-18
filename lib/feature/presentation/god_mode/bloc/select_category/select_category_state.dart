part of 'select_category_bloc.dart';

abstract class CategoryState extends Equatable {
  final GadgetsModelDomain? selectedCategory;
  const CategoryState({required this.selectedCategory});
  @override
  List<Object?> get props => [];
}

class CategoryInitial extends CategoryState {
  const CategoryInitial({required super.selectedCategory});
}

class CategoryLoading extends CategoryState {
  const CategoryLoading({required super.selectedCategory});
}

class CategoryLoaded extends CategoryState {
  final List<GadgetsModelDomain> categoryList;
  @override
  final GadgetsModelDomain? selectedCategory;

  const CategoryLoaded({
    required this.categoryList,
    required this.selectedCategory,
  }) : super(selectedCategory: selectedCategory);
  @override
  List<Object?> get props => [
        categoryList,
        selectedCategory,
      ];
}

class CategoryError extends CategoryState {
  final String errorMessage;

  const CategoryError({required this.errorMessage}) : super(selectedCategory: null);
}

