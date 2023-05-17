part of 'god_product_bloc.dart';

abstract class GodProductState extends Equatable {
  const GodProductState();

  @override
  List<Object> get props => [];
}

class GodProductInitial extends GodProductState {}

class GodProductLoading extends GodProductState {}

class GodProductCreate extends GodProductState {}

class GodProductError extends GodProductState {
  final String message;

  const GodProductError({required this.message});

  @override
  List<Object> get props => [message];
}

class GodProductDownload extends GodProductState {
  final List<GadgetsModelDomain> listGadget;

  const GodProductDownload({required this.listGadget});

  @override
  List<Object> get props => [listGadget];
}
