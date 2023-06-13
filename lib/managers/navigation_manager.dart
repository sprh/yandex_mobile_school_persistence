import 'package:flutter/material.dart';

import '../ui/profile_page.dart';

class NavigationManager {
  static final hostNavigationKey = GlobalKey<NavigatorState>();

  static void showGithubProfileScreen({
    required String login,
  }) =>
      hostNavigationKey.currentState!.restorablePush(
        _buildProfilePageRoute,
        arguments: login,
      );

  static Route _buildProfilePageRoute(
    BuildContext context,
    Object? args,
  ) =>
      MaterialPageRoute(
        builder: (context) => GithubProfilePage(
          login: args as String,
        ),
      );

  static void showErrorDialog() => showDialog(
        context: hostNavigationKey.currentContext!,
        builder: (context) {
          return AlertDialog(
            title: const Text("Not found"),
            actions: [
              TextButton(
                onPressed: () => hostNavigationKey.currentState!
                  ..pop()
                  ..pop(),
                child: const Text("Ok"),
              ),
            ],
          );
        },
      );
}
