import 'package:isar/isar.dart';

part 'github_profile_isar.g.dart';

@Collection()
class GithubProfileIsar {
  Id id = Isar.autoIncrement;

  String? login;
  @Name("avatar_url")
  String? avatarUrl;
  String? bio;
  String? name;
}
