import 'package:tripweaver/src/trip/domain/trip.dart';
import 'package:flutter/material.dart';

class TripItem extends StatelessWidget {
  final Trip trip;

  const TripItem({
    super.key,
    required this.trip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Hero(
      tag: trip.id,
      child: Card(
        child: SizedBox(
          height: 180,
          child: Ink.image(
            image: AssetImage(""),
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                // ref.watch(selectedTrip.state).state = trip;
                // Navigator.of(context).pushNamed(
                //   Routes.tripOverview,
                //   arguments: trip,
                // );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: PopupMenuButton(
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                onTap: () {
                                  // Navigator.of(context).pushNamed(
                                  //   Routes.tripForm,
                                  //   arguments: trip,
                                  // );
                                  // onEdit?.call();
                                },
                                child: const Text("Edit"),
                              ),
                              PopupMenuItem(
                                onTap: () {},
                                child: Text("Delete"),
                              ),
                            ];
                          },
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      alignment: Alignment.bottomCenter,
                      heightFactor: 0.3,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black54,
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: Text(
                          trip.name,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: theme.colorScheme.background,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
