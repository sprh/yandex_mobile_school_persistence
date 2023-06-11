import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:yandex_mobile_school_persistence/managers/navigation_manager.dart';
import 'package:yandex_mobile_school_persistence/managers/persistence_manager.dart';

import '../models/github_profile.dart';

class ProfilesManager {
  static const _baseUrl = "https://api.github.com/users/";

  static final _searchData = <GithubProfile>{};
  static final _searchDataStreamController =
      StreamController<List<GithubProfile>>();
  static final _persistenceManager = PersistenceManager();

  static Stream<List<GithubProfile>> get searchDataStream =>
      _searchDataStreamController.stream;

  static Future<void> init() async {
    final savedData = await _persistenceManager.getSearchHistory();
    for (var element in savedData) {
      _searchData.add(element);
    }
    _searchDataStreamController.add(_searchData.toList());
  }

  static Future<GithubProfile?> getProfile(String login) async {
    final uri = Uri.parse("$_baseUrl$login");
    final response = await get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final profile = GithubProfile.fromJson(json);
      _persistenceManager.saveProfile(profile: profile);
      _searchData.add(profile);
      _searchDataStreamController.add(_searchData.toList());
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

  static void onOpenFromHistory(GithubProfile profile) {
    NavigationManager.showGithubProfileScreen(profile: profile);
  }
}
