import 'package:flutter/material.dart';
import 'package:tripweaver/src/trip/data/trip_repository.dart';
import 'package:tripweaver/src/trip/domain/trip.dart';
import 'package:tripweaver/src/trip/presentation/trip_item.dart';
import 'package:tripweaver/util/app_providers.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class TripList extends StatefulWidget {
  const TripList({super.key});

  @override
  State<TripList> createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  final TripRepository _tripRepository = TripRepository(userId: supabaseAuth.currentUser!.id);
  static const int size = 5;
  bool isLoading = false;
  int page = 0;
  List<Trip> tripList = [];

  @override
  Widget build(BuildContext context) {
    return InfiniteList(
      itemCount: tripList.length,
      isLoading: isLoading,
      onFetchData: () async {
        try {
          setState(() {
            isLoading = true;
          });
          final trips = await _tripRepository.getAll(page, size);
          setState(() {
            tripList.addAll(trips);
            page++;
          });
        } catch (e) {
          if (!context.mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to fetch data')),
          );
        } finally {
          setState(() {
            isLoading = false;
          });
        }
      },
      itemBuilder: (ctx, idx) => TripItem(trip: tripList[idx]),
      emptyBuilder: (ctx) => const Center(
        child: Text('No trips yet'),
      ),
    );
  }
}
