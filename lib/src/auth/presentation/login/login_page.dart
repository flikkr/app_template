import 'package:app_template/src/auth/presentation/login/login_button_group.dart';
import 'package:app_template/src/auth/presentation/login/login_form.dart';
import 'package:app_template/src/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Login page', type: LoginPage)
Widget loginPageUseCase(BuildContext context) {
  return const LoginPage(debug: true);
}

class LoginPage extends StatelessWidget {
  final bool debug;

  const LoginPage({super.key, this.debug = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Pad.page,
          child: Column(
            children: [
              LoginForm(),
              const Padding(
                padding: Pad.h4,
                child: Divider(),
              ),
              LoginButtonGroup(debug: debug),
            ],
          ),
        ),
      ),
    );
  }
}
