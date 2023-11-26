import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Loading Button', type: LoadingButton)
Widget loadingButtonUseCase(BuildContext context) {
  return SizedBox(
    width: 200,
    child: LoadingButton(
      onTap: () async {
        return Future.delayed(const Duration(seconds: 3));
      },
    ),
  );
}

enum Button {
  elevatedButton,
  outlinedButton,
  textButton,
  filledButton,
}

class LoadingButton extends StatefulWidget {
  final bool isLoading;
  final Future<void> Function() onTap;
  final String text;
  final Button buttonType;

  const LoadingButton({
    super.key,
    required this.onTap,
    this.isLoading = false,
    this.text = 'Press here',
    this.buttonType = Button.filledButton,
  });

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _isLoading = widget.isLoading;
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.buttonType) {
      case Button.elevatedButton:
        return ElevatedButton(onPressed: onPressed, child: child());
      case Button.outlinedButton:
        return OutlinedButton(onPressed: onPressed, child: child());
      case Button.textButton:
        return TextButton(onPressed: onPressed, child: child());
      case Button.filledButton:
        return FilledButton(onPressed: onPressed, child: child());
    }
  }

  Widget child() {
    if (_isLoading) {
      return const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(),
      );
    } else {
      return Text(widget.text);
    }
  }

  void onPressed() => _isLoading ? null : submit();

  void submit() async {
    setState(() => _isLoading = true);
    try {
      await widget.onTap();
    } catch (e) {
      setState(() => _isLoading = false);
      rethrow;
    } finally {
      setState(() => _isLoading = false);
    }
  }
}
