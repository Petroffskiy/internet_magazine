part of 'list_view_check_bloc.dart';

abstract class ListViewCheckEvent extends Equatable {
  const ListViewCheckEvent();
  @override
  List<Object?> get props => [];
}

class SelectAllEvent extends ListViewCheckEvent {
  final int lengthList;

  const SelectAllEvent({
    required this.lengthList,
  });

  @override
  List<Object?> get props => [lengthList];
}

class ToggleCheckboxEvent extends ListViewCheckEvent {
  final int index;

  const ToggleCheckboxEvent(this.index);

  @override
  List<Object?> get props => [index];
}
