part of 'busket_bloc.dart';

abstract class BusketState extends Equatable {
  const BusketState();
  @override
  List<Object> get props => [];
}

class BusketInitial extends BusketState {}

class BusketLoading extends BusketState {}

class BusketError extends BusketState {
  final String message;
  const BusketError({required this.message});

  @override
  List<Object> get props => [
        message,
      ];
}

class BusketDownload extends BusketState {
  final List<SaveProductModelDomain> products;

  const BusketDownload({required this.products});

  @override
  List<Object> get props => [products];

  BusketDownload copyWith({
    required List<SaveProductModelDomain>? products,
  }) {
    return BusketDownload(products: products ?? this.products);
  }
}

class BusketEmpty extends BusketState {}
