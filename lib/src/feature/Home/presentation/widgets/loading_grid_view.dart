import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';

class LoadingGridView extends StatelessWidget {
  const LoadingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: size.width / 2,
          maxCrossAxisExtent: size.width / 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 1 / 1.3,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) => const CustomShimmer(),
          addRepaintBoundaries: true,
          addAutomaticKeepAlives: true,
        ),
      ),
    );
  }
}
