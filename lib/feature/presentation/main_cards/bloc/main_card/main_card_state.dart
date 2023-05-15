part of 'main_card_bloc.dart';

abstract class MainCardState extends Equatable {
  const MainCardState();
  @override
  List<Object> get props => [];
}

class MainCardInitial extends MainCardState {}

class MainCardLoading extends MainCardState {}

class MainCardError extends MainCardState {
  final String message;

  const MainCardError({required this.message});
  @override
  List<Object> get props => [];
}

class MainCardDownloaded extends MainCardState {
  final List<GadgetsModelDomain> listGadget;
  final List<ProductModelDomain> listProduct;

  const MainCardDownloaded({
    required this.listGadget,
    required this.listProduct,
  });

  @override
  List<Object> get props => [
        listGadget,
        listProduct,
      ];
      
  MainCardDownloaded copyWith({
    required List<GadgetsModelDomain>? listGadget,
    required List<ProductModelDomain>? listProduct,
  }) {
    return MainCardDownloaded(
      listGadget: listGadget ?? this.listGadget,
      listProduct: listProduct ?? this.listProduct,
    );
  }
}
