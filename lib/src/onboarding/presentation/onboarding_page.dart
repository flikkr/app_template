import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripweaver/router/router.dart';
import 'package:tripweaver/src/onboarding/presentation/onboarding_item.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Onboarding page', type: OnboardingPage)
Widget onboardingPageUseCase(BuildContext context) {
  return OnboardingPage(onFinish: () {});
}

const List<Widget> pages = [
  OnboardingItem(
    header: 'Track your trips',
    subtitle:
        'Whether your going for a week-end trip or year-long escape, track every aspect of your trip through our easy-to-use features.',
  ),
  OnboardingItem(
    header: 'Access your data wherever you go',
    subtitle:
        'Regardless of your internet connection, Tripweaver is always available offline. Access and update your trips just as you would normally.',
  ),
  OnboardingItem(
    header: 'Discover new locations',
    subtitle:
        "Learn more about the country you're visiting, such as useful language phrases, tips, and general knowledge to prepare you for your trip.",
  ),
];

class OnboardingPage extends StatefulWidget {
  final void Function() onFinish;

  const OnboardingPage({
    super.key,
    required this.onFinish,
  });

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController(initialPage: 0);
  static const Duration _duration = Duration(milliseconds: 300);
  static const Curve _curve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: _controller,
              children: pages.map((page) => page).toList(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Last page
                          if (_controller.page == pages.length - 1) {
                            context.go(Routes.login.path);
                          } else {
                            _controller.nextPage(
                              duration: _duration,
                              curve: _curve,
                            );
                          }
                        },
                        child: const Text('Next'),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: widget.onFinish,
                        child: const Text('Skip'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
