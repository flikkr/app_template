import 'package:app_template/src/common/input/password_field.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Text input', type: TextField)
Widget textFieldUseCase(BuildContext context) {
  return const TextField();
}

@widgetbook.UseCase(name: 'Password input', type: TextField)
Widget passwordFieldUseCase(BuildContext context) {
  return PasswordField(
    name: 'password',
    hintText: context.knobs.stringOrNull(label: 'Hint text', initialValue: 'Password'),
  );
}
