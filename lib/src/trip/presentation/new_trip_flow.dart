import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class NewTripFlow extends StatefulWidget {
  const NewTripFlow({super.key});

  @override
  State<NewTripFlow> createState() => _NewTripFlowState();
}

class _NewTripFlowState extends State<NewTripFlow> {
  PageController _pageController = PageController(initialPage: 0);
  final _flow = [
    _TripDates(),
  ];
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: PageView(
        controller: _pageController,
        children: _flow,
      ),
    );
  }
}

class _TripName extends StatelessWidget {
  final void Function(String? name) onChanged;

  const _TripName({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: 'name',
    );
  }
}

class _TripDates extends StatelessWidget {
  const _TripDates({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
