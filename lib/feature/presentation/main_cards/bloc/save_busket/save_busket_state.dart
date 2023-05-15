part of 'save_busket_bloc.dart';

class SaveBusketState extends Equatable {
  const SaveBusketState();

  @override
  List<Object> get props => [];
}

class SaveBusketInitial extends SaveBusketState {}

class SaveBusketLoading extends SaveBusketState {}

class SaveBusketError extends SaveBusketState {
  final String message;

  const SaveBusketError({required this.message});

  @override
  List<Object> get props => [];

  SaveBusketError copyWith({
    required String? message,
  }) {
    return SaveBusketError(
      message: message ?? this.message,
    );
  }
}

class SaveBusketDownload extends SaveBusketState {}
