import 'package:app_template/src/common/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Modal handler', type: Dialog)
Widget modalUseCase(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        ElevatedButton(
          onPressed: () => showModal(context),
          child: const Text('Open dialog'),
        ),
        const Gap(Space.$200),
        ElevatedButton(
          onPressed: () {
            Future f = Future.delayed(const Duration(seconds: 3));
            showLoadingDialog(context, future: f);
          },
          child: const Text('Open loading dialog'),
        ),
        const Gap(Space.$200),
        ElevatedButton(
          onPressed: () => showBottomSheet(
            context,
            child: const Center(child: SizedBox()),
          ),
          child: const Text('Open bottom sheet'),
        ),
      ],
    ),
  );
}

Future<T?> showModal<T>(BuildContext context) {
  return showAdaptiveDialog<T>(
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

Future<T?> showLoadingDialog<T>(
  BuildContext context, {
  required Future<T> future,
  Widget loadingWidget = const CircularProgressIndicator(),
}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    useRootNavigator: true,
    builder: (context) {
      future.then((value) {
        return Navigator.pop(context, value); // Close the dialog when the future is completed
      });

      return Dialog(
        child: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(Space.$200),
          child: Center(child: loadingWidget),
        ),
      );
    },
  );
}

Future<void> showBottomSheet(
  BuildContext context, {
  required Widget child,
  bool isDismissible = true,
}) {
  return showModalBottomSheet(
    context: context,
    isDismissible: isDismissible,
    builder: (context) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Gap(Space.$100),
            Container(
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(Space.$1000),
              ),
            ),
            const Gap(Space.$100),
            child,
          ],
        ),
      );
    },
  );
}
