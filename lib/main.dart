import 'package:flutter/material.dart';
import 'package:yandex_mobile_school_persistence/managers/navigation_manager.dart';
import 'package:yandex_mobile_school_persistence/ui/profiles_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: NavigationManager.hostNavigationKey,
      home: const GithubProfilesList(),
    );
  }
}
