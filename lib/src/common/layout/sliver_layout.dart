import 'package:tripweaver/src/common/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Sliver list', type: SliverList)
Widget sliverListUseCase(BuildContext context) {
  return SliverLayout(
    title: const Text('Test'),
    background: Image.network(
      'https://picsum.photos/200/300',
      fit: BoxFit.cover,
    ),
    children: List.generate(
      20,
      (index) => Container(
        // randomise colors
        height: 100,
        color: Colors.primaries[index % Colors.primaries.length],
      ),
    ),
  );
}

class SliverLayout extends StatelessWidget {
  final Widget? title;
  final List<Widget> children;
  final bool pinned;
  final Widget? background;

  const SliverLayout({
    super.key,
    this.title,
    this.children = const [],
    this.pinned = true,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            floating: false,
            expandedHeight: 200,
            stretch: true,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: background,
              centerTitle: true,
              title: title,

              // titlePadding: EdgeInsets.only(
              //   right: 100.0,
              //   bottom: 16,
              // ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              children,
            ),
          ),
        ],
      ),
    );
  }
}
