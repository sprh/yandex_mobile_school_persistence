// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubProfile _$$_GithubProfileFromJson(Map<String, dynamic> json) =>
    _$_GithubProfile(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
      bio: json['bio'] as String? ?? 'no_bio',
      name: json['name'] as String? ?? 'no_name',
    );

Map<String, dynamic> _$$_GithubProfileToJson(_$_GithubProfile instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
      'name': instance.name,
    };
