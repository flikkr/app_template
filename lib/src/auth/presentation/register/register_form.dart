import 'package:tripweaver/src/auth/presentation/auth_input_validator.dart';
import 'package:tripweaver/src/common/constants/constants.dart';
import 'package:tripweaver/src/common/input/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';

enum RegisterFormFields {
  email(name: 'email', hint: 'Email'),
  password(name: 'password', hint: 'Password'),
  confirmPassword(name: 'confirm-password', hint: 'Password'),
  agreeTermsConditions(name: 'agree-terms-conditions', hint: 'Agree terms and conditions');

  final String name;
  final String hint;

  const RegisterFormFields({
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
        SizedBox(
          width: 200,
          child: Center(
            child: logo ??
                const Placeholder(
                  fallbackHeight: 100,
                  fallbackWidth: 200,
                ),
          ),
        ),
        const Gap(Space.$200),
        FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              FormBuilderTextField(
                name: RegisterFormFields.email.name,
                validator: emailValidator,
                decoration: InputDecoration(
                  hintText: RegisterFormFields.email.hint,
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const Gap(Space.form),
              PasswordField(
                name: RegisterFormFields.password.name,
                hintText: RegisterFormFields.password.hint,
              ),
              const Gap(Space.form),
              FormBuilderCheckbox(
                name: RegisterFormFields.agreeTermsConditions.name,
                title: Text(RegisterFormFields.agreeTermsConditions.hint),
              ),
              const Gap(Space.form),
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
              const Gap(Space.form),
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
      ],
    );
  }
}
