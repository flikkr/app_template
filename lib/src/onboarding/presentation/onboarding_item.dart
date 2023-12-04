import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tripweaver/src/common/constants/constants.dart';

class OnboardingItem extends StatelessWidget {
  // final IllustrationAsset illustration;
  final String header;
  final String subtitle;

  const OnboardingItem({
    super.key,
    // @required this.illustration,
    required this.header,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Gap(Space.$100),
        Text(
          header,
          textAlign: TextAlign.center,
        ),
        const Gap(Space.$100),
        Text(
          subtitle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
