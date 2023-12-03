import 'package:flutter/material.dart';

class OnboardingCarousel extends StatefulWidget {
  const OnboardingCarousel({super.key});

  @override
  State<OnboardingCarousel> createState() => _OnboardingCarouselState();
}

class _OnboardingCarouselState extends State<OnboardingCarousel> {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [],
    );
  }
}
