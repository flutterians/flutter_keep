import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabIndexCubit, int>(
      builder: (context, currentIndex) {
        return BottomNavigationBar(
          enableFeedback: false,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          // selectedItemColor: Theme.of(context).coreGreen,
          // selectedIconTheme: IconThemeData(
          //   color: Theme.of(context).coreGreen,
          // ),
          items: [
            BottomNavigationBarItem(
              label: 'Home'.hardcoded,
              icon: const Icon(FontAwesome.home),
            ),
            BottomNavigationBarItem(
              label: 'AddNote'.hardcoded,
              icon: const Icon(SimpleLineIcons.location_pin),
            ),
            BottomNavigationBarItem(
              label: 'Setting'.hardcoded,
              icon: const Icon(Octicons.bookmark),
            ),
          ],
          onTap: (index) {
            locator<TabIndexCubit>().changeIndex(index);
            switch (index) {
              case 0:
                context.go('/home');
                break;
              case 1:
                context.go('/addNote');
                break;
              case 2:
                context.go('/setting');
                break;
            }
          },
        );
      },
    );
  }
}
