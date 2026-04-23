// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreferencesModel {

 int get id;@JsonKey(name: 'base_ccy') String get baseCcy; Map<String, dynamic>? get additional;
/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesModelCopyWith<UserPreferencesModel> get copyWith => _$UserPreferencesModelCopyWithImpl<UserPreferencesModel>(this as UserPreferencesModel, _$identity);

  /// Serializes this UserPreferencesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferencesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&const DeepCollectionEquality().equals(other.additional, additional));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,baseCcy,const DeepCollectionEquality().hash(additional));

@override
String toString() {
  return 'UserPreferencesModel(id: $id, baseCcy: $baseCcy, additional: $additional)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesModelCopyWith<$Res>  {
  factory $UserPreferencesModelCopyWith(UserPreferencesModel value, $Res Function(UserPreferencesModel) _then) = _$UserPreferencesModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'base_ccy') String baseCcy, Map<String, dynamic>? additional
});




}
/// @nodoc
class _$UserPreferencesModelCopyWithImpl<$Res>
    implements $UserPreferencesModelCopyWith<$Res> {
  _$UserPreferencesModelCopyWithImpl(this._self, this._then);

  final UserPreferencesModel _self;
  final $Res Function(UserPreferencesModel) _then;

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? baseCcy = null,Object? additional = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,additional: freezed == additional ? _self.additional : additional // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreferencesModel].
extension UserPreferencesModelPatterns on UserPreferencesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferencesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferencesModel value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferencesModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'base_ccy')  String baseCcy,  Map<String, dynamic>? additional)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that.id,_that.baseCcy,_that.additional);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'base_ccy')  String baseCcy,  Map<String, dynamic>? additional)  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesModel():
return $default(_that.id,_that.baseCcy,_that.additional);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'base_ccy')  String baseCcy,  Map<String, dynamic>? additional)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that.id,_that.baseCcy,_that.additional);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferencesModel implements UserPreferencesModel {
  const _UserPreferencesModel({required this.id, @JsonKey(name: 'base_ccy') required this.baseCcy, final  Map<String, dynamic>? additional}): _additional = additional;
  factory _UserPreferencesModel.fromJson(Map<String, dynamic> json) => _$UserPreferencesModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'base_ccy') final  String baseCcy;
 final  Map<String, dynamic>? _additional;
@override Map<String, dynamic>? get additional {
  final value = _additional;
  if (value == null) return null;
  if (_additional is EqualUnmodifiableMapView) return _additional;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesModelCopyWith<_UserPreferencesModel> get copyWith => __$UserPreferencesModelCopyWithImpl<_UserPreferencesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPreferencesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferencesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&const DeepCollectionEquality().equals(other._additional, _additional));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,baseCcy,const DeepCollectionEquality().hash(_additional));

@override
String toString() {
  return 'UserPreferencesModel(id: $id, baseCcy: $baseCcy, additional: $additional)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesModelCopyWith<$Res> implements $UserPreferencesModelCopyWith<$Res> {
  factory _$UserPreferencesModelCopyWith(_UserPreferencesModel value, $Res Function(_UserPreferencesModel) _then) = __$UserPreferencesModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'base_ccy') String baseCcy, Map<String, dynamic>? additional
});




}
/// @nodoc
class __$UserPreferencesModelCopyWithImpl<$Res>
    implements _$UserPreferencesModelCopyWith<$Res> {
  __$UserPreferencesModelCopyWithImpl(this._self, this._then);

  final _UserPreferencesModel _self;
  final $Res Function(_UserPreferencesModel) _then;

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? baseCcy = null,Object? additional = freezed,}) {
  return _then(_UserPreferencesModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,additional: freezed == additional ? _self._additional : additional // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
