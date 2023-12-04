import 'package:tripweaver/src/common/informative/illustration.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Error page', type: ErrorPage)
Widget errorPageUseCase(BuildContext context) {
  return const ErrorPage(
    image: Placeholder(
      fallbackHeight: 200,
      fallbackWidth: 200,
    ),
    title: '404 Error',
    subtitle: 'This is an error subtitle',
  );
}

class ErrorPage extends StatelessWidget {
  final Widget image;
  final String title;
  final String? subtitle;

  const ErrorPage({
    super.key,
    required this.image,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Illustration(
          image: image,
          title: title,
          subtitle: subtitle,
        ),
      ),
    );
  }
}
