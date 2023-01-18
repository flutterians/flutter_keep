import 'package:flutter/material.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
