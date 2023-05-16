part of 'change_bloc.dart';

abstract class ChangeState extends Equatable {
  const ChangeState();

  @override
  List<Object> get props => [];
}

class ChangeCreate extends ChangeState {}

class ChangeDelete extends ChangeState {}

class Change extends ChangeState {}
