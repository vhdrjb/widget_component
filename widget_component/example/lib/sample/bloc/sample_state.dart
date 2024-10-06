part of 'sample_bloc.dart';

@immutable
abstract class SampleState {}

class SampleInitial extends SampleState {}

sealed class UserInfoState extends SampleState {}

class UserDataState extends UserInfoState implements DataState {
  final String name;

  UserDataState({
    required this.name,
  });
}

class UserLoadingState extends UserInfoState implements LoadingState {}

class UserErrorState extends UserInfoState implements ErrorState {
  final String error;
  final int errorCode;

  UserErrorState({
    required this.error,
    required this.errorCode,
  });
}
