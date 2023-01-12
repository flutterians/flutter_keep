import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';

class AuthCubit extends Cubit<BaseState<dynamic>> {
  AuthCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const BaseState.initial());
  final AuthRepository _authRepository;

  /// [loginWithSocialAuth] login user with google account
  Future<void> loginWithSocialAuth() async {
    emit(const BaseState<void>.loading());
    final response = await _authRepository.loginWithGoogle();
    response.fold(
      (success) => emit(BaseState<UserModel>.success(data: success)),
      (error) => emit(BaseState.error(error)),
    );
  }
}
