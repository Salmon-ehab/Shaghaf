abstract class AuthCubitState {}

class AuthCubitInitialState extends AuthCubitState {}

class AuthCubitLoadingState extends AuthCubitState {}

class AuthCubitSuccessState extends AuthCubitState {}

class AuthCubitFailureState extends AuthCubitState {
  final String error;

  AuthCubitFailureState({required this.error});
}
