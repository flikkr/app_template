import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Test', type: ModalHandler)
Widget modalUseCase(BuildContext context) {
  return Scaffold(
    body: ElevatedButton(
      onPressed: () => ModalHandler.showModal(context),
      child: const Text('Open dialog'),
    ),
  );
}

class ModalHandler {
  static Future<void> showModal(BuildContext context) {
    return showAdaptiveDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (context) => const AlertDialog.adaptive(
        title: Text('AlertDialog Title'),
        content: Text('AlertDialog description'),
        actions: [
          CupertinoDialogAction(child: Text('CANCEL')),
          CupertinoDialogAction(child: Text('OK')),
        ],
      ),
    );
  }

  Future<void> showLoadingDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Container();
      },
    );
  }
}
