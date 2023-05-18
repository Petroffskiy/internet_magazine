part of 'god_product_bloc.dart';

abstract class GodProductEvent extends Equatable {
  const GodProductEvent();

  @override
  List<Object> get props => [];
}

class GetGadget extends GodProductEvent {}

class CreateProduct extends GodProductEvent {
  final String name;
  final String count;
  final String category;
  final String price;
  final String image;
  final List<DataModelDomain> parameters;
  const CreateProduct({
    required this.name,
    required this.count,
    required this.category,
    required this.price,
    required this.image,
    required this.parameters,
  });

  @override
  List<Object> get props => [image];
}
