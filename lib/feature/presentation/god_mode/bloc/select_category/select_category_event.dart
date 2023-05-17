part of 'select_category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();
  @override
  List<Object> get props => [];
}

class SelectCategory extends CategoryEvent {
  final GadgetsModelDomain category;
  final List<GadgetsModelDomain> listGadgets;

  const SelectCategory({
    required this.category,
    required this.listGadgets,
  });

  @override
  List<Object> get props => [category, listGadgets];
}
