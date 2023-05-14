part of 'personal_bloc.dart';

class PersonalState extends Equatable {
  const PersonalState();

  @override
  List<Object> get props => [];
}

class PersonalInitial extends PersonalState {}

class PersonalLoading extends PersonalState {}

class PersonalError extends PersonalState {
  final String message;
  const PersonalError({required this.message});

  @override
  List<Object> get props => [
        message,
      ];
}

class PersonalDownload extends PersonalState {
  final UserModelDomain userData;
  const PersonalDownload({required this.userData});

  @override
  List<Object> get props => [userData];

  PersonalDownload copyWith({
    required UserModelDomain? userData,
  }) {
    return PersonalDownload(
      userData: userData ?? this.userData,
    );
  }
}

class PersonalComplete extends PersonalState {}
