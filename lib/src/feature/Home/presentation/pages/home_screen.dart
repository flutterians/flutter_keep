import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: locator<GlobalKey<ScaffoldState>>(),
      drawer: const DrawerWidget(),
      body: CustomScrollView(
        slivers: <Widget>[
          const AppBarWidget(),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                10,
                (index) => Column(
                  children: [
                    Lottie.asset(
                      AppAssets.emptyAnimation,
                      repeat: false,
                      addRepaintBoundary: true,
                    ), //   Text(
                    Text(
                      'No notes added yet'.hardcoded,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
