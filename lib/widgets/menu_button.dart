import 'package:flutter/material.dart';


class MenuButton extends StatelessWidget {
  const MenuButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.menu,
      ),
      onPressed: () => Scaffold.of(context).openDrawer(),
    );
  }
}