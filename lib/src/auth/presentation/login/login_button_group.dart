import 'package:app_template/src/auth/application/apple_auth_service.dart';
import 'package:app_template/src/auth/application/google_auth_service.dart';
import 'package:app_template/src/auth/presentation/login/login_button.dart';
import 'package:app_template/src/common/constants/constants.dart';
import 'package:flutter/material.dart';

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
        Gap.formH,
        LoginButton(
          authService: AppleAuthServiceImpl(),
          debug: debug,
        ),
      ],
    );
  }
}
