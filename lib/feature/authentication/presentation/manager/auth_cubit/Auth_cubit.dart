import 'package:bloc/bloc.dart';
import 'package:shagaf/feature/authentication/data/auth_repo/auth_repo_implementation.dart';

import 'Auth_state.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  AuthCubit(this.authRepoImplementation) : super(AuthCubitInitialState());
  final AuthRepoImplementation authRepoImplementation;

  Future<void> signUp({
    required String username,
    required String birthdate,
    required String phone,
    required String password,
    required String email,
  }) async {
    emit(AuthCubitLoadingState());
    var result = await authRepoImplementation.signUp(
        username: username,
        birthdate: birthdate,
        phone: phone,
        password: password,
        email: email);
    result.fold((l) {
      emit(AuthCubitFailureState(error: l.error));
    }, (r) {
      emit(AuthCubitSuccessState());
    });
  }

  Future verifyEmail({required String email, required String code}) async {
    emit(AuthCubitLoadingState());
    var result =
        await authRepoImplementation.verifyEmail(email: email, code: code);
    result.fold((l) {
      emit(AuthCubitFailureState(error: l.error));
    }, (r) {
      emit(AuthCubitSuccessState());
    });
  }
}
