import 'package:flutter/material.dart';

class SettingsContainerOutlined extends StatelessWidget {
  const SettingsContainerOutlined({
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
    this.isExpanded = true,
    this.isOutlinedColumn,
    this.isWideOutlined,
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
  final bool isExpanded;
  final bool? isOutlinedColumn;
  final bool? isWideOutlined;

  @override
  Widget build(BuildContext context) {
    double defaultIconSize = 25;
    Widget content;
    if (isOutlinedColumn == true) {
      content = Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.only(
          left: 3,
          right: 3,
          top: verticalPadding ?? 14,
          bottom: verticalPadding ?? 14,
        ),
        child: Column(
          children: [
            icon == null
                ? const SizedBox.shrink()
                : Transform.scale(
                    scale: iconScale ?? 1,
                    child: Icon(
                      icon,
                      size: iconSize ?? defaultIconSize + 5,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
            const SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center)
          ],
        ),
      );
    } else {
      Widget textContent = description == null
          ? Text(title)
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                ),
                Container(height: 3),
                Text(description ?? ""),
              ],
            );
      content = Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.only(
          left: 13,
          right: 4,
          top: verticalPadding ?? 14,
          bottom: verticalPadding ?? 14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: isExpanded == false ? MainAxisSize.min : MainAxisSize.max,
          children: [
            icon == null
                ? const SizedBox.shrink()
                : Padding(
                    padding: EdgeInsets.only(right: 8 + defaultIconSize - (iconSize ?? defaultIconSize)),
                    child: Transform.scale(
                      scale: iconScale ?? 1,
                      child: Icon(
                        icon,
                        size: iconSize ?? defaultIconSize,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
            isWideOutlined == true ? const SizedBox(width: 3) : const SizedBox.shrink(),
            isExpanded
                ? Expanded(child: textContent)
                : Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: textContent,
                    ),
                  ),
            Opacity(opacity: 0.5, child: afterWidget ?? const SizedBox())
          ],
        ),
      );
    }
    return content;
  }
}
