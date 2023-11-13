import 'package:app_template/src/auth/presentation/login/login_button_group.dart';
import 'package:app_template/src/auth/presentation/login/login_form.dart';
import 'package:app_template/src/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Login page', type: LoginPage)
Widget loginPageUseCase(BuildContext context) {
  return const LoginPage(debug: true);
}

class LoginPage extends StatelessWidget {
  final bool debug;

  const LoginPage({super.key, this.debug = false});

  @override
  Widget build(BuildContext context) {
    Widget view;
    if (context.breakpoint > LayoutBreakpoint.md) {
      view = WideView(debug: debug);
    } else {
      view = NarrowView(debug: debug);
    }

    return Scaffold(body: view);
  }
}

class NarrowView extends StatelessWidget {
  final bool debug;
  final Widget? logo;

  const NarrowView({
    super.key,
    this.debug = false,
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Pad.pageMobile,
        child: LoginForm(debug: debug),
      ),
    );
  }
}

class WideView extends StatelessWidget {
  final bool debug;
  final Widget? coverImage;

  const WideView({
    super.key,
    this.debug = false,
    this.coverImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: coverImage ?? Placeholder()),
        Expanded(
          child: Padding(
            padding: Pad.pageWeb,
            child: LoginForm(debug: debug),
          ),
        ),
      ],
    );
  }
}
