import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tripweaver/src/auth/application/apple_auth_service.dart';
import 'package:tripweaver/src/auth/application/google_auth_service.dart';
import 'package:tripweaver/src/auth/presentation/login/login_button.dart';
import 'package:tripweaver/src/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tripweaver/util/app_providers.dart';

class LoginButtonGroup extends StatelessWidget {
  final bool debug;

  const LoginButtonGroup({super.key, this.debug = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginButton(
          authService: GoogleAuthServiceImpl(supabaseAuth),
          debug: debug,
        ),
        _showAppleLogin(),
      ],
    );
  }

  Widget _showAppleLogin() {
    if (Platform.isAndroid) return const SizedBox();
    return Column(
      children: [
        const Gap(Space.form),
        LoginButton(
          authService: AppleAuthServiceImpl(),
          debug: debug,
        ),
      ],
    );
  }
}
