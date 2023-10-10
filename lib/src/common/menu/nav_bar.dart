import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSize {
  final String? title;

  const NavBar({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
  
  @override
  Widget get child => AppBar();
  
  @override
  Size get preferredSize => throw UnimplementedError();
}
