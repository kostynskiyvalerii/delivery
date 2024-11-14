import 'package:feed_delivery/domain/auth_repositoy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository = GetIt.instance<AuthRepository>();

  LoginBloc() : super(const LoginState.initial()) {
    on<Submit>(_onSubmit);
    on<CheckAuthentication>(_onCheckAuthentication);

    add(const LoginEvent.checkAuthentication());
  }

  Future<void> _onSubmit(Submit event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    try {
      final String? driver = await authRepository.login(
        carNumber: event.carNumber,
        password: event.password,
      );
      if (driver != null && driver.isNotEmpty) {
        emit(LoginState.success(driver));
      } else {
        emit(const LoginState.error());
      }
    } catch (e) {
      emit(const LoginState.error());
    }
  }

  Future<void> _onCheckAuthentication(
      CheckAuthentication event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    final bool isAuthenticated = await authRepository.isAuthenticated();
    if (isAuthenticated) {
      // emit(const LoginState.success());
    } else {
      emit(const LoginState.login());
    }
  }
}
