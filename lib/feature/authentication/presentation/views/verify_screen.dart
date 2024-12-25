import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf/feature/authentication/data/auth_repo/auth_repo_implementation.dart';
import 'package:shagaf/feature/authentication/presentation/manager/auth_cubit/Auth_cubit.dart';
import 'package:shagaf/feature/authentication/presentation/views/widgets/verify_widget/verify_body.dart';

import '../../../../core/assets/colors.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen(
      {super.key, required this.authRepoImplementation});
  final AuthRepoImplementation authRepoImplementation;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(authRepoImplementation),
      child: Scaffold(
        backgroundColor: COLORS.color1,
        body: VerifiyBody(),
      ),
    );
  }
}
