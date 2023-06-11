import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:yandex_mobile_school_persistence/models/github_profile.dart';

class PersistenceManager {
  Future<File> get _file async {
    final appDir = await getApplicationDocumentsDirectory();
    final path = "${appDir.path}/git_2.txt";
    return File(path);
  }

  Future<List<GithubProfile>> getSearchHistory() async {
    final file = await _file;
    if (!await file.exists()) {
      return [];
    }

    final lines = await file.readAsLines();
    return lines.map(
      (line) {
        final json = jsonDecode(line) as Map<String, dynamic>;
        return GithubProfile.fromJson(json);
      },
    ).toList();
  }

  Future<void> saveProfile({required GithubProfile profile}) async {
    final file = await _file;
    final ioSink = file.openWrite(mode: FileMode.append);
    final jsonString = jsonEncode(profile.toJson());
    ioSink.writeln(jsonString);
    await ioSink.flush();
    await ioSink.close();
  }
}
