import 'package:tripweaver/src/auth/presentation/auth_input_validator.dart';
import 'package:tripweaver/src/common/constants/constants.dart';
import 'package:tripweaver/src/common/input/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';

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
        SizedBox(
          width: 200,
          child: Center(
            child: logo ??
                const Placeholder(
                  fallbackHeight: 200,
                  fallbackWidth: 200,
                ),
          ),
        ),
        const Gap(Space.$300),
        // FormBuilder(
        //   key: _formKey,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       FormBuilderTextField(
        //         name: LoginFormFields.email.name,
        //         validator: emailValidator,
        //         decoration: InputDecoration(
        //           hintText: LoginFormFields.email.hint,
        //           prefixIcon: const Icon(Icons.email),
        //         ),
        //       ),
        //       const Gap(Space.form),
        //       PasswordField(
        //         name: LoginFormFields.password.name,
        //         hintText: LoginFormFields.password.hint,
        //       ),
        //       const Gap(Space.form),
        //       TextButton(
        //         onPressed: () {},
        //         child: const Text(
        //           'Forgot password?',
        //           style: TextStyle(color: Colors.blue),
        //         ),
        //       ),
        //       const Gap(Space.form),
        //       SizedBox(
        //         width: double.infinity,
        //         child: FilledButton(
        //           onPressed: () {
        //             _formKey.currentState?.saveAndValidate();
        //             debugPrint(_formKey.currentState?.value.toString());

        //             // On another side, can access all field values without saving form with instantValues
        //             _formKey.currentState?.validate();
        //             debugPrint(_formKey.currentState?.instantValue.toString());
        //           },
        //           child: const Text('Login'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     const Padding(
        //       padding: EdgeInsets.symmetric(vertical: Space.$200),
        //       child: Divider(),
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(Space.$075),
        //       color: Theme.of(context).scaffoldBackgroundColor,
        //       child: Text(
        //         'OR',
        //         style: TextStyle(
        //           color: Theme.of(context).dividerColor,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        LoginButtonGroup(debug: debug),
      ],
    );
  }
}
