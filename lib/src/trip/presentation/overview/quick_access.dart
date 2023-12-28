import 'package:flutter/material.dart';
import 'package:tripweaver/src/common/constants/constants.dart';

class QuickAccess extends StatelessWidget {
  final Widget icon;
  final String text;
  final void Function()? onTap;

  const QuickAccess({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: Pad.all4,
        child: Column(
          children: [
            icon,
            Text(text),
          ],
        ),
      ),
    );
  }
}
