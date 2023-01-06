import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).backgroundColor.withOpacity(.8),
      shape: const CircularNotchedRectangle(),
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: Theme.of(context).backgroundColor.withOpacity(.8),
        height: kBottomNavigationBarHeight,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: const <Widget>[
            Icon(Icons.check_box_outlined, size: 26),
            SizedBox(width: 30),
            Icon(Icons.brush, size: 26),
            SizedBox(width: 30),
            Icon(Icons.mic_none_outlined, size: 26),
            SizedBox(width: 30),
            Icon(Icons.photo_outlined, size: 26),
          ],
        ),
      ),
    );
  }
}
