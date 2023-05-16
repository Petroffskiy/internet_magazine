part of 'change_bloc.dart';

abstract class ChangeEvent extends Equatable {
  const ChangeEvent();

  @override
  List<Object> get props => [];
}

class GetChange extends ChangeEvent {
  const GetChange();

  @override
  List<Object> get props => [];
}
class GetCreate extends ChangeEvent {
  const GetCreate();

  @override
  List<Object> get props => [];
}
