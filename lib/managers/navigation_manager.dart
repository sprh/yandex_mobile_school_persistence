import 'package:flutter/material.dart';
import 'package:yandex_mobile_school_persistence/models/github_profile.dart';

import '../ui/profile_page.dart';

class NavigationManager {
  static final hostNavigationKey = GlobalKey<NavigatorState>();

  static void showGithubProfileScreen({
    String? login,
    GithubProfile? profile,
  }) =>
      hostNavigationKey.currentState!.push(
        MaterialPageRoute(
          builder: (context) => GithubProfilePage(
            login: login,
            profile: profile,
          ),
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
