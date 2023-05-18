import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_save_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/create/data_model_domain.dart';

import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';

import 'dart:developer' as dev;
part 'save_busket_event.dart';
part 'save_busket_state.dart';

class SaveBusketBloc extends Bloc<SaveBusketEvent, SaveBusketState> {
  final IMainRepositoryDomain _iMainRepositoryDomain;
  SaveBusketBloc(this._iMainRepositoryDomain) : super(SaveBusketInitial()) {
    on<SaveToBusket>(
      (event, emit) async {
        emit(SaveBusketLoading());
        dev.log(name: "Save busket", "start");
        // Hive.registerAdapter(Busket());
        final SaveProductModelDomain product = SaveProductModelDomain(
          count: event.product.count,
          image: event.product.image,
          name: event.product.name,
          price: event.product.price,
          isSelected: false,
          id: '',
          parameters: DataModelDomain(
            key: event.product.parameter.key,
            value: event.product.parameter.value,
            id: event.product.parameter.id,
          ),
          category: event.product.category,
          description: event.product.description,
        );
        final productBox = await Hive.openBox<SaveProductModelDomain>("Busket");
        final parameterBox = await Hive.openBox<DataModelDomain>("Parameter");

        productBox.put(product.name, product);
        final PrimaryBusketSaveModelDomain response =
            await _iMainRepositoryDomain.saveProduct(product: product);
        if (response != null) {
          emit(SaveBusketDownload());
        } else {
          emit(const SaveBusketError(message: errorServer));
        }
        await productBox.close();
        await parameterBox.close();
      },
    );
  }
}
