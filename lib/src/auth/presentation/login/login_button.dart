import 'package:app_template/src/auth/application/_auth_service.dart';
import 'package:app_template/src/auth/application/apple_auth_service.dart';
import 'package:app_template/src/auth/application/google_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:app_template/gen/assets.gen.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Login button', type: LoginButton)
Widget loginButtonUseCase(BuildContext context) {
  return LoginButton(
    debug: true,
    authService: context.knobs.list(
      label: 'Auth service',
      options: [
        GoogleAuthServiceImpl(),
        AppleAuthServiceImpl(),
      ],
    ),
  );
}

class LoginButton extends StatefulWidget {
  final AuthService authService;
  final bool debug;

  const LoginButton({
    super.key,
    required this.authService,
    this.debug = false,
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: OutlinedButton.icon(
        icon: getIcon(),
        onPressed: () async {
          if (widget.debug) return;
          setState(() {
            _isLoading = true;
          });
          try {
            final res = await widget.authService.login();
          } catch (e) {
            print(e);
          }
        },
        label: Text(
          'Sign in with ${widget.authService.getServiceName()}',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        style: getStyle(context),
      ),
    );
  }

  Widget getIcon() {
    return switch (widget.authService) {
      GoogleAuthServiceImpl() => Assets.image.auth.google.image(width: 20),
      AppleAuthServiceImpl() => const Icon(
          Icons.apple,
          color: Colors.black,
        ),
      _ => Container(),
    };
  }

  ButtonStyle getStyle(context) {
    return ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(Colors.white),
      side: MaterialStateProperty.all(
        BorderSide(
          width: 1.5,
          color: Colors.grey[300]!,
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
