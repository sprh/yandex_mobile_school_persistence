import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:yandex_mobile_school_persistence/models/github_profile.dart';

class PersistenceManager {
  Database? _database;
  static const _tableName = "profiles";

  Future<Database> get _databaseGetter async {
    final appDirectory = await getApplicationDocumentsDirectory();
    _database ??= await openDatabase(
      '${appDirectory.path}/github_profiles.db',
      version: 2,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE $_tableName (login TEXT PRIMARY KEY, avatar_url TEXT, bio TEXT, name TEXT)');
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (oldVersion < newVersion) {
          db.insert(
            _tableName,
            const GithubProfile(
              avatarUrl:
                  "https://w.forfun.com/fetch/c4/c493aac67877288476b0fc52d55f55cf.jpeg",
              login: "kit",
              name: "kit",
              bio: "kit",
            ).toJson(),
          );
        }
      },
    );
    return _database!;
  }

  Future<List<GithubProfile>> getSearchHistory() async {
    final db = await _databaseGetter;
    final items = await db.query(_tableName);
    return items.map((item) => GithubProfile.fromJson(item)).toList();
  }

  Future<void> saveProfile({required GithubProfile profile}) async {
    final db = await _databaseGetter;
    db.insert(_tableName, profile.toJson());
  }
}
