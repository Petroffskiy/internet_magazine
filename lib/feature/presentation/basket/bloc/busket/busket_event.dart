part of 'busket_bloc.dart';

abstract class BusketEvent extends Equatable {
  const BusketEvent();
  @override
  List<Object> get props => [];
}

class GetBusketData extends BusketEvent {
  const GetBusketData();

  @override
  List<Object> get props => [];
}

class DeleteBusketData extends BusketEvent {
  final String index;

  const DeleteBusketData({required this.index});

  @override
  List<Object> get props => [index];
}
