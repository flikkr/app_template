import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Onboarding page', type: OnboardingPage)
Widget onboardingPageUseCase(BuildContext context) {
  return const OnboardingPage();
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Onboarding'),
      ),
    );
  }
}
