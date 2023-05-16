import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/assets/project_strings.dart';

import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';

part 'save_busket_event.dart';
part 'save_busket_state.dart';

class SaveBusketBloc extends Bloc<SaveBusketEvent, SaveBusketState> {
  final IMainRepositoryDomain _iMainRepositoryDomain;
  SaveBusketBloc(this._iMainRepositoryDomain) : super(SaveBusketInitial()) {
    on<SaveToBusket>(
      (event, emit) async {
        emit(SaveBusketLoading());
        final SaveProductModelDomain product = SaveProductModelDomain(
          count: event.product.count,
          image: event.product.image,
          name: event.product.name,
          price: event.product.price,
          isSelected: false,
        );
        final productBox = await Hive.openBox<SaveProductModelDomain>("Busket");
        productBox.put(product.name, product);
        final bool response =
            await _iMainRepositoryDomain.saveProduct(product: product);
        if (response) {
          emit(SaveBusketDownload());
        } else {
          emit(const SaveBusketError(message: errorServer));
        }
        await productBox.close();
      },
    );
  }
}
