// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SummaryChartEntity {

 int get timestamp; double get price; int get volume;
/// Create a copy of SummaryChartEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryChartEntityCopyWith<SummaryChartEntity> get copyWith => _$SummaryChartEntityCopyWithImpl<SummaryChartEntity>(this as SummaryChartEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryChartEntity&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume);

@override
String toString() {
  return 'SummaryChartEntity(timestamp: $timestamp, price: $price, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $SummaryChartEntityCopyWith<$Res>  {
  factory $SummaryChartEntityCopyWith(SummaryChartEntity value, $Res Function(SummaryChartEntity) _then) = _$SummaryChartEntityCopyWithImpl;
@useResult
$Res call({
 int timestamp, double price, int volume
});




}
/// @nodoc
class _$SummaryChartEntityCopyWithImpl<$Res>
    implements $SummaryChartEntityCopyWith<$Res> {
  _$SummaryChartEntityCopyWithImpl(this._self, this._then);

  final SummaryChartEntity _self;
  final $Res Function(SummaryChartEntity) _then;

/// Create a copy of SummaryChartEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? price = null,Object? volume = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryChartEntity].
extension SummaryChartEntityPatterns on SummaryChartEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryChartEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryChartEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryChartEntity value)  $default,){
final _that = this;
switch (_that) {
case _SummaryChartEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryChartEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryChartEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int timestamp,  double price,  int volume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryChartEntity() when $default != null:
return $default(_that.timestamp,_that.price,_that.volume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int timestamp,  double price,  int volume)  $default,) {final _that = this;
switch (_that) {
case _SummaryChartEntity():
return $default(_that.timestamp,_that.price,_that.volume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int timestamp,  double price,  int volume)?  $default,) {final _that = this;
switch (_that) {
case _SummaryChartEntity() when $default != null:
return $default(_that.timestamp,_that.price,_that.volume);case _:
  return null;

}
}

}

/// @nodoc


class _SummaryChartEntity implements SummaryChartEntity {
  const _SummaryChartEntity({required this.timestamp, required this.price, required this.volume});
  

@override final  int timestamp;
@override final  double price;
@override final  int volume;

/// Create a copy of SummaryChartEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryChartEntityCopyWith<_SummaryChartEntity> get copyWith => __$SummaryChartEntityCopyWithImpl<_SummaryChartEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryChartEntity&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume);

@override
String toString() {
  return 'SummaryChartEntity(timestamp: $timestamp, price: $price, volume: $volume)';
}


}

/// @nodoc
abstract mixin class _$SummaryChartEntityCopyWith<$Res> implements $SummaryChartEntityCopyWith<$Res> {
  factory _$SummaryChartEntityCopyWith(_SummaryChartEntity value, $Res Function(_SummaryChartEntity) _then) = __$SummaryChartEntityCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, double price, int volume
});




}
/// @nodoc
class __$SummaryChartEntityCopyWithImpl<$Res>
    implements _$SummaryChartEntityCopyWith<$Res> {
  __$SummaryChartEntityCopyWithImpl(this._self, this._then);

  final _SummaryChartEntity _self;
  final $Res Function(_SummaryChartEntity) _then;

/// Create a copy of SummaryChartEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? price = null,Object? volume = null,}) {
  return _then(_SummaryChartEntity(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SummaryChangesEntity {

@JsonKey(name: 'startPrice') double get startPrice;@JsonKey(name: 'endPrice') double get endPrice;@JsonKey(name: 'returnValue') double get returnValue;@JsonKey(name: 'returnPct') double get returnPct; int get startTs; int get endTs;
/// Create a copy of SummaryChangesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryChangesEntityCopyWith<SummaryChangesEntity> get copyWith => _$SummaryChangesEntityCopyWithImpl<SummaryChangesEntity>(this as SummaryChangesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryChangesEntity&&(identical(other.startPrice, startPrice) || other.startPrice == startPrice)&&(identical(other.endPrice, endPrice) || other.endPrice == endPrice)&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct)&&(identical(other.startTs, startTs) || other.startTs == startTs)&&(identical(other.endTs, endTs) || other.endTs == endTs));
}


@override
int get hashCode => Object.hash(runtimeType,startPrice,endPrice,returnValue,returnPct,startTs,endTs);

@override
String toString() {
  return 'SummaryChangesEntity(startPrice: $startPrice, endPrice: $endPrice, returnValue: $returnValue, returnPct: $returnPct, startTs: $startTs, endTs: $endTs)';
}


}

/// @nodoc
abstract mixin class $SummaryChangesEntityCopyWith<$Res>  {
  factory $SummaryChangesEntityCopyWith(SummaryChangesEntity value, $Res Function(SummaryChangesEntity) _then) = _$SummaryChangesEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'startPrice') double startPrice,@JsonKey(name: 'endPrice') double endPrice,@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct, int startTs, int endTs
});




}
/// @nodoc
class _$SummaryChangesEntityCopyWithImpl<$Res>
    implements $SummaryChangesEntityCopyWith<$Res> {
  _$SummaryChangesEntityCopyWithImpl(this._self, this._then);

  final SummaryChangesEntity _self;
  final $Res Function(SummaryChangesEntity) _then;

/// Create a copy of SummaryChangesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startPrice = null,Object? endPrice = null,Object? returnValue = null,Object? returnPct = null,Object? startTs = null,Object? endTs = null,}) {
  return _then(_self.copyWith(
startPrice: null == startPrice ? _self.startPrice : startPrice // ignore: cast_nullable_to_non_nullable
as double,endPrice: null == endPrice ? _self.endPrice : endPrice // ignore: cast_nullable_to_non_nullable
as double,returnValue: null == returnValue ? _self.returnValue : returnValue // ignore: cast_nullable_to_non_nullable
as double,returnPct: null == returnPct ? _self.returnPct : returnPct // ignore: cast_nullable_to_non_nullable
as double,startTs: null == startTs ? _self.startTs : startTs // ignore: cast_nullable_to_non_nullable
as int,endTs: null == endTs ? _self.endTs : endTs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryChangesEntity].
extension SummaryChangesEntityPatterns on SummaryChangesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryChangesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryChangesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryChangesEntity value)  $default,){
final _that = this;
switch (_that) {
case _SummaryChangesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryChangesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryChangesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'startPrice')  double startPrice, @JsonKey(name: 'endPrice')  double endPrice, @JsonKey(name: 'returnValue')  double returnValue, @JsonKey(name: 'returnPct')  double returnPct,  int startTs,  int endTs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryChangesEntity() when $default != null:
return $default(_that.startPrice,_that.endPrice,_that.returnValue,_that.returnPct,_that.startTs,_that.endTs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'startPrice')  double startPrice, @JsonKey(name: 'endPrice')  double endPrice, @JsonKey(name: 'returnValue')  double returnValue, @JsonKey(name: 'returnPct')  double returnPct,  int startTs,  int endTs)  $default,) {final _that = this;
switch (_that) {
case _SummaryChangesEntity():
return $default(_that.startPrice,_that.endPrice,_that.returnValue,_that.returnPct,_that.startTs,_that.endTs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'startPrice')  double startPrice, @JsonKey(name: 'endPrice')  double endPrice, @JsonKey(name: 'returnValue')  double returnValue, @JsonKey(name: 'returnPct')  double returnPct,  int startTs,  int endTs)?  $default,) {final _that = this;
switch (_that) {
case _SummaryChangesEntity() when $default != null:
return $default(_that.startPrice,_that.endPrice,_that.returnValue,_that.returnPct,_that.startTs,_that.endTs);case _:
  return null;

}
}

}

