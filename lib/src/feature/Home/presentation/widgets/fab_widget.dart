import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: Theme.of(context).backgroundColor,
      child: const Icon(
        Icons.add,
        size: 30,
      ),
      onPressed: () async {},
    );
  }
}
