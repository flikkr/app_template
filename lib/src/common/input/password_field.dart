import 'package:app_template/src/auth/presentation/auth_input_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordField extends StatefulWidget {
  final bool showVisibilityToggle;
  final String? hintText;
  final String name;
  final TextEditingController? controller;
  final void Function(String? value)? onChanged;

  const PasswordField({
    super.key,
    required this.name,
    this.controller,
    this.showVisibilityToggle = true,
    this.hintText,
    this.onChanged,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final secondary = Theme.of(context).colorScheme.secondary;
    return FormBuilderTextField(
      name: 'password',
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          isSelected: isPasswordVisible,
          selectedIcon: FaIcon(FontAwesomeIcons.eyeSlash, color: secondary),
          icon: FaIcon(FontAwesomeIcons.eye, color: secondary),
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        ),
      ),
      validator: passwordValidator,
      obscureText: !isPasswordVisible,
      enableSuggestions: false,
      autocorrect: false,
      controller: widget.controller,
      onChanged: widget.onChanged,
    );
  }
}
