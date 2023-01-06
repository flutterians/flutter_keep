import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:go_router/go_router.dart';

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
      onPressed: () => context.push(RoutePaths.addNoteRoute.path),
    );
  }
}
