import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:yandex_mobile_school_persistence/managers/navigation_manager.dart';

import '../models/github_profile.dart';

class ProfilesManager {
  static const _baseUrl = "https://api.github.com/users/";

  static Future<GithubProfile?> getProfile(String login) async {
    final uri = Uri.parse("$_baseUrl$login");
    final response = await get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return GithubProfile.fromJson(json);
    }
    NavigationManager.showErrorDialog();
    return null;
  }

  static void onSearch(String login) {
    if (login.isEmpty) {
      return;
    }
    NavigationManager.showGithubProfileScreen(login: login);
  }
}
