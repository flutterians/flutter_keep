import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Flutter',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: ' Keep',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).coreWhite,
          ),
          const Spacer(),
          BlocBuilder<ThemeCubit, ThemeModel>(
            builder: (context, state) {
              return ListTile(
                focusColor: Theme.of(context).coreTransparent,
                title: Text('Change theme'.hardcoded),
                leading: state.themeType.isDarkTheme
                    ? const Icon(Feather.moon)
                    : const Icon(Feather.sun),
                trailing: Switch.adaptive(
                  value: state.themeType.isDarkTheme,
                  onChanged: (isDarkModeEnabled) {
                    locator<ThemeCubit>()
                        .changeTheme(isDarkTheme: isDarkModeEnabled);
                  },
                ),
              );
            },
          ),
          Divider(
            color: Theme.of(context).coreWhite,
          ),
          BlocBuilder<AuthCubit, BaseState<dynamic>>(
            builder: (context, state) {
              return ListTile(
                onTap: () => locator<AuthCubit>().logout(),
                focusColor: Theme.of(context).coreTransparent,
                title: Text('Log out'.hardcoded),
                leading: const Icon(Feather.lock),
                trailing: const Icon(Feather.chevron_right),
              );
            },
          ),
          Divider(
            color: Theme.of(context).coreWhite,
          ),
        ],
      ),
    );
  }
}
