import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Sliver list', type: SliverList)
Widget sliverListUseCase(BuildContext context) {
  return SliverLayout(
    title: const Text('Sliver list'),
    children: List.generate(
      10,
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

  const SliverLayout({
    super.key,
    this.title,
    this.children = const [],
    this.pinned = true,
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
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink[200],
              ),
              title: title,
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
