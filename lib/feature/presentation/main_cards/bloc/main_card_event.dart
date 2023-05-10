part of 'main_card_bloc.dart';

abstract class MainCardEvent extends Equatable {
  const MainCardEvent();
}

class GetListCategory extends MainCardEvent {
  const GetListCategory();
  @override
  List<Object> get props => [];
}
