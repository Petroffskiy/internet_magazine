import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/domain/model/god/primary_god_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_god_repository.dart';

import "dart:developer" as dev;

part 'god_data_event.dart';
part 'god_data_state.dart';

class GodDataBloc extends Bloc<GodDataEvent, GodDataState> {
  final IGodRepositoryDomain _iGodRepositoryDomain;
  GodDataBloc(this._iGodRepositoryDomain) : super(GodDataInitial()) {
    on<GetData>((event, emit) async {
      emit(GodDataLoading());
      final PrimaryGodProductsModelDomain listProducts =
          await _iGodRepositoryDomain.getGodData();
      dev.log(name: "god bloc", "start");
      listProducts.maybeWhen(
        success: (success) {
          dev.log(name: "god bloc", "success");

          emit(GodDataDownload(
            listProduct: success,
          ));
        },
        error: (error) {
          dev.log(name: "god bloc", "error have");

          emit(GodDataError(
            message: "${error.message} код: ${error.code}",
          ));
        },
        orElse: () {
          dev.log(name: "god bloc", "else ");

          emit(const GodDataError(
            message: "$errorMessageBloc код: $errorBloc",
          ));
        },
      );
    });
  }
}
