import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tripweaver/src/common/constants/constants.dart';
import 'package:tripweaver/src/trip/domain/trip.dart';
import 'package:tripweaver/src/trip/presentation/overview/quick_access.dart';

class MyTripPage extends StatelessWidget {
  final Trip trip;

  const MyTripPage({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   isTransparent: true,
      //   contentColor: Colors.white,
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: trip.id,
              child: Container(
                height: 250,
                width: double.infinity,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: trip.image.getImageProvider(),
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
            ),
            const Gap(Space.$100),
            Padding(
              padding: Pad.all4,
              child: GridView.count(
                crossAxisCount: 2,
                children: const [
                  QuickAccess(
                    icon: Text('🗺️'),
                    text: 'Itinerary',
                  ),
                  QuickAccess(
                    icon: Text('💵'),
                    text: 'Budget',
                  ),
                  QuickAccess(
                    icon: Text('🧳'),
                    text: 'Packing List',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
