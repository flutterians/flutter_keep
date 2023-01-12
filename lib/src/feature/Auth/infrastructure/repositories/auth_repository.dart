import 'package:dartz/dartz.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';

abstract class AuthRepository {
  /// [loginWithGoogle] login user with google account
  Future<Either<UserModel, Failure>> loginWithGoogle();

  /// [logout] login user with google account
  Future<Either<bool, Failure>> logout();
}
