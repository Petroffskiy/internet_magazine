import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/domain/model/gadgets/list_gadgets/gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/gadgets/list_gadgets/primary_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';

part 'main_card_event.dart';
part 'main_card_state.dart';

class MainCardBloc extends Bloc<MainCardEvent, MainCardState> {
  final IMainRepositoryDomain _iMainRepositoryDomain;
  MainCardBloc(this._iMainRepositoryDomain) : super(MainCardInitial()) {
    on<GetListCategory>(
      (event, emit) async {
        emit(MainCardLoading());
        final PrimaryGadgetsModelDomain listGadget =
            await _iMainRepositoryDomain.getGatgets();

        listGadget.maybeWhen(
          success: (success) {
            emit(
              MainCardDownloaded(
                listGadget: success,
              ),
            );
          },
          error: (error) {
            emit(
              MainCardError(message: "${error.message} код: ${error.code}"),
            );
          },
          orElse: () {
            emit(
              const MainCardError(message: "$errorMessageBloc код: $errorBloc"),
            );
          },
        );
      },
    );
  }
}
