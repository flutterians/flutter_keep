import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
          ValueListenableBuilder(
            valueListenable: Hive.box<NoteModel>('todo').listenable(),
            builder: (context, value, child) {
              return SliverFillRemaining(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset(AppAssets.emptyAnimation),
                      Text(
                        'No notes'.hardcoded,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: const FabWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      extendBody: true,
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
