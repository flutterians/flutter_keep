import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      title: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 10),
              InkWell(
                child: const Icon(Icons.menu),
                onTap: () => locator<GlobalKey<ScaffoldState>>()
                    .currentState
                    ?.openDrawer(),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Search your notes'.hardcoded,
                  softWrap: false,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              InkWell(
                child: const Icon(Icons.grid_view_outlined),
                onTap: () {},
              ),
              const SizedBox(width: 6),
              const CircleAvatar(
                maxRadius: 15,
                backgroundImage: AssetImage(AppAssets.appLogo),
              ),
              const SizedBox(width: 6),
            ],
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      centerTitle: true,
      titleSpacing: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 2,
    );
  }
}
