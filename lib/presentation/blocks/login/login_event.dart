part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submit(String carNumber, String password) = Submit;
  const factory LoginEvent.checkAuthentication() = CheckAuthentication;
}
