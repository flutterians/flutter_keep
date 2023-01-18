import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.firebaseAuth,
    required this.localDataSource,
  });
  final FirebaseAuth firebaseAuth;
  final LocalDataSource localDataSource;
  GoogleSignIn get _googleSignIn => GoogleSignIn(scopes: <String>['email']);

  @override
  Future<Either<UserModel, Failure>> loginWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final response = await firebaseAuth.signInWithCredential(credential);
        return Left(
          UserModel(
            email: response.user!.email!,
            userId: response.user!.uid,
            emailVerified: response.user!.emailVerified,
          ),
        );
      } else {
        return Right(
          Failure(
            'Something went wrong'.hardcoded,
            FailureType.authentication,
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      await _googleSignIn.signOut();
      return Right(
        Failure(e.getMessageFromErrorCode, FailureType.authentication),
      );
    } catch (e, stacktrace) {
      await _googleSignIn.signOut();
      return Right(Failure.fromException(e, stackTrace: stacktrace));
    }
  }

  @override
  Future<Either<bool, Failure>> logout() async {
    try {
      await _googleSignIn.signOut();
      await firebaseAuth.signOut();

      return const Left(true);
    } catch (e) {
      return Right(Failure.fromException(e));
    }
  }
}
