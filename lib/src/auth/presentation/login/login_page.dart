import 'package:tripweaver/gen/assets.gen.dart';
import 'package:tripweaver/src/auth/presentation/login/login_form.dart';
import 'package:tripweaver/src/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Login page', type: LoginPage)
Widget loginPageUseCase(BuildContext context) {
  return LoginPage(
    debug: true,
    coverImage: Assets.image.static.loginCover.image(
      fit: BoxFit.cover,
      height: double.infinity,
    ),
  );
}

class LoginPage extends StatelessWidget {
  final bool debug;
  final Widget? logo;
  final Widget? coverImage;

  const LoginPage({
    super.key,
    this.debug = false,
    this.logo,
    this.coverImage,
  });

  @override
  Widget build(BuildContext context) {
    Widget view;
    if (context.breakpoint > LayoutBreakpoint.md) {
      view = _WideView(
        debug: debug,
        coverImage: coverImage,
        logo: logo,
      );
    } else {
      view = _NarrowView(
        debug: debug,
        logo: logo,
      );
    }

    return Scaffold(body: view);
  }
}

class _NarrowView extends StatelessWidget {
  final bool debug;
  final Widget? logo;

  const _NarrowView({
    this.debug = false,
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Pad.pageMobile,
        child: LoginForm(
          debug: debug,
          logo: logo,
        ),
      ),
    );
  }
}

class _WideView extends StatelessWidget {
  final bool debug;
  final Widget? coverImage;
  final Widget? logo;

  const _WideView({
    this.debug = false,
    this.coverImage,
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: coverImage ?? const Placeholder()),
        Expanded(
          child: Center(
            child: Padding(
              padding: Pad.pageWeb,
              child: LoginForm(
                debug: debug,
                logo: logo,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
