part of 'parameter_product_bloc.dart';

abstract class ParameterProductState extends Equatable {
  const ParameterProductState(this.dataList);
  final List<DataModelDomain>? dataList;

  @override
  List<Object> get props => [];
}

class ParameterProductInitial extends ParameterProductState {
  ParameterProductInitial(super.dataList);
}
class ParameterProductDownload extends ParameterProductState {
  final List<DataModelDomain> dataList;

  const ParameterProductDownload(this.dataList) : super(null);
  @override
  List<Object> get props => [dataList];
}
