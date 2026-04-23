// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfigEntity {
  String get apiBaseUrl => throw _privateConstructorUsedError;

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppConfigEntityCopyWith<AppConfigEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigEntityCopyWith<$Res> {
  factory $AppConfigEntityCopyWith(
          AppConfigEntity value, $Res Function(AppConfigEntity) then) =
      _$AppConfigEntityCopyWithImpl<$Res, AppConfigEntity>;
  @useResult
  $Res call({String apiBaseUrl});
}

/// @nodoc
class _$AppConfigEntityCopyWithImpl<$Res, $Val extends AppConfigEntity>
    implements $AppConfigEntityCopyWith<$Res> {
  _$AppConfigEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiBaseUrl = null,
  }) {
    return _then(_value.copyWith(
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppConfigEntityImplCopyWith<$Res>
    implements $AppConfigEntityCopyWith<$Res> {
  factory _$$AppConfigEntityImplCopyWith(_$AppConfigEntityImpl value,
          $Res Function(_$AppConfigEntityImpl) then) =
      __$$AppConfigEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiBaseUrl});
}

/// @nodoc
class __$$AppConfigEntityImplCopyWithImpl<$Res>
    extends _$AppConfigEntityCopyWithImpl<$Res, _$AppConfigEntityImpl>
    implements _$$AppConfigEntityImplCopyWith<$Res> {
  __$$AppConfigEntityImplCopyWithImpl(
      _$AppConfigEntityImpl _value, $Res Function(_$AppConfigEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiBaseUrl = null,
  }) {
    return _then(_$AppConfigEntityImpl(
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppConfigEntityImpl implements _AppConfigEntity {
  const _$AppConfigEntityImpl({required this.apiBaseUrl});

  @override
  final String apiBaseUrl;

  @override
  String toString() {
    return 'AppConfigEntity(apiBaseUrl: $apiBaseUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigEntityImpl &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiBaseUrl);

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigEntityImplCopyWith<_$AppConfigEntityImpl> get copyWith =>
      __$$AppConfigEntityImplCopyWithImpl<_$AppConfigEntityImpl>(
          this, _$identity);
}

abstract class _AppConfigEntity implements AppConfigEntity {
  const factory _AppConfigEntity({required String apiBaseUrl}) =
      _$AppConfigEntityImpl;

  @override
  String get apiBaseUrl;

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppConfigEntityImplCopyWith<_$AppConfigEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
