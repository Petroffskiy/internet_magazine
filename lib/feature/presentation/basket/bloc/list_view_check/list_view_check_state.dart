part of 'list_view_check_bloc.dart';

abstract class ListViewCheckState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ListInitial extends ListViewCheckState {}

class ListLoaded extends ListViewCheckState {
  final List<bool> checkboxes;

  ListLoaded(this.checkboxes);

  @override
  List<Object?> get props => [checkboxes];
}
