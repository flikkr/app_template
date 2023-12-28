import 'package:flutter/material.dart';
import 'package:tripweaver/src/trip/presentation/trip_list.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Trips'),
      ),
      body: const TripList(),
    );
  }
}
