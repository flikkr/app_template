import 'package:flutter/material.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({
    Key? key,
    required this.title,
    this.hasLeftPadding = true,
  }) : super(key: key);
  final String title;
  final bool hasLeftPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: hasLeftPadding ? 63.0 : 0,
        top: 15,
        bottom: 7,
      ),
      child: Text(title),
    );
  }
}
