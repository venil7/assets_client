// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PortfolioEntity {

 int get id; int get userId; String get name; String get description; int get numAssets; String get created; String get modified; double get invested; double get realizedPnl; double get breakEven; double get fxImpact;
/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioEntityCopyWith<PortfolioEntity> get copyWith => _$PortfolioEntityCopyWithImpl<PortfolioEntity>(this as PortfolioEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.numAssets, numAssets) || other.numAssets == numAssets)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,numAssets,created,modified,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'PortfolioEntity(id: $id, userId: $userId, name: $name, description: $description, numAssets: $numAssets, created: $created, modified: $modified, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class $PortfolioEntityCopyWith<$Res>  {
  factory $PortfolioEntityCopyWith(PortfolioEntity value, $Res Function(PortfolioEntity) _then) = _$PortfolioEntityCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String name, String description, int numAssets, String created, String modified, double invested, double realizedPnl, double breakEven, double fxImpact
});




}
/// @nodoc
class _$PortfolioEntityCopyWithImpl<$Res>
    implements $PortfolioEntityCopyWith<$Res> {
  _$PortfolioEntityCopyWithImpl(this._self, this._then);

  final PortfolioEntity _self;
  final $Res Function(PortfolioEntity) _then;

/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = null,Object? numAssets = null,Object? created = null,Object? modified = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,numAssets: null == numAssets ? _self.numAssets : numAssets // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PortfolioEntity].
extension PortfolioEntityPatterns on PortfolioEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioEntity value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String name,  String description,  int numAssets,  String created,  String modified,  double invested,  double realizedPnl,  double breakEven,  double fxImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioEntity() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String name,  String description,  int numAssets,  String created,  String modified,  double invested,  double realizedPnl,  double breakEven,  double fxImpact)  $default,) {final _that = this;
switch (_that) {
case _PortfolioEntity():
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String name,  String description,  int numAssets,  String created,  String modified,  double invested,  double realizedPnl,  double breakEven,  double fxImpact)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioEntity() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioEntity implements PortfolioEntity {
  const _PortfolioEntity({required this.id, required this.userId, required this.name, required this.description, required this.numAssets, required this.created, required this.modified, required this.invested, required this.realizedPnl, required this.breakEven, required this.fxImpact});
  

@override final  int id;
@override final  int userId;
@override final  String name;
@override final  String description;
@override final  int numAssets;
@override final  String created;
@override final  String modified;
@override final  double invested;
@override final  double realizedPnl;
@override final  double breakEven;
@override final  double fxImpact;

/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioEntityCopyWith<_PortfolioEntity> get copyWith => __$PortfolioEntityCopyWithImpl<_PortfolioEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.numAssets, numAssets) || other.numAssets == numAssets)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,numAssets,created,modified,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'PortfolioEntity(id: $id, userId: $userId, name: $name, description: $description, numAssets: $numAssets, created: $created, modified: $modified, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class _$PortfolioEntityCopyWith<$Res> implements $PortfolioEntityCopyWith<$Res> {
  factory _$PortfolioEntityCopyWith(_PortfolioEntity value, $Res Function(_PortfolioEntity) _then) = __$PortfolioEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String name, String description, int numAssets, String created, String modified, double invested, double realizedPnl, double breakEven, double fxImpact
});




}
/// @nodoc
class __$PortfolioEntityCopyWithImpl<$Res>
    implements _$PortfolioEntityCopyWith<$Res> {
  __$PortfolioEntityCopyWithImpl(this._self, this._then);

  final _PortfolioEntity _self;
  final $Res Function(_PortfolioEntity) _then;

/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = null,Object? numAssets = null,Object? created = null,Object? modified = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_PortfolioEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,numAssets: null == numAssets ? _self.numAssets : numAssets // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
