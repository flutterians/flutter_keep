import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: EntranceFader(
                child: Image.asset(AppAssets.appLogo),
              ),
            ),
            EntranceFader(
              child: Text(
                'Priotize your task with ease'.hardcoded,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
