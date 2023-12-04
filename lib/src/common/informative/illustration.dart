import 'package:tripweaver/src/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Illustration use case', type: Illustration)
Widget illustrationUseCase(BuildContext context) {
  return Illustration(
    image: const Placeholder(fallbackHeight: double.infinity, fallbackWidth: 200),
    title: context.knobs.string(
      label: 'Title',
      initialValue: '404 Error',
    ),
    subtitle: context.knobs.string(
      label: 'Subtitle',
      initialValue: 'Page not found',
    ),
  );
}

class Illustration extends StatelessWidget {
  final Widget image;
  final String title;
  final String? subtitle;
  final Widget? child;

  const Illustration({
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
          const Gap(Space.$200),
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
