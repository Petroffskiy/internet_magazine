part of 'save_busket_bloc.dart';

abstract class SaveBusketEvent extends Equatable {
  const SaveBusketEvent();

  @override
  List<Object> get props => [];
}

class SaveToBusket extends SaveBusketEvent {
  final ProductModelDomain product;
  final int index;
  const SaveToBusket({
    required this.product,
    required this.index,
  });

  @override
  List<Object> get props => [
        product,
        index,
      ];
}