/// @nodoc


class _SummaryChangesEntity implements SummaryChangesEntity {
  const _SummaryChangesEntity({@JsonKey(name: 'startPrice') required this.startPrice, @JsonKey(name: 'endPrice') required this.endPrice, @JsonKey(name: 'returnValue') required this.returnValue, @JsonKey(name: 'returnPct') required this.returnPct, required this.startTs, required this.endTs});
  

@override@JsonKey(name: 'startPrice') final  double startPrice;
@override@JsonKey(name: 'endPrice') final  double endPrice;
@override@JsonKey(name: 'returnValue') final  double returnValue;
@override@JsonKey(name: 'returnPct') final  double returnPct;
@override final  int startTs;
@override final  int endTs;

/// Create a copy of SummaryChangesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryChangesEntityCopyWith<_SummaryChangesEntity> get copyWith => __$SummaryChangesEntityCopyWithImpl<_SummaryChangesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryChangesEntity&&(identical(other.startPrice, startPrice) || other.startPrice == startPrice)&&(identical(other.endPrice, endPrice) || other.endPrice == endPrice)&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct)&&(identical(other.startTs, startTs) || other.startTs == startTs)&&(identical(other.endTs, endTs) || other.endTs == endTs));
}


@override
int get hashCode => Object.hash(runtimeType,startPrice,endPrice,returnValue,returnPct,startTs,endTs);

@override
String toString() {
  return 'SummaryChangesEntity(startPrice: $startPrice, endPrice: $endPrice, returnValue: $returnValue, returnPct: $returnPct, startTs: $startTs, endTs: $endTs)';
}


}

