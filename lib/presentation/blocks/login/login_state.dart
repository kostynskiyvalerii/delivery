part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.login() = Login;
  const factory LoginState.success(String driver) = Success;
  const factory LoginState.error() = Error;
}
