import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
    this.title,
    this.action,
    this.leading,
    this.elevation,
    this.toolBarHeight,
    this.toolBarOpacity,
    this.titleSpacing,
  });

  String? title;
  List<Widget>? action;
  Widget? leading;
  double? elevation;
  double? titleSpacing;
  double? toolBarHeight;
  double? toolBarOpacity;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title!),
      actions: action,
      leading: leading,
      elevation: elevation,
      titleSpacing: titleSpacing,
      toolbarHeight: toolBarHeight,
      toolbarOpacity: toolBarOpacity!,
    ) as PreferredSizeWidget;
  }
}