/// @nodoc
abstract mixin class _$SummaryChangesEntityCopyWith<$Res> implements $SummaryChangesEntityCopyWith<$Res> {
  factory _$SummaryChangesEntityCopyWith(_SummaryChangesEntity value, $Res Function(_SummaryChangesEntity) _then) = __$SummaryChangesEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'startPrice') double startPrice,@JsonKey(name: 'endPrice') double endPrice,@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct, int startTs, int endTs
});




}
/// @nodoc
class __$SummaryChangesEntityCopyWithImpl<$Res>
    implements _$SummaryChangesEntityCopyWith<$Res> {
  __$SummaryChangesEntityCopyWithImpl(this._self, this._then);

  final _SummaryChangesEntity _self;
  final $Res Function(_SummaryChangesEntity) _then;

/// Create a copy of SummaryChangesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startPrice = null,Object? endPrice = null,Object? returnValue = null,Object? returnPct = null,Object? startTs = null,Object? endTs = null,}) {
  return _then(_SummaryChangesEntity(
startPrice: null == startPrice ? _self.startPrice : startPrice // ignore: cast_nullable_to_non_nullable
as double,endPrice: null == endPrice ? _self.endPrice : endPrice // ignore: cast_nullable_to_non_nullable
as double,returnValue: null == returnValue ? _self.returnValue : returnValue // ignore: cast_nullable_to_non_nullable
as double,returnPct: null == returnPct ? _self.returnPct : returnPct // ignore: cast_nullable_to_non_nullable
as double,startTs: null == startTs ? _self.startTs : startTs // ignore: cast_nullable_to_non_nullable
as int,endTs: null == endTs ? _self.endTs : endTs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SummaryTotalsEntity {

@JsonKey(name: 'returnValue') double get returnValue;@JsonKey(name: 'returnPct') double get returnPct;
/// Create a copy of SummaryTotalsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryTotalsEntityCopyWith<SummaryTotalsEntity> get copyWith => _$SummaryTotalsEntityCopyWithImpl<SummaryTotalsEntity>(this as SummaryTotalsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryTotalsEntity&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct));
}


@override
int get hashCode => Object.hash(runtimeType,returnValue,returnPct);

@override
String toString() {
  return 'SummaryTotalsEntity(returnValue: $returnValue, returnPct: $returnPct)';
}


}

/// @nodoc
abstract mixin class $SummaryTotalsEntityCopyWith<$Res>  {
  factory $SummaryTotalsEntityCopyWith(SummaryTotalsEntity value, $Res Function(SummaryTotalsEntity) _then) = _$SummaryTotalsEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct
});




}
/// @nodoc
class _$SummaryTotalsEntityCopyWithImpl<$Res>
    implements $SummaryTotalsEntityCopyWith<$Res> {
  _$SummaryTotalsEntityCopyWithImpl(this._self, this._then);

  final SummaryTotalsEntity _self;
  final $Res Function(SummaryTotalsEntity) _then;

/// Create a copy of SummaryTotalsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? returnValue = null,Object? returnPct = null,}) {
  return _then(_self.copyWith(
returnValue: null == returnValue ? _self.returnValue : returnValue // ignore: cast_nullable_to_non_nullable
as double,returnPct: null == returnPct ? _self.returnPct : returnPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryTotalsEntity].
extension SummaryTotalsEntityPatterns on SummaryTotalsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryTotalsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryTotalsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryTotalsEntity value)  $default,){
final _that = this;
switch (_that) {
case _SummaryTotalsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryTotalsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryTotalsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'returnValue')  double returnValue, @JsonKey(name: 'returnPct')  double returnPct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryTotalsEntity() when $default != null:
return $default(_that.returnValue,_that.returnPct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'returnValue')  double returnValue, @JsonKey(name: 'returnPct')  double returnPct)  $default,) {final _that = this;
switch (_that) {
case _SummaryTotalsEntity():
return $default(_that.returnValue,_that.returnPct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'returnValue')  double returnValue, @JsonKey(name: 'returnPct')  double returnPct)?  $default,) {final _that = this;
switch (_that) {
case _SummaryTotalsEntity() when $default != null:
return $default(_that.returnValue,_that.returnPct);case _:
  return null;

}
}

}

/// @nodoc


class _SummaryTotalsEntity implements SummaryTotalsEntity {
  const _SummaryTotalsEntity({@JsonKey(name: 'returnValue') required this.returnValue, @JsonKey(name: 'returnPct') required this.returnPct});
  

@override@JsonKey(name: 'returnValue') final  double returnValue;
@override@JsonKey(name: 'returnPct') final  double returnPct;

/// Create a copy of SummaryTotalsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryTotalsEntityCopyWith<_SummaryTotalsEntity> get copyWith => __$SummaryTotalsEntityCopyWithImpl<_SummaryTotalsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryTotalsEntity&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct));
}


@override
int get hashCode => Object.hash(runtimeType,returnValue,returnPct);

@override
String toString() {
  return 'SummaryTotalsEntity(returnValue: $returnValue, returnPct: $returnPct)';
}


}

