import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';

class AuthCubit extends Cubit<BaseState<dynamic>> {
  AuthCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const BaseState.initial());
  final AuthRepository _authRepository;

  /// [loginWithGoogle] login user with google account
  Future<void> loginWithGoogle() async {
    emit(const BaseState<void>.loading());

    final response = await _authRepository.loginWithGoogle();

    emit(
      response.fold(
        (success) => BaseState<UserModel>.success(data: success),
        BaseState.error,
      ),
    );
  }

  /// [logout] logout user
  Future<void> logout() async {
    emit(const BaseState<void>.loading());

    final response = await _authRepository.logout();

    emit(
      response.fold(
        (success) => const BaseState<void>.success(),
        BaseState.error,
      ),
    );
  }
}
