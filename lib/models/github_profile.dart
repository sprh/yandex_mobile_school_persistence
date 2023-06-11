// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_profile.freezed.dart';
part 'github_profile.g.dart';

@freezed
class GithubProfile with _$GithubProfile {
  const factory GithubProfile({
    required String login,
    @JsonKey(name: "avatar_url") required String avatarUrl,
    @JsonKey(defaultValue: "no_bio") @Default("no_bio") String bio,
    @JsonKey(defaultValue: "no_name") @Default("no_name") String name,
  }) = _GithubProfile;

  factory GithubProfile.fromJson(Map<String, dynamic> json) =>
      _$$_GithubProfileFromJson(json);
}