/// @nodoc
abstract mixin class _$SummaryTotalsEntityCopyWith<$Res> implements $SummaryTotalsEntityCopyWith<$Res> {
  factory _$SummaryTotalsEntityCopyWith(_SummaryTotalsEntity value, $Res Function(_SummaryTotalsEntity) _then) = __$SummaryTotalsEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct
});




}
/// @nodoc
class __$SummaryTotalsEntityCopyWithImpl<$Res>
    implements _$SummaryTotalsEntityCopyWith<$Res> {
  __$SummaryTotalsEntityCopyWithImpl(this._self, this._then);

  final _SummaryTotalsEntity _self;
  final $Res Function(_SummaryTotalsEntity) _then;

/// Create a copy of SummaryTotalsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? returnValue = null,Object? returnPct = null,}) {
  return _then(_SummaryTotalsEntity(
returnValue: null == returnValue ? _self.returnValue : returnValue // ignore: cast_nullable_to_non_nullable
as double,returnPct: null == returnPct ? _self.returnPct : returnPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$SummaryMetaEntity {

 String get range;@JsonKey(name: 'validRanges') List<String> get validRanges;@JsonKey(name: 'fiftyTwoWeekLow') double get fiftyTwoWeekLow;@JsonKey(name: 'fiftyTwoWeekHigh') double get fiftyTwoWeekHigh;@JsonKey(name: 'volatilityRange') double get volatilityRange;@JsonKey(name: 'volatilityPct') double get volatilityPct; List<String> get currencies; List<String> get exchanges; List<String> get types;
/// Create a copy of SummaryMetaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryMetaEntityCopyWith<SummaryMetaEntity> get copyWith => _$SummaryMetaEntityCopyWithImpl<SummaryMetaEntity>(this as SummaryMetaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryMetaEntity&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other.validRanges, validRanges)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other.currencies, currencies)&&const DeepCollectionEquality().equals(other.exchanges, exchanges)&&const DeepCollectionEquality().equals(other.types, types));
}


@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(validRanges),fiftyTwoWeekLow,fiftyTwoWeekHigh,volatilityRange,volatilityPct,const DeepCollectionEquality().hash(currencies),const DeepCollectionEquality().hash(exchanges),const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'SummaryMetaEntity(range: $range, validRanges: $validRanges, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, currencies: $currencies, exchanges: $exchanges, types: $types)';
}


}

/// @nodoc
abstract mixin class $SummaryMetaEntityCopyWith<$Res>  {
  factory $SummaryMetaEntityCopyWith(SummaryMetaEntity value, $Res Function(SummaryMetaEntity) _then) = _$SummaryMetaEntityCopyWithImpl;
@useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, List<String> currencies, List<String> exchanges, List<String> types
});




}
/// @nodoc
class _$SummaryMetaEntityCopyWithImpl<$Res>
    implements $SummaryMetaEntityCopyWith<$Res> {
  _$SummaryMetaEntityCopyWithImpl(this._self, this._then);

  final SummaryMetaEntity _self;
  final $Res Function(SummaryMetaEntity) _then;

/// Create a copy of SummaryMetaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? range = null,Object? validRanges = null,Object? fiftyTwoWeekLow = null,Object? fiftyTwoWeekHigh = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? currencies = null,Object? exchanges = null,Object? types = null,}) {
  return _then(_self.copyWith(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String,validRanges: null == validRanges ? _self.validRanges : validRanges // ignore: cast_nullable_to_non_nullable
as List<String>,fiftyTwoWeekLow: null == fiftyTwoWeekLow ? _self.fiftyTwoWeekLow : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekHigh: null == fiftyTwoWeekHigh ? _self.fiftyTwoWeekHigh : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<String>,exchanges: null == exchanges ? _self.exchanges : exchanges // ignore: cast_nullable_to_non_nullable
as List<String>,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryMetaEntity].
extension SummaryMetaEntityPatterns on SummaryMetaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryMetaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryMetaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryMetaEntity value)  $default,){
final _that = this;
switch (_that) {
case _SummaryMetaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryMetaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryMetaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  List<String> currencies,  List<String> exchanges,  List<String> types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryMetaEntity() when $default != null:
return $default(_that.range,_that.validRanges,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh,_that.volatilityRange,_that.volatilityPct,_that.currencies,_that.exchanges,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  List<String> currencies,  List<String> exchanges,  List<String> types)  $default,) {final _that = this;
switch (_that) {
case _SummaryMetaEntity():
return $default(_that.range,_that.validRanges,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh,_that.volatilityRange,_that.volatilityPct,_that.currencies,_that.exchanges,_that.types);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  List<String> currencies,  List<String> exchanges,  List<String> types)?  $default,) {final _that = this;
switch (_that) {
case _SummaryMetaEntity() when $default != null:
return $default(_that.range,_that.validRanges,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh,_that.volatilityRange,_that.volatilityPct,_that.currencies,_that.exchanges,_that.types);case _:
  return null;

}
}

}

/// @nodoc


