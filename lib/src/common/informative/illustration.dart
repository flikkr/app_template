import 'package:app_template/src/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SubtitledIllustration extends StatelessWidget {
  final Widget image;
  final String title;
  final String? subtitle;
  final Widget? child;

  const SubtitledIllustration({
    super.key,
    required this.image,
    required this.title,
    this.child,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 180,
            child: image,
          ),
          // StiloSpacing.vert6,
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          _showSubtitle(),
        ],
      ),
    );
  }

  Widget _showSubtitle() {
    if (subtitle == null) return const Column();

    return Column(
      children: [
        const Gap(Space.$200),
        Text(subtitle!),
      ],
    );
  }
}
