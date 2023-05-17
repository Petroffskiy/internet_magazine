import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/domain/model/god/product/primary_god_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_god_repository.dart';

part 'god_product_event.dart';
part 'god_product_state.dart';

class GodProductBloc extends Bloc<GodProductEvent, GodProductState> {
  final IGodRepositoryDomain _iGodRepositoryDomain;
  GodProductBloc(this._iGodRepositoryDomain) : super(GodProductInitial()) {
    on<GetGadget>((event, emit) async {
      final PrimaryGodGadgetsModelDomain listGadgets =
          await _iGodRepositoryDomain.getGadget();

      listGadgets.maybeWhen(
        success: (success) async {
          final List<GadgetsModelDomain> listGadget = success;
          emit(GodProductDownload(listGadget: listGadget));
        },
        error: (error) {
          emit(GodProductError(
            message: "${error.message} код: ${error.code}",
          ));
        },
        orElse: () {
          emit(const GodProductError(
            message: "$errorMessageBloc код: $errorBloc",
          ));
        },
      );
    });
  }
}
