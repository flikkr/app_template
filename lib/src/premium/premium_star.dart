import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Premium star', type: Icon)
Widget premiumStarUseCase(BuildContext context) {
  return const PremiumStar();
}

class PremiumStar extends StatelessWidget {
  final double? size;

  const PremiumStar({
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star_rounded,
      color: Colors.amber,
      size: size,
    );
  }
}
