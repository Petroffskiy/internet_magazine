part of 'main_card_bloc.dart';

abstract class MainCardEvent extends Equatable {
  const MainCardEvent();
}

class GetAllData extends MainCardEvent {
  const GetAllData();
  @override
  List<Object> get props => [];
}