class _SummaryMetaEntity implements SummaryMetaEntity {
  const _SummaryMetaEntity({required this.range, @JsonKey(name: 'validRanges') required final  List<String> validRanges, @JsonKey(name: 'fiftyTwoWeekLow') required this.fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh') required this.fiftyTwoWeekHigh, @JsonKey(name: 'volatilityRange') required this.volatilityRange, @JsonKey(name: 'volatilityPct') required this.volatilityPct, required final  List<String> currencies, required final  List<String> exchanges, required final  List<String> types}): _validRanges = validRanges,_currencies = currencies,_exchanges = exchanges,_types = types;
  

@override final  String range;
 final  List<String> _validRanges;
@override@JsonKey(name: 'validRanges') List<String> get validRanges {
  if (_validRanges is EqualUnmodifiableListView) return _validRanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_validRanges);
}

@override@JsonKey(name: 'fiftyTwoWeekLow') final  double fiftyTwoWeekLow;
@override@JsonKey(name: 'fiftyTwoWeekHigh') final  double fiftyTwoWeekHigh;
@override@JsonKey(name: 'volatilityRange') final  double volatilityRange;
@override@JsonKey(name: 'volatilityPct') final  double volatilityPct;
 final  List<String> _currencies;
@override List<String> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}

 final  List<String> _exchanges;
@override List<String> get exchanges {
  if (_exchanges is EqualUnmodifiableListView) return _exchanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exchanges);
}

 final  List<String> _types;
@override List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of SummaryMetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryMetaEntityCopyWith<_SummaryMetaEntity> get copyWith => __$SummaryMetaEntityCopyWithImpl<_SummaryMetaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryMetaEntity&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other._validRanges, _validRanges)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&const DeepCollectionEquality().equals(other._exchanges, _exchanges)&&const DeepCollectionEquality().equals(other._types, _types));
}


@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(_validRanges),fiftyTwoWeekLow,fiftyTwoWeekHigh,volatilityRange,volatilityPct,const DeepCollectionEquality().hash(_currencies),const DeepCollectionEquality().hash(_exchanges),const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'SummaryMetaEntity(range: $range, validRanges: $validRanges, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, currencies: $currencies, exchanges: $exchanges, types: $types)';
}


}

