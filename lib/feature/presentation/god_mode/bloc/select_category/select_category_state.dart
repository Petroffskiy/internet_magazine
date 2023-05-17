part of 'select_category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<GadgetsModelDomain> categoryList;
  final GadgetsModelDomain selectedCategory;

  const CategoryLoaded({
    required this.categoryList,
    required this.selectedCategory,
  });
  @override
  List<Object> get props => [
        categoryList,
        selectedCategory,
      ];
}

class CategoryError extends CategoryState {
  final String errorMessage;

  const CategoryError({required this.errorMessage});
}
