import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/feature/domain/model/god/create/data_model_domain.dart';


part 'parameter_product_event.dart';
part 'parameter_product_state.dart';

class ParameterProductBloc
    extends Bloc<ParameterProductEvent, ParameterProductState> {
  List<DataModelDomain> dataList = [];

  ParameterProductBloc() : super(ParameterProductInitial(null)) {
    on<AddParameterProduct>(
      (event, emit) {
        if (event is AddParameterProduct) {
          dataList.add(const DataModelDomain(key: '', value: ''));
          emit(ParameterProductDownload(List.from(dataList)));
        }
      },
    );
    on<UpdateParameterProduct>(
      (event, emit) {
        if (state is ParameterProductDownload) {
          if (event is AddParameterProduct) {
            dataList.add(const DataModelDomain(key: '', value: ''));
            emit(ParameterProductDownload(List.from(dataList)));
          } else if (event is UpdateParameterProduct) {
            final updatedList = List<DataModelDomain>.from(dataList);
            if (event.index >= 0 && event.index < updatedList.length) {
              final updatedItem = DataModelDomain(
                key: event.key ?? updatedList[event.index].key,
                value: event.value ?? updatedList[event.index].value,
              );
              updatedList[event.index] = updatedItem;
            }
            emit(ParameterProductDownload(updatedList));
          }
        }
      },
    );
  }
}
