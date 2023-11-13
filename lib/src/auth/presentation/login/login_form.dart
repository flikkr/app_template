import 'package:app_template/src/auth/presentation/auth_input_validator.dart';
import 'package:app_template/src/common/constants/constants.dart';
import 'package:app_template/src/common/input/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'login_button_group.dart';

enum LoginFormFields {
  email(name: 'email', hint: 'Email'),
  password(name: 'password', hint: 'Password');

  final String name;
  final String hint;

  const LoginFormFields({
    required this.name,
    required this.hint,
  });
}

class LoginForm extends StatelessWidget {
  final bool debug;
  final Widget? logo;
  final _formKey = GlobalKey<FormBuilderState>();

  LoginForm({
    super.key,
    this.debug = false,
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        logo ?? const Placeholder(fallbackHeight: 200),
        Gap.h16,
        FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              FormBuilderTextField(
                name: LoginFormFields.email.name,
                validator: emailValidator,
                decoration: InputDecoration(
                  hintText: LoginFormFields.email.hint,
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              Gap.formH,
              PasswordField(
                name: LoginFormFields.password.name,
                hintText: LoginFormFields.password.hint,
              ),
              Gap.h8,
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    _formKey.currentState?.saveAndValidate();
                    debugPrint(_formKey.currentState?.value.toString());

                    // On another side, can access all field values without saving form with instantValues
                    _formKey.currentState?.validate();
                    debugPrint(_formKey.currentState?.instantValue.toString());
                  },
                  child: const Text('Login'),
                ),
              ),
              Gap.formH,
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: Pad.h4,
          child: Divider(),
        ),
        const Text('Sign in with '),
        Gap.formH,
        LoginButtonGroup(debug: debug),
      ],
    );
  }
}
