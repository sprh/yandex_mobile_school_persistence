import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:yandex_mobile_school_persistence/models/github_profile.dart';

class PersistenceManager {
  static const _profilesKey = 'profiles_key';

  Future<List<GithubProfile>> getSearchHistory() async {
    final instance = await SharedPreferences.getInstance();
    final data = instance.getStringList(_profilesKey) ?? [];
    return data.map(
      (item) {
        final json = jsonDecode(item) as Map<String, dynamic>;
        return GithubProfile.fromJson(json);
      },
    ).toList();
  }

  Future<void> saveProfile({required GithubProfile profile}) async {
    final instance = await SharedPreferences.getInstance();
    final data = instance.getStringList(_profilesKey) ?? [];
    final jsonString = jsonEncode(profile.toJson());
    data.add(jsonString);
    instance.setStringList(_profilesKey, data);
  }
}
