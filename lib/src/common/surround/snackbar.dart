import 'package:app_template/src/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

typedef SnackbarResponse = ScaffoldFeatureController<SnackBar, SnackBarClosedReason>;

@widgetbook.UseCase(name: 'Snackbar', type: SnackBar)
Widget snackbarUseCase(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            showSnackbar(context, content: const Text('Snackbar text'));
          },
          child: const Text('Normal'),
        ),
        const Gap(Space.$100),
        ElevatedButton(
          onPressed: () {
            showIconSnackbar(
              context,
              content: const Text('Snackbar text'),
              icon: const Icon(Icons.check),
            );
          },
          child: const Text('With Icon'),
        ),
      ],
    ),
  );
}

SnackbarResponse showSnackbar(
  BuildContext context, {
  required Widget content,
  SnackBarAction? action,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: const EdgeInsets.all(Space.$100),
      dismissDirection: DismissDirection.horizontal,
      shape: RoundedRectangleBorder(
        side: BorderSide(),
        borderRadius: BorderRadius.circular(Space.$100),
      ),
      content: content,
      action: action,
    ),
  );
}

SnackbarResponse showIconSnackbar(
  BuildContext context, {
  required Widget content,
  required Widget icon,
  SnackBarAction? action,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: const EdgeInsets.all(Space.$100),
      dismissDirection: DismissDirection.horizontal,
      content: Row(
        children: [
          Theme(
            data: ThemeData(
              iconTheme: IconThemeData(
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            child: icon,
          ),
          const SizedBox(width: Space.$100),
          content,
        ],
      ),
      action: action,
    ),
  );
}
