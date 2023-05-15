import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_busket_repository.dart';

part 'busket_event.dart';
part 'busket_state.dart';

class BusketBloc extends Bloc<BusketEvent, BusketState> {
  final IBusketRepositoryDomain _busketRepositoryDomain;
  BusketBloc(this._busketRepositoryDomain) : super(BusketInitial()) {
    on<GetBusketData>(
      (event, emit) async {
        
      },
    );
  }
}
