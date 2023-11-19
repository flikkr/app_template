import 'package:app_template/src/auth/application/apple_auth_service.dart';
import 'package:app_template/src/auth/application/google_auth_service.dart';
import 'package:app_template/src/auth/presentation/login/login_button.dart';
import 'package:app_template/src/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginButtonGroup extends StatelessWidget {
  final bool debug;

  const LoginButtonGroup({super.key, this.debug = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginButton(
          authService: GoogleAuthServiceImpl(),
          debug: debug,
        ),
        const Gap(Space.form),
        LoginButton(
          authService: AppleAuthServiceImpl(),
          debug: debug,
        ),
      ],
    );
  }
}
