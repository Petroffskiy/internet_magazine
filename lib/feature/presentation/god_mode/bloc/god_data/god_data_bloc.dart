import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/domain/model/god/product/primary_god_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_god_repository.dart';

part 'god_data_event.dart';
part 'god_data_state.dart';

class GodDataBloc extends Bloc<GodDataEvent, GodDataState> {
  final IGodRepositoryDomain _iGodRepositoryDomain;
  GodDataBloc(this._iGodRepositoryDomain) : super(GodDataInitial()) {
    on<GetData>((event, emit) async {
      emit(GodDataLoading());
      final PrimaryGodProductsModelDomain listProducts =
          await _iGodRepositoryDomain.getGodData();
      listProducts.maybeWhen(
        success: (success) {
          emit(GodDataDownload(
            listProduct: success,
          ));
        },
        error: (error) {
          emit(GodDataError(
            message: "${error.message} код: ${error.code}",
          ));
        },
        orElse: () {
          emit(const GodDataError(
            message: "$errorMessageBloc код: $errorBloc",
          ));
        },
      );
    });
  }
}
