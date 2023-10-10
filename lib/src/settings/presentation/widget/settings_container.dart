import 'package:flutter/material.dart';

import 'settings_container_outline.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({
    Key? key,
    required this.title,
    this.description,
    this.icon,
    this.afterWidget,
    this.onTap,
    this.onLongPress,
    this.verticalPadding,
    this.iconSize,
    this.iconScale,
    this.isOutlined,
    this.isOutlinedColumn,
    this.enableBorderRadius = false,
    this.isWideOutlined,
    this.hasMoreOptionsIcon,
  }) : super(key: key);

  final String title;
  final String? description;
  final IconData? icon;
  final Widget? afterWidget;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final double? verticalPadding;
  final double? iconSize;
  final double? iconScale;
  final bool? isOutlined;
  final bool? isOutlinedColumn;
  final bool enableBorderRadius;
  final bool? isWideOutlined;
  final bool? hasMoreOptionsIcon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((enableBorderRadius) && isOutlined != true ? 20 : 0),
      child: isOutlined == true
          ? SettingsContainerOutlined(
              title: title,
              afterWidget: afterWidget,
              description: description,
              icon: icon,
              iconSize: iconSize,
              iconScale: iconScale,
              onTap: onTap,
              onLongPress: onLongPress,
              verticalPadding: verticalPadding,
              isOutlinedColumn: isOutlinedColumn,
              isWideOutlined: isWideOutlined,
            )
          : Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: verticalPadding ?? 11,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        icon == null
                            ? const SizedBox.shrink()
                            : Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Transform.scale(
                                  scale: iconScale ?? 1,
                                  child: Icon(
                                    icon,
                                    size: iconSize ?? 30,
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                        Expanded(
                          child: description == null
                              ? Text(title)
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Text(title), Container(height: 3), Text(description.toString())],
                                ),
                        ),
                      ],
                    ),
                  ),
                  // hasMoreOptionsIcon == true ? HasMoreOptionsIcon() : SizedBox.shrink(),
                  afterWidget ?? const SizedBox()
                ],
              ),
            ),
    );
  }
}