/// @nodoc
abstract mixin class _$SummaryMetaEntityCopyWith<$Res> implements $SummaryMetaEntityCopyWith<$Res> {
  factory _$SummaryMetaEntityCopyWith(_SummaryMetaEntity value, $Res Function(_SummaryMetaEntity) _then) = __$SummaryMetaEntityCopyWithImpl;
@override @useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, List<String> currencies, List<String> exchanges, List<String> types
});




}
/// @nodoc
class __$SummaryMetaEntityCopyWithImpl<$Res>
    implements _$SummaryMetaEntityCopyWith<$Res> {
  __$SummaryMetaEntityCopyWithImpl(this._self, this._then);

  final _SummaryMetaEntity _self;
  final $Res Function(_SummaryMetaEntity) _then;

/// Create a copy of SummaryMetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = null,Object? validRanges = null,Object? fiftyTwoWeekLow = null,Object? fiftyTwoWeekHigh = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? currencies = null,Object? exchanges = null,Object? types = null,}) {
  return _then(_SummaryMetaEntity(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String,validRanges: null == validRanges ? _self._validRanges : validRanges // ignore: cast_nullable_to_non_nullable
as List<String>,fiftyTwoWeekLow: null == fiftyTwoWeekLow ? _self.fiftyTwoWeekLow : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekHigh: null == fiftyTwoWeekHigh ? _self.fiftyTwoWeekHigh : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<String>,exchanges: null == exchanges ? _self._exchanges : exchanges // ignore: cast_nullable_to_non_nullable
as List<String>,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$SummaryEntity {

 int get numPortfolios; SummaryMetaEntity get meta; List<SummaryChartEntity> get chart; Map<String, List<SummaryChartEntity>> get multiChart; SummaryChangesEntity get changes; SummaryTotalsEntity get totals; double get invested;@JsonKey(name: 'realizedPnl') double get realizedPnl; double get breakEven;@JsonKey(name: 'fxImpact') double get fxImpact;
/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryEntityCopyWith<SummaryEntity> get copyWith => _$SummaryEntityCopyWithImpl<SummaryEntity>(this as SummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryEntity&&(identical(other.numPortfolios, numPortfolios) || other.numPortfolios == numPortfolios)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.chart, chart)&&const DeepCollectionEquality().equals(other.multiChart, multiChart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}


@override
int get hashCode => Object.hash(runtimeType,numPortfolios,meta,const DeepCollectionEquality().hash(chart),const DeepCollectionEquality().hash(multiChart),changes,totals,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'SummaryEntity(numPortfolios: $numPortfolios, meta: $meta, chart: $chart, multiChart: $multiChart, changes: $changes, totals: $totals, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class $SummaryEntityCopyWith<$Res>  {
  factory $SummaryEntityCopyWith(SummaryEntity value, $Res Function(SummaryEntity) _then) = _$SummaryEntityCopyWithImpl;
@useResult
$Res call({
 int numPortfolios, SummaryMetaEntity meta, List<SummaryChartEntity> chart, Map<String, List<SummaryChartEntity>> multiChart, SummaryChangesEntity changes, SummaryTotalsEntity totals, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact
});


$SummaryMetaEntityCopyWith<$Res> get meta;$SummaryChangesEntityCopyWith<$Res> get changes;$SummaryTotalsEntityCopyWith<$Res> get totals;

}
/// @nodoc
class _$SummaryEntityCopyWithImpl<$Res>
    implements $SummaryEntityCopyWith<$Res> {
  _$SummaryEntityCopyWithImpl(this._self, this._then);

  final SummaryEntity _self;
  final $Res Function(SummaryEntity) _then;

/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numPortfolios = null,Object? meta = null,Object? chart = null,Object? multiChart = null,Object? changes = null,Object? totals = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_self.copyWith(
numPortfolios: null == numPortfolios ? _self.numPortfolios : numPortfolios // ignore: cast_nullable_to_non_nullable
as int,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SummaryMetaEntity,chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<SummaryChartEntity>,multiChart: null == multiChart ? _self.multiChart : multiChart // ignore: cast_nullable_to_non_nullable
as Map<String, List<SummaryChartEntity>>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as SummaryChangesEntity,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as SummaryTotalsEntity,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryMetaEntityCopyWith<$Res> get meta {
  
  return $SummaryMetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryChangesEntityCopyWith<$Res> get changes {
  
  return $SummaryChangesEntityCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryTotalsEntityCopyWith<$Res> get totals {
  
  return $SummaryTotalsEntityCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [SummaryEntity].
extension SummaryEntityPatterns on SummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int numPortfolios,  SummaryMetaEntity meta,  List<SummaryChartEntity> chart,  Map<String, List<SummaryChartEntity>> multiChart,  SummaryChangesEntity changes,  SummaryTotalsEntity totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryEntity() when $default != null:
return $default(_that.numPortfolios,_that.meta,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int numPortfolios,  SummaryMetaEntity meta,  List<SummaryChartEntity> chart,  Map<String, List<SummaryChartEntity>> multiChart,  SummaryChangesEntity changes,  SummaryTotalsEntity totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)  $default,) {final _that = this;
switch (_that) {
case _SummaryEntity():
return $default(_that.numPortfolios,_that.meta,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int numPortfolios,  SummaryMetaEntity meta,  List<SummaryChartEntity> chart,  Map<String, List<SummaryChartEntity>> multiChart,  SummaryChangesEntity changes,  SummaryTotalsEntity totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)?  $default,) {final _that = this;
switch (_that) {
case _SummaryEntity() when $default != null:
return $default(_that.numPortfolios,_that.meta,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
  return null;

}
}

}

/// @nodoc


class _SummaryEntity implements SummaryEntity {
  const _SummaryEntity({required this.numPortfolios, required this.meta, required final  List<SummaryChartEntity> chart, required final  Map<String, List<SummaryChartEntity>> multiChart, required this.changes, required this.totals, required this.invested, @JsonKey(name: 'realizedPnl') required this.realizedPnl, required this.breakEven, @JsonKey(name: 'fxImpact') required this.fxImpact}): _chart = chart,_multiChart = multiChart;
  

@override final  int numPortfolios;
@override final  SummaryMetaEntity meta;
 final  List<SummaryChartEntity> _chart;
@override List<SummaryChartEntity> get chart {
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chart);
}

 final  Map<String, List<SummaryChartEntity>> _multiChart;
@override Map<String, List<SummaryChartEntity>> get multiChart {
  if (_multiChart is EqualUnmodifiableMapView) return _multiChart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_multiChart);
}

@override final  SummaryChangesEntity changes;
@override final  SummaryTotalsEntity totals;
@override final  double invested;
@override@JsonKey(name: 'realizedPnl') final  double realizedPnl;
@override final  double breakEven;
@override@JsonKey(name: 'fxImpact') final  double fxImpact;

/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryEntityCopyWith<_SummaryEntity> get copyWith => __$SummaryEntityCopyWithImpl<_SummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryEntity&&(identical(other.numPortfolios, numPortfolios) || other.numPortfolios == numPortfolios)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._chart, _chart)&&const DeepCollectionEquality().equals(other._multiChart, _multiChart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}


@override
int get hashCode => Object.hash(runtimeType,numPortfolios,meta,const DeepCollectionEquality().hash(_chart),const DeepCollectionEquality().hash(_multiChart),changes,totals,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'SummaryEntity(numPortfolios: $numPortfolios, meta: $meta, chart: $chart, multiChart: $multiChart, changes: $changes, totals: $totals, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class _$SummaryEntityCopyWith<$Res> implements $SummaryEntityCopyWith<$Res> {
  factory _$SummaryEntityCopyWith(_SummaryEntity value, $Res Function(_SummaryEntity) _then) = __$SummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int numPortfolios, SummaryMetaEntity meta, List<SummaryChartEntity> chart, Map<String, List<SummaryChartEntity>> multiChart, SummaryChangesEntity changes, SummaryTotalsEntity totals, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact
});


@override $SummaryMetaEntityCopyWith<$Res> get meta;@override $SummaryChangesEntityCopyWith<$Res> get changes;@override $SummaryTotalsEntityCopyWith<$Res> get totals;

}
/// @nodoc
class __$SummaryEntityCopyWithImpl<$Res>
    implements _$SummaryEntityCopyWith<$Res> {
  __$SummaryEntityCopyWithImpl(this._self, this._then);

  final _SummaryEntity _self;
  final $Res Function(_SummaryEntity) _then;

/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numPortfolios = null,Object? meta = null,Object? chart = null,Object? multiChart = null,Object? changes = null,Object? totals = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_SummaryEntity(
numPortfolios: null == numPortfolios ? _self.numPortfolios : numPortfolios // ignore: cast_nullable_to_non_nullable
as int,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SummaryMetaEntity,chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<SummaryChartEntity>,multiChart: null == multiChart ? _self._multiChart : multiChart // ignore: cast_nullable_to_non_nullable
as Map<String, List<SummaryChartEntity>>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as SummaryChangesEntity,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as SummaryTotalsEntity,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryMetaEntityCopyWith<$Res> get meta {
  
  return $SummaryMetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryChangesEntityCopyWith<$Res> get changes {
  
  return $SummaryChangesEntityCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryTotalsEntityCopyWith<$Res> get totals {
  
  return $SummaryTotalsEntityCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}

/// @nodoc
mixin _$PortfolioEntity {

 int get id;@JsonKey(name: 'user_id') int get userId; String get name; String get description;@JsonKey(name: 'num_assets') int get numAssets; String get created; String get modified; double? get weight; bool get domestic; List<SummaryChartEntity> get chart; Map<String, List<SummaryChartEntity>> get multiChart; SummaryChangesEntity get changes; SummaryTotalsEntity get totals; double get invested;@JsonKey(name: 'realizedPnl') double get realizedPnl; double get breakEven;@JsonKey(name: 'fxImpact') double get fxImpact;
/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioEntityCopyWith<PortfolioEntity> get copyWith => _$PortfolioEntityCopyWithImpl<PortfolioEntity>(this as PortfolioEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.numAssets, numAssets) || other.numAssets == numAssets)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.domestic, domestic) || other.domestic == domestic)&&const DeepCollectionEquality().equals(other.chart, chart)&&const DeepCollectionEquality().equals(other.multiChart, multiChart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,numAssets,created,modified,weight,domestic,const DeepCollectionEquality().hash(chart),const DeepCollectionEquality().hash(multiChart),changes,totals,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'PortfolioEntity(id: $id, userId: $userId, name: $name, description: $description, numAssets: $numAssets, created: $created, modified: $modified, weight: $weight, domestic: $domestic, chart: $chart, multiChart: $multiChart, changes: $changes, totals: $totals, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class $PortfolioEntityCopyWith<$Res>  {
  factory $PortfolioEntityCopyWith(PortfolioEntity value, $Res Function(PortfolioEntity) _then) = _$PortfolioEntityCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String name, String description,@JsonKey(name: 'num_assets') int numAssets, String created, String modified, double? weight, bool domestic, List<SummaryChartEntity> chart, Map<String, List<SummaryChartEntity>> multiChart, SummaryChangesEntity changes, SummaryTotalsEntity totals, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact
});


$SummaryChangesEntityCopyWith<$Res> get changes;$SummaryTotalsEntityCopyWith<$Res> get totals;

}
/// @nodoc
class _$PortfolioEntityCopyWithImpl<$Res>
    implements $PortfolioEntityCopyWith<$Res> {
  _$PortfolioEntityCopyWithImpl(this._self, this._then);

  final PortfolioEntity _self;
  final $Res Function(PortfolioEntity) _then;

/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = null,Object? numAssets = null,Object? created = null,Object? modified = null,Object? weight = freezed,Object? domestic = null,Object? chart = null,Object? multiChart = null,Object? changes = null,Object? totals = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,numAssets: null == numAssets ? _self.numAssets : numAssets // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,domestic: null == domestic ? _self.domestic : domestic // ignore: cast_nullable_to_non_nullable
as bool,chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<SummaryChartEntity>,multiChart: null == multiChart ? _self.multiChart : multiChart // ignore: cast_nullable_to_non_nullable
as Map<String, List<SummaryChartEntity>>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as SummaryChangesEntity,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as SummaryTotalsEntity,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryChangesEntityCopyWith<$Res> get changes {
  
  return $SummaryChangesEntityCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryTotalsEntityCopyWith<$Res> get totals {
  
  return $SummaryTotalsEntityCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  String created,  String modified,  double? weight,  bool domestic,  List<SummaryChartEntity> chart,  Map<String, List<SummaryChartEntity>> multiChart,  SummaryChangesEntity changes,  SummaryTotalsEntity totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioEntity() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.weight,_that.domestic,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  String created,  String modified,  double? weight,  bool domestic,  List<SummaryChartEntity> chart,  Map<String, List<SummaryChartEntity>> multiChart,  SummaryChangesEntity changes,  SummaryTotalsEntity totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)  $default,) {final _that = this;
switch (_that) {
case _PortfolioEntity():
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.weight,_that.domestic,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  String created,  String modified,  double? weight,  bool domestic,  List<SummaryChartEntity> chart,  Map<String, List<SummaryChartEntity>> multiChart,  SummaryChangesEntity changes,  SummaryTotalsEntity totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioEntity() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.weight,_that.domestic,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioEntity implements PortfolioEntity {
  const _PortfolioEntity({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.name, required this.description, @JsonKey(name: 'num_assets') required this.numAssets, required this.created, required this.modified, this.weight, required this.domestic, required final  List<SummaryChartEntity> chart, required final  Map<String, List<SummaryChartEntity>> multiChart, required this.changes, required this.totals, required this.invested, @JsonKey(name: 'realizedPnl') required this.realizedPnl, required this.breakEven, @JsonKey(name: 'fxImpact') required this.fxImpact}): _chart = chart,_multiChart = multiChart;
  

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  String name;
@override final  String description;
@override@JsonKey(name: 'num_assets') final  int numAssets;
@override final  String created;
@override final  String modified;
@override final  double? weight;
@override final  bool domestic;
 final  List<SummaryChartEntity> _chart;
@override List<SummaryChartEntity> get chart {
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chart);
}

 final  Map<String, List<SummaryChartEntity>> _multiChart;
@override Map<String, List<SummaryChartEntity>> get multiChart {
  if (_multiChart is EqualUnmodifiableMapView) return _multiChart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_multiChart);
}

@override final  SummaryChangesEntity changes;
@override final  SummaryTotalsEntity totals;
@override final  double invested;
@override@JsonKey(name: 'realizedPnl') final  double realizedPnl;
@override final  double breakEven;
@override@JsonKey(name: 'fxImpact') final  double fxImpact;

/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioEntityCopyWith<_PortfolioEntity> get copyWith => __$PortfolioEntityCopyWithImpl<_PortfolioEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.numAssets, numAssets) || other.numAssets == numAssets)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.domestic, domestic) || other.domestic == domestic)&&const DeepCollectionEquality().equals(other._chart, _chart)&&const DeepCollectionEquality().equals(other._multiChart, _multiChart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,numAssets,created,modified,weight,domestic,const DeepCollectionEquality().hash(_chart),const DeepCollectionEquality().hash(_multiChart),changes,totals,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'PortfolioEntity(id: $id, userId: $userId, name: $name, description: $description, numAssets: $numAssets, created: $created, modified: $modified, weight: $weight, domestic: $domestic, chart: $chart, multiChart: $multiChart, changes: $changes, totals: $totals, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class _$PortfolioEntityCopyWith<$Res> implements $PortfolioEntityCopyWith<$Res> {
  factory _$PortfolioEntityCopyWith(_PortfolioEntity value, $Res Function(_PortfolioEntity) _then) = __$PortfolioEntityCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String name, String description,@JsonKey(name: 'num_assets') int numAssets, String created, String modified, double? weight, bool domestic, List<SummaryChartEntity> chart, Map<String, List<SummaryChartEntity>> multiChart, SummaryChangesEntity changes, SummaryTotalsEntity totals, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact
});


@override $SummaryChangesEntityCopyWith<$Res> get changes;@override $SummaryTotalsEntityCopyWith<$Res> get totals;

}
/// @nodoc
class __$PortfolioEntityCopyWithImpl<$Res>
    implements _$PortfolioEntityCopyWith<$Res> {
  __$PortfolioEntityCopyWithImpl(this._self, this._then);

  final _PortfolioEntity _self;
  final $Res Function(_PortfolioEntity) _then;

/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = null,Object? numAssets = null,Object? created = null,Object? modified = null,Object? weight = freezed,Object? domestic = null,Object? chart = null,Object? multiChart = null,Object? changes = null,Object? totals = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_PortfolioEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,numAssets: null == numAssets ? _self.numAssets : numAssets // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,domestic: null == domestic ? _self.domestic : domestic // ignore: cast_nullable_to_non_nullable
as bool,chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<SummaryChartEntity>,multiChart: null == multiChart ? _self._multiChart : multiChart // ignore: cast_nullable_to_non_nullable
as Map<String, List<SummaryChartEntity>>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as SummaryChangesEntity,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as SummaryTotalsEntity,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryChangesEntityCopyWith<$Res> get changes {
  
  return $SummaryChangesEntityCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of PortfolioEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryTotalsEntityCopyWith<$Res> get totals {
  
  return $SummaryTotalsEntityCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}

// dart format on
