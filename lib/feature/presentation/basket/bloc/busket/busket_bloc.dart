import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_busket_repository.dart';

import "dart:developer" as dev;

part 'busket_event.dart';
part 'busket_state.dart';

class BusketBloc extends Bloc<BusketEvent, BusketState> {
  final IBusketRepositoryDomain _busketRepositoryDomain;
  BusketBloc(this._busketRepositoryDomain) : super(BusketInitial()) {
    on<GetBusketData>(
      (event, emit) async {
        emit(BusketLoading());

        final PrimaryBusketModelDomain response =
            await _busketRepositoryDomain.busketModel();
        dev.log(name: "bloc busket", "start");
        await response.maybeWhen(
          success: (success) {
            for (var element in success) {
              dev.log(name: "bloc busket", "success: ${success.first}");
              dev.log(name: "bloc busket", "value: $element");
            }

            emit(BusketDownload(products: success));
          },
          error: (error) {
            dev.log(name: "bloc busket", "error");

            emit(BusketError(message: "${error.message}, ${error.code}"));
          },
          orElse: () async {
            dev.log(name: "bloc busket", "start Hive");

            final busketBox =
                await Hive.openBox<SaveProductModelDomain>("Busket");
            final List<SaveProductModelDomain> listProducts =
                busketBox.values.toList();
            if (listProducts.isNotEmpty) {
              emit(BusketDownload(products: listProducts));
            } else {
              emit(BusketEmpty());
            }
          },
        );
      },
    );

    on<DeleteBusketData>(
      (event, emit) async {
        final bool status =
            await _busketRepositoryDomain.deteleFromBusket(index: event.index);
      },
    );
  }
}
