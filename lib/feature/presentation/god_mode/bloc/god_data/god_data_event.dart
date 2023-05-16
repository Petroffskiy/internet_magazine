part of 'god_data_bloc.dart';

abstract class GodDataEvent extends Equatable {
  const GodDataEvent();

  @override
  List<Object> get props => [];
}

class GetData extends GodDataEvent {
  const GetData();

  @override
  List<Object> get props => [];
}
