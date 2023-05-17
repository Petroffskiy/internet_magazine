part of 'parameter_product_bloc.dart';

abstract class ParameterProductEvent extends Equatable {
  const ParameterProductEvent();

  @override
  List<Object?> get props => [];
}

class AddParameterProduct extends ParameterProductEvent {}

class UpdateParameterProduct extends ParameterProductEvent {
  final int index;
  final String? key;
  final String? value;

  const UpdateParameterProduct({
    required this.index,
    this.key,
    this.value,
  });

  @override
  List<Object?> get props => [index, key, value];
}
