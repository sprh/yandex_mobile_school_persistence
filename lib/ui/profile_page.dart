import 'package:flutter/material.dart';
import 'package:yandex_mobile_school_persistence/managers/profiles_manager.dart';

import '../models/github_profile.dart';

class GithubProfilePage extends StatefulWidget {
  final String login;

  const GithubProfilePage({
    required this.login,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _GithubProfilePageState();
}

class _GithubProfilePageState extends State<GithubProfilePage> {
  GithubProfile? data;

  @override
  void initState() {
    super.initState();
    ProfilesManager.getProfile(widget.login).then(
      (value) => setState(() => data = value),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = this.data;

    if (data == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(39, 255, 193, 7),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                data.avatarUrl,
                height: 50,
                width: 50,
              ),
              Text(
                data.login,
                style: const TextStyle(fontSize: 25),
              ),
              Text(data.name),
              Text(data.bio),
            ],
          ),
        ),
      ),
    );
  }
}
