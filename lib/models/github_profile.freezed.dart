// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubProfile _$GithubProfileFromJson(Map<String, dynamic> json) {
  return _GithubProfile.fromJson(json);
}

/// @nodoc
mixin _$GithubProfile {
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_url")
  String get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "no_bio")
  String get bio => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "no_name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubProfileCopyWith<GithubProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubProfileCopyWith<$Res> {
  factory $GithubProfileCopyWith(
          GithubProfile value, $Res Function(GithubProfile) then) =
      _$GithubProfileCopyWithImpl<$Res, GithubProfile>;
  @useResult
  $Res call(
      {String login,
      @JsonKey(name: "avatar_url") String avatarUrl,
      @JsonKey(defaultValue: "no_bio") String bio,
      @JsonKey(defaultValue: "no_name") String name});
}

/// @nodoc
class _$GithubProfileCopyWithImpl<$Res, $Val extends GithubProfile>
    implements $GithubProfileCopyWith<$Res> {
  _$GithubProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
    Object? bio = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubProfileCopyWith<$Res>
    implements $GithubProfileCopyWith<$Res> {
  factory _$$_GithubProfileCopyWith(
          _$_GithubProfile value, $Res Function(_$_GithubProfile) then) =
      __$$_GithubProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String login,
      @JsonKey(name: "avatar_url") String avatarUrl,
      @JsonKey(defaultValue: "no_bio") String bio,
      @JsonKey(defaultValue: "no_name") String name});
}

/// @nodoc
class __$$_GithubProfileCopyWithImpl<$Res>
    extends _$GithubProfileCopyWithImpl<$Res, _$_GithubProfile>
    implements _$$_GithubProfileCopyWith<$Res> {
  __$$_GithubProfileCopyWithImpl(
      _$_GithubProfile _value, $Res Function(_$_GithubProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
    Object? bio = null,
    Object? name = null,
  }) {
    return _then(_$_GithubProfile(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubProfile implements _GithubProfile {
  const _$_GithubProfile(
      {required this.login,
      @JsonKey(name: "avatar_url") required this.avatarUrl,
      @JsonKey(defaultValue: "no_bio") this.bio = "no_bio",
      @JsonKey(defaultValue: "no_name") this.name = "no_name"});

  factory _$_GithubProfile.fromJson(Map<String, dynamic> json) =>
      _$$_GithubProfileFromJson(json);

  @override
  final String login;
  @override
  @JsonKey(name: "avatar_url")
  final String avatarUrl;
  @override
  @JsonKey(defaultValue: "no_bio")
  final String bio;
  @override
  @JsonKey(defaultValue: "no_name")
  final String name;

  @override
  String toString() {
    return 'GithubProfile(login: $login, avatarUrl: $avatarUrl, bio: $bio, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubProfile &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl, bio, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubProfileCopyWith<_$_GithubProfile> get copyWith =>
      __$$_GithubProfileCopyWithImpl<_$_GithubProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubProfileToJson(
      this,
    );
  }
}

abstract class _GithubProfile implements GithubProfile {
  const factory _GithubProfile(
      {required final String login,
      @JsonKey(name: "avatar_url") required final String avatarUrl,
      @JsonKey(defaultValue: "no_bio") final String bio,
      @JsonKey(defaultValue: "no_name") final String name}) = _$_GithubProfile;

  factory _GithubProfile.fromJson(Map<String, dynamic> json) =
      _$_GithubProfile.fromJson;

  @override
  String get login;
  @override
  @JsonKey(name: "avatar_url")
  String get avatarUrl;
  @override
  @JsonKey(defaultValue: "no_bio")
  String get bio;
  @override
  @JsonKey(defaultValue: "no_name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GithubProfileCopyWith<_$_GithubProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
