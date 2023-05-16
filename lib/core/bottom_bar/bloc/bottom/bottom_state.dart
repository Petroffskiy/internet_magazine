part of 'bottom_bloc.dart';


abstract class BottomState extends Equatable {
  const BottomState();
  @override
  List<Object> get props => [];
}

class BottomInitial extends BottomState {}

class BottomDownload extends BottomState {
  final UserRole role;

  const BottomDownload({required this.role});

  @override
  List<Object> get props => [];
}
