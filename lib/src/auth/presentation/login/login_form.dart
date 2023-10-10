import 'package:app_template/src/auth/presentation/auth_input_validator.dart';
import 'package:app_template/src/common/constants/constants.dart';
import 'package:app_template/src/common/input/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

enum LoginFormFields {
  email('email'),
  password('password');

  final String name;

  const LoginFormFields(this.name);
}

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: LoginFormFields.email.name,
            validator: emailValidator,
            decoration: const InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          Gap.formH,
          PasswordField(
            name: LoginFormFields.password.name,
            hintText: 'Password',
          ),
          Gap.h8,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
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
    );
  }
}
