part of 'god_data_bloc.dart';

abstract class GodDataState extends Equatable {
  const GodDataState();

  @override
  List<Object> get props => [];
}

class GodDataInitial extends GodDataState {}

class GodDataLoading extends GodDataState {}

class GodDataError extends GodDataState {
  final String message;

  const GodDataError({required this.message});

  @override
  List<Object> get props => [message];
}

class GodDataDownload extends GodDataState {
  final List<ProductModelDomain> listProduct;

  const GodDataDownload({required this.listProduct});

  @override
  List<Object> get props => [
        listProduct,
      ];

  GodDataDownload copyWith({required List<ProductModelDomain>? listProduct}) {
    return GodDataDownload(listProduct: listProduct ?? this.listProduct);
  }
}
