part of 'bottom_bloc.dart';

abstract class BottomState extends Equatable {
  const BottomState({required this.role});
  final UserRole role;
  @override
  List<Object> get props => [];
}

class BottomInitial extends BottomState {
  const BottomInitial({required super.role});
}

class BottomDownload extends BottomState {
  final UserRole role;

  const BottomDownload({required this.role}) : super(role: role);

  @override
  List<Object> get props => [role];

  BottomDownload copyWith(UserRole? role) {
    return BottomDownload(role: role ?? this.role);
  }
}
