part of 'parameter_product_bloc.dart';

abstract class ParameterProductState extends Equatable {
  const ParameterProductState();

  @override
  List<Object> get props => [];
}

class ParameterProductInitial extends ParameterProductState {}
class ParameterProductDownload extends ParameterProductState {
  final List<DataModelDomain> dataList;

  const ParameterProductDownload(this.dataList);
  @override
  List<Object> get props => [dataList];
}
