import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'settings_container.dart';

class SettingsContainerSwitch extends StatefulWidget {
  const SettingsContainerSwitch({
    Key? key,
    required this.title,
    this.description,
    this.descriptionWithValue,
    this.initialValue = false,
    this.icon,
    required this.onSwitched,
    this.verticalPadding,
    this.syncWithInitialValue = true,
    this.onLongPress,
    this.onTap,
    this.enableBorderRadius = false,
    this.hasMoreOptionsIcon = false,
    this.runOnSwitchedInitially = false,
  }) : super(key: key);

  final String title;
  final String? description;
  final String Function(bool)? descriptionWithValue;
  final bool initialValue;
  final IconData? icon;
  final Function(bool) onSwitched;
  final double? verticalPadding;
  final bool syncWithInitialValue;
  final VoidCallback? onLongPress;
  final VoidCallback? onTap;
  final bool enableBorderRadius;
  final bool hasMoreOptionsIcon;
  final bool runOnSwitchedInitially;

  @override
  State<SettingsContainerSwitch> createState() => _SettingsContainerSwitchState();
}

class _SettingsContainerSwitchState extends State<SettingsContainerSwitch> {
  bool value = true;
  bool waiting = false;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
    Future.delayed(Duration.zero, () {
      if (widget.runOnSwitchedInitially == true) {
        widget.onSwitched(value);
      }
    });
  }

  @override
  void didUpdateWidget(Widget oldWidget) {
    if (widget.initialValue != value && widget.syncWithInitialValue) {
      setState(() {
        value = widget.initialValue;
      });
    }
  }

  void toggleSwitch() async {
    setState(() {
      waiting = true;
    });
    if (await widget.onSwitched(!value) != false) {
      setState(() {
        value = !value;
        waiting = false;
      });
    } else {
      setState(() {
        waiting = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String? description = widget.description;
    if (widget.descriptionWithValue != null) {
      description = widget.descriptionWithValue!(value);
    }
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: waiting ? 0.5 : 1,
      child: SettingsContainer(
        hasMoreOptionsIcon: widget.hasMoreOptionsIcon,
        enableBorderRadius: widget.enableBorderRadius,
        onLongPress: widget.onLongPress,
        onTap: widget.onTap ?? () => {toggleSwitch()},
        title: widget.title,
        description: description,
        afterWidget: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Platform.isIOS
              ? CupertinoSwitch(
                  activeColor: Theme.of(context).colorScheme.primary,
                  value: value,
                  onChanged: (_) {
                    toggleSwitch();
                  },
                )
              : Switch(
                  activeColor: Theme.of(context).colorScheme.primary,
                  value: value,
                  onChanged: (_) {
                    toggleSwitch();
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
        ),
        icon: widget.icon,
        verticalPadding: widget.verticalPadding,
      ),
    );
  }
}
