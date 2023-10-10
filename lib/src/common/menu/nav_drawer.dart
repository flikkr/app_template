import 'package:app_template/src/common/constants/constants.dart';
import 'package:app_template/src/user/domain/user_data.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: "Default drawer", type: AppDrawer)
Widget appDrawerUseCase(BuildContext context) {
  return AppDrawer(user: UserData.generateFake());
}

class AppDrawer extends StatefulWidget {
  final UserData user;

  const AppDrawer({
    super.key,
    required this.user,
  });

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int? selected;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: selected,
      onDestinationSelected: (value) {
        setState(() {
          selected = value;
        });
      },
      children: [
        DrawerHeader(
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(widget.user.photoUrl),
              ),
              Gap.w8,
              Text(widget.user.name),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.person_outline_rounded),
          selectedIcon: Icon(Icons.person_rounded),
          label: Text('Profile'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.person_outline_rounded),
          selectedIcon: Icon(Icons.person_rounded),
          label: Text('Achievements'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings_outlined),
          selectedIcon: Icon(Icons.settings),
          label: Text('Settings'),
        ),
      ],
    );
  }
}
