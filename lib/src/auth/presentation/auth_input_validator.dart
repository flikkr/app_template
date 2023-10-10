import 'package:form_builder_validators/form_builder_validators.dart';

typedef FormValidators = String? Function(String?);

FormValidators emailValidator = FormBuilderValidators.compose([
  FormBuilderValidators.required(),
  FormBuilderValidators.email(),
]);

FormValidators passwordValidator = FormBuilderValidators.compose([
  FormBuilderValidators.required(),
  FormBuilderValidators.min(8, errorText: 'Password must be betweem 8 and 32 characters'),
  FormBuilderValidators.max(32, errorText: 'Password must be betweem 8 and 32 characters'),
  FormBuilderValidators.match(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
    errorText: 'Password must contain at least one letter and one number',
  ),
]);
