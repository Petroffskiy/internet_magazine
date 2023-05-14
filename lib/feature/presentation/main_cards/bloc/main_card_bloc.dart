import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/primary_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/primary_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';

part 'main_card_event.dart';
part 'main_card_state.dart';

class MainCardBloc extends Bloc<MainCardEvent, MainCardState> {
  final IMainRepositoryDomain _iMainRepositoryDomain;
  MainCardBloc(this._iMainRepositoryDomain) : super(MainCardInitial()) {
    on<GetAllData>(
      (event, emit) async {
        emit(MainCardLoading());
        final PrimaryGadgetsModelDomain listGadgets =
            await _iMainRepositoryDomain.getGatgets();

       await listGadgets.maybeWhen(
          success: (success) async {
            final List<String> listFinder =
                List.generate(success.length, (index) => success[index].id);
            final PrimaryProductsModelDomain listProducts =
                await _iMainRepositoryDomain.getProduct(finder: listFinder);
            final List<GadgetsModelDomain> listGadget = success;

            listProducts.maybeWhen(
              success: (success) {
                emit(MainCardDownloaded(
                  listGadget: listGadget,
                  listProduct: success,
                ));
              },
              error: (error) {
                emit(MainCardError(
                  message: "${error.message} код: ${error.code}",
                ));
              },
              orElse: () {
                emit(const MainCardError(
                  message: "$errorMessageBloc код: $errorBloc",
                ));
              },
            );
          },
          error: (error) {
            emit(MainCardError(
              message: "${error.message} код: ${error.code}",
            ));
          },
          orElse: () {
            emit(const MainCardError(
              message: "$errorMessageBloc код: $errorBloc",
            ));
          },
        );
      },
    );
  }
}
