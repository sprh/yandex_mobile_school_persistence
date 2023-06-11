import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yandex_mobile_school_persistence/models/github_profile.dart';

import '../models/github_profile_isar.dart';

class PersistenceManager {
  Isar? _isar;

  Future<Isar> get _isarGetter async {
    final appDir = await getApplicationDocumentsDirectory();

    _isar ??= await Isar.open(
      [GithubProfileIsarSchema],
      directory: appDir.path,
    );
    return _isar!;
  }

  Future<List<GithubProfile>> getSearchHistory() async {
    final isar = await _isarGetter;
    final items = await isar.githubProfileIsars.where().findAll();
    // final items = await isar.githubProfileIsars
    //     .filter()
    //     .loginIsNotEmpty()
    //     .avatarUrlIsNotEmpty()
    //     .loginContains("1")
    //     .findAll();
    return items
        .map(
          (item) => GithubProfile(
            login: item.login ?? "",
            avatarUrl: item.avatarUrl ?? '',
            bio: item.bio ?? "no_bio",
            name: item.name ?? "no_name",
          ),
        )
        .toList();
  }

  Future<void> saveProfile({required GithubProfile profile}) async {
    final isar = await _isarGetter;
    final isarProfile = GithubProfileIsar()
      ..login = profile.login
      ..avatarUrl = profile.avatarUrl
      ..bio = profile.bio
      ..name = profile.name;
    isar.writeTxn(() async {
      isar.githubProfileIsars.put(isarProfile);
    });
  }
}
