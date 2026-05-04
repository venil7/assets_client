// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PortfolioChartEntity {

 int get timestamp; double get price; int get volume;
/// Create a copy of PortfolioChartEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioChartEntityCopyWith<PortfolioChartEntity> get copyWith => _$PortfolioChartEntityCopyWithImpl<PortfolioChartEntity>(this as PortfolioChartEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioChartEntity&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume);

@override
String toString() {
  return 'PortfolioChartEntity(timestamp: $timestamp, price: $price, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $PortfolioChartEntityCopyWith<$Res>  {
  factory $PortfolioChartEntityCopyWith(PortfolioChartEntity value, $Res Function(PortfolioChartEntity) _then) = _$PortfolioChartEntityCopyWithImpl;
@useResult
$Res call({
 int timestamp, double price, int volume
});




}
/// @nodoc
class _$PortfolioChartEntityCopyWithImpl<$Res>
    implements $PortfolioChartEntityCopyWith<$Res> {
  _$PortfolioChartEntityCopyWithImpl(this._self, this._then);

  final PortfolioChartEntity _self;
  final $Res Function(PortfolioChartEntity) _then;

/// Create a copy of PortfolioChartEntity
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


/// Adds pattern-matching-related methods to [PortfolioChartEntity].
extension PortfolioChartEntityPatterns on PortfolioChartEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioChartEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioChartEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioChartEntity value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioChartEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioChartEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioChartEntity() when $default != null:
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
case _PortfolioChartEntity() when $default != null:
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
case _PortfolioChartEntity():
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
case _PortfolioChartEntity() when $default != null:
return $default(_that.timestamp,_that.price,_that.volume);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioChartEntity implements PortfolioChartEntity {
  const _PortfolioChartEntity({required this.timestamp, required this.price, required this.volume});
  

@override final  int timestamp;
@override final  double price;
@override final  int volume;

/// Create a copy of PortfolioChartEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioChartEntityCopyWith<_PortfolioChartEntity> get copyWith => __$PortfolioChartEntityCopyWithImpl<_PortfolioChartEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioChartEntity&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume);

@override
String toString() {
  return 'PortfolioChartEntity(timestamp: $timestamp, price: $price, volume: $volume)';
}


}

/// @nodoc
abstract mixin class _$PortfolioChartEntityCopyWith<$Res> implements $PortfolioChartEntityCopyWith<$Res> {
  factory _$PortfolioChartEntityCopyWith(_PortfolioChartEntity value, $Res Function(_PortfolioChartEntity) _then) = __$PortfolioChartEntityCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, double price, int volume
});




}
/// @nodoc
class __$PortfolioChartEntityCopyWithImpl<$Res>
    implements _$PortfolioChartEntityCopyWith<$Res> {
  __$PortfolioChartEntityCopyWithImpl(this._self, this._then);

  final _PortfolioChartEntity _self;
  final $Res Function(_PortfolioChartEntity) _then;

/// Create a copy of PortfolioChartEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? price = null,Object? volume = null,}) {
  return _then(_PortfolioChartEntity(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PortfolioMetaEntity {

 String get range;@JsonKey(name: 'validRanges') List<String> get validRanges;@JsonKey(name: 'fiftyTwoWeekLow') double get fiftyTwoWeekLow;@JsonKey(name: 'fiftyTwoWeekHigh') double get fiftyTwoWeekHigh;@JsonKey(name: 'volatilityRange') double get volatilityRange;@JsonKey(name: 'volatilityPct') double get volatilityPct; List<String> get currencies; List<String> get exchanges; List<String> get types;
/// Create a copy of PortfolioMetaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioMetaEntityCopyWith<PortfolioMetaEntity> get copyWith => _$PortfolioMetaEntityCopyWithImpl<PortfolioMetaEntity>(this as PortfolioMetaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioMetaEntity&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other.validRanges, validRanges)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other.currencies, currencies)&&const DeepCollectionEquality().equals(other.exchanges, exchanges)&&const DeepCollectionEquality().equals(other.types, types));
}


@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(validRanges),fiftyTwoWeekLow,fiftyTwoWeekHigh,volatilityRange,volatilityPct,const DeepCollectionEquality().hash(currencies),const DeepCollectionEquality().hash(exchanges),const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'PortfolioMetaEntity(range: $range, validRanges: $validRanges, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, currencies: $currencies, exchanges: $exchanges, types: $types)';
}


}

/// @nodoc
abstract mixin class $PortfolioMetaEntityCopyWith<$Res>  {
  factory $PortfolioMetaEntityCopyWith(PortfolioMetaEntity value, $Res Function(PortfolioMetaEntity) _then) = _$PortfolioMetaEntityCopyWithImpl;
@useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, List<String> currencies, List<String> exchanges, List<String> types
});




}
/// @nodoc
class _$PortfolioMetaEntityCopyWithImpl<$Res>
    implements $PortfolioMetaEntityCopyWith<$Res> {
  _$PortfolioMetaEntityCopyWithImpl(this._self, this._then);

  final PortfolioMetaEntity _self;
  final $Res Function(PortfolioMetaEntity) _then;

/// Create a copy of PortfolioMetaEntity
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


/// Adds pattern-matching-related methods to [PortfolioMetaEntity].
extension PortfolioMetaEntityPatterns on PortfolioMetaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioMetaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioMetaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioMetaEntity value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioMetaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioMetaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioMetaEntity() when $default != null:
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
case _PortfolioMetaEntity() when $default != null:
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
case _PortfolioMetaEntity():
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
case _PortfolioMetaEntity() when $default != null:
return $default(_that.range,_that.validRanges,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh,_that.volatilityRange,_that.volatilityPct,_that.currencies,_that.exchanges,_that.types);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioMetaEntity implements PortfolioMetaEntity {
  const _PortfolioMetaEntity({required this.range, @JsonKey(name: 'validRanges') required final  List<String> validRanges, @JsonKey(name: 'fiftyTwoWeekLow') required this.fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh') required this.fiftyTwoWeekHigh, @JsonKey(name: 'volatilityRange') required this.volatilityRange, @JsonKey(name: 'volatilityPct') required this.volatilityPct, required final  List<String> currencies, required final  List<String> exchanges, required final  List<String> types}): _validRanges = validRanges,_currencies = currencies,_exchanges = exchanges,_types = types;
  

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


/// Create a copy of PortfolioMetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioMetaEntityCopyWith<_PortfolioMetaEntity> get copyWith => __$PortfolioMetaEntityCopyWithImpl<_PortfolioMetaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioMetaEntity&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other._validRanges, _validRanges)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&const DeepCollectionEquality().equals(other._exchanges, _exchanges)&&const DeepCollectionEquality().equals(other._types, _types));
}


@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(_validRanges),fiftyTwoWeekLow,fiftyTwoWeekHigh,volatilityRange,volatilityPct,const DeepCollectionEquality().hash(_currencies),const DeepCollectionEquality().hash(_exchanges),const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'PortfolioMetaEntity(range: $range, validRanges: $validRanges, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, currencies: $currencies, exchanges: $exchanges, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PortfolioMetaEntityCopyWith<$Res> implements $PortfolioMetaEntityCopyWith<$Res> {
  factory _$PortfolioMetaEntityCopyWith(_PortfolioMetaEntity value, $Res Function(_PortfolioMetaEntity) _then) = __$PortfolioMetaEntityCopyWithImpl;
@override @useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, List<String> currencies, List<String> exchanges, List<String> types
});




}
/// @nodoc
class __$PortfolioMetaEntityCopyWithImpl<$Res>
    implements _$PortfolioMetaEntityCopyWith<$Res> {
  __$PortfolioMetaEntityCopyWithImpl(this._self, this._then);

  final _PortfolioMetaEntity _self;
  final $Res Function(_PortfolioMetaEntity) _then;

/// Create a copy of PortfolioMetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = null,Object? validRanges = null,Object? fiftyTwoWeekLow = null,Object? fiftyTwoWeekHigh = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? currencies = null,Object? exchanges = null,Object? types = null,}) {
  return _then(_PortfolioMetaEntity(
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
mixin _$PortfolioChangesEntity {

@JsonKey(name: 'startPrice') double get startPrice;@JsonKey(name: 'endPrice') double get endPrice;@JsonKey(name: 'returnValue') double get returnValue;@JsonKey(name: 'returnPct') double get returnPct; int get startTs; int get endTs;
/// Create a copy of PortfolioChangesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioChangesEntityCopyWith<PortfolioChangesEntity> get copyWith => _$PortfolioChangesEntityCopyWithImpl<PortfolioChangesEntity>(this as PortfolioChangesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioChangesEntity&&(identical(other.startPrice, startPrice) || other.startPrice == startPrice)&&(identical(other.endPrice, endPrice) || other.endPrice == endPrice)&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct)&&(identical(other.startTs, startTs) || other.startTs == startTs)&&(identical(other.endTs, endTs) || other.endTs == endTs));
}


@override
int get hashCode => Object.hash(runtimeType,startPrice,endPrice,returnValue,returnPct,startTs,endTs);

@override
String toString() {
  return 'PortfolioChangesEntity(startPrice: $startPrice, endPrice: $endPrice, returnValue: $returnValue, returnPct: $returnPct, startTs: $startTs, endTs: $endTs)';
}


}

/// @nodoc
abstract mixin class $PortfolioChangesEntityCopyWith<$Res>  {
  factory $PortfolioChangesEntityCopyWith(PortfolioChangesEntity value, $Res Function(PortfolioChangesEntity) _then) = _$PortfolioChangesEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'startPrice') double startPrice,@JsonKey(name: 'endPrice') double endPrice,@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct, int startTs, int endTs
});




}
/// @nodoc
class _$PortfolioChangesEntityCopyWithImpl<$Res>
    implements $PortfolioChangesEntityCopyWith<$Res> {
  _$PortfolioChangesEntityCopyWithImpl(this._self, this._then);

  final PortfolioChangesEntity _self;
  final $Res Function(PortfolioChangesEntity) _then;

/// Create a copy of PortfolioChangesEntity
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


/// Adds pattern-matching-related methods to [PortfolioChangesEntity].
extension PortfolioChangesEntityPatterns on PortfolioChangesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioChangesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioChangesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioChangesEntity value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioChangesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioChangesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioChangesEntity() when $default != null:
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
case _PortfolioChangesEntity() when $default != null:
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
case _PortfolioChangesEntity():
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
case _PortfolioChangesEntity() when $default != null:
return $default(_that.startPrice,_that.endPrice,_that.returnValue,_that.returnPct,_that.startTs,_that.endTs);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioChangesEntity implements PortfolioChangesEntity {
  const _PortfolioChangesEntity({@JsonKey(name: 'startPrice') required this.startPrice, @JsonKey(name: 'endPrice') required this.endPrice, @JsonKey(name: 'returnValue') required this.returnValue, @JsonKey(name: 'returnPct') required this.returnPct, required this.startTs, required this.endTs});
  

@override@JsonKey(name: 'startPrice') final  double startPrice;
@override@JsonKey(name: 'endPrice') final  double endPrice;
@override@JsonKey(name: 'returnValue') final  double returnValue;
@override@JsonKey(name: 'returnPct') final  double returnPct;
@override final  int startTs;
@override final  int endTs;

/// Create a copy of PortfolioChangesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioChangesEntityCopyWith<_PortfolioChangesEntity> get copyWith => __$PortfolioChangesEntityCopyWithImpl<_PortfolioChangesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioChangesEntity&&(identical(other.startPrice, startPrice) || other.startPrice == startPrice)&&(identical(other.endPrice, endPrice) || other.endPrice == endPrice)&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct)&&(identical(other.startTs, startTs) || other.startTs == startTs)&&(identical(other.endTs, endTs) || other.endTs == endTs));
}


@override
int get hashCode => Object.hash(runtimeType,startPrice,endPrice,returnValue,returnPct,startTs,endTs);

@override
String toString() {
  return 'PortfolioChangesEntity(startPrice: $startPrice, endPrice: $endPrice, returnValue: $returnValue, returnPct: $returnPct, startTs: $startTs, endTs: $endTs)';
}


}

/// @nodoc
abstract mixin class _$PortfolioChangesEntityCopyWith<$Res> implements $PortfolioChangesEntityCopyWith<$Res> {
  factory _$PortfolioChangesEntityCopyWith(_PortfolioChangesEntity value, $Res Function(_PortfolioChangesEntity) _then) = __$PortfolioChangesEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'startPrice') double startPrice,@JsonKey(name: 'endPrice') double endPrice,@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct, int startTs, int endTs
});




}
/// @nodoc
class __$PortfolioChangesEntityCopyWithImpl<$Res>
    implements _$PortfolioChangesEntityCopyWith<$Res> {
  __$PortfolioChangesEntityCopyWithImpl(this._self, this._then);

  final _PortfolioChangesEntity _self;
  final $Res Function(_PortfolioChangesEntity) _then;

/// Create a copy of PortfolioChangesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startPrice = null,Object? endPrice = null,Object? returnValue = null,Object? returnPct = null,Object? startTs = null,Object? endTs = null,}) {
  return _then(_PortfolioChangesEntity(
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
mixin _$PortfolioDetailEntity {

 int get id;@JsonKey(name: 'user_id') int get userId; String get name; String get description;@JsonKey(name: 'num_assets') int get numAssets; double get invested;@JsonKey(name: 'realizedPnl') double get realizedPnl; double get breakEven;@JsonKey(name: 'fxImpact') double get fxImpact; List<PortfolioChartEntity> get chart; PortfolioMetaEntity get meta; PortfolioChangesEntity get changes; double get totalReturnValue; double get totalReturnPct;
/// Create a copy of PortfolioDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioDetailEntityCopyWith<PortfolioDetailEntity> get copyWith => _$PortfolioDetailEntityCopyWithImpl<PortfolioDetailEntity>(this as PortfolioDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.numAssets, numAssets) || other.numAssets == numAssets)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact)&&const DeepCollectionEquality().equals(other.chart, chart)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totalReturnValue, totalReturnValue) || other.totalReturnValue == totalReturnValue)&&(identical(other.totalReturnPct, totalReturnPct) || other.totalReturnPct == totalReturnPct));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,numAssets,invested,realizedPnl,breakEven,fxImpact,const DeepCollectionEquality().hash(chart),meta,changes,totalReturnValue,totalReturnPct);

@override
String toString() {
  return 'PortfolioDetailEntity(id: $id, userId: $userId, name: $name, description: $description, numAssets: $numAssets, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact, chart: $chart, meta: $meta, changes: $changes, totalReturnValue: $totalReturnValue, totalReturnPct: $totalReturnPct)';
}


}

/// @nodoc
abstract mixin class $PortfolioDetailEntityCopyWith<$Res>  {
  factory $PortfolioDetailEntityCopyWith(PortfolioDetailEntity value, $Res Function(PortfolioDetailEntity) _then) = _$PortfolioDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String name, String description,@JsonKey(name: 'num_assets') int numAssets, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact, List<PortfolioChartEntity> chart, PortfolioMetaEntity meta, PortfolioChangesEntity changes, double totalReturnValue, double totalReturnPct
});


$PortfolioMetaEntityCopyWith<$Res> get meta;$PortfolioChangesEntityCopyWith<$Res> get changes;

}
/// @nodoc
class _$PortfolioDetailEntityCopyWithImpl<$Res>
    implements $PortfolioDetailEntityCopyWith<$Res> {
  _$PortfolioDetailEntityCopyWithImpl(this._self, this._then);

  final PortfolioDetailEntity _self;
  final $Res Function(PortfolioDetailEntity) _then;

/// Create a copy of PortfolioDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = null,Object? numAssets = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,Object? chart = null,Object? meta = null,Object? changes = null,Object? totalReturnValue = null,Object? totalReturnPct = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,numAssets: null == numAssets ? _self.numAssets : numAssets // ignore: cast_nullable_to_non_nullable
as int,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<PortfolioChartEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PortfolioMetaEntity,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as PortfolioChangesEntity,totalReturnValue: null == totalReturnValue ? _self.totalReturnValue : totalReturnValue // ignore: cast_nullable_to_non_nullable
as double,totalReturnPct: null == totalReturnPct ? _self.totalReturnPct : totalReturnPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of PortfolioDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioMetaEntityCopyWith<$Res> get meta {
  
  return $PortfolioMetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of PortfolioDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioChangesEntityCopyWith<$Res> get changes {
  
  return $PortfolioChangesEntityCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}
}


/// Adds pattern-matching-related methods to [PortfolioDetailEntity].
extension PortfolioDetailEntityPatterns on PortfolioDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact,  List<PortfolioChartEntity> chart,  PortfolioMetaEntity meta,  PortfolioChangesEntity changes,  double totalReturnValue,  double totalReturnPct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioDetailEntity() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact,_that.chart,_that.meta,_that.changes,_that.totalReturnValue,_that.totalReturnPct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact,  List<PortfolioChartEntity> chart,  PortfolioMetaEntity meta,  PortfolioChangesEntity changes,  double totalReturnValue,  double totalReturnPct)  $default,) {final _that = this;
switch (_that) {
case _PortfolioDetailEntity():
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact,_that.chart,_that.meta,_that.changes,_that.totalReturnValue,_that.totalReturnPct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact,  List<PortfolioChartEntity> chart,  PortfolioMetaEntity meta,  PortfolioChangesEntity changes,  double totalReturnValue,  double totalReturnPct)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioDetailEntity() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact,_that.chart,_that.meta,_that.changes,_that.totalReturnValue,_that.totalReturnPct);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioDetailEntity implements PortfolioDetailEntity {
  const _PortfolioDetailEntity({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.name, required this.description, @JsonKey(name: 'num_assets') required this.numAssets, required this.invested, @JsonKey(name: 'realizedPnl') required this.realizedPnl, required this.breakEven, @JsonKey(name: 'fxImpact') required this.fxImpact, required final  List<PortfolioChartEntity> chart, required this.meta, required this.changes, required this.totalReturnValue, required this.totalReturnPct}): _chart = chart;
  

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  String name;
@override final  String description;
@override@JsonKey(name: 'num_assets') final  int numAssets;
@override final  double invested;
@override@JsonKey(name: 'realizedPnl') final  double realizedPnl;
@override final  double breakEven;
@override@JsonKey(name: 'fxImpact') final  double fxImpact;
 final  List<PortfolioChartEntity> _chart;
@override List<PortfolioChartEntity> get chart {
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chart);
}

@override final  PortfolioMetaEntity meta;
@override final  PortfolioChangesEntity changes;
@override final  double totalReturnValue;
@override final  double totalReturnPct;

/// Create a copy of PortfolioDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioDetailEntityCopyWith<_PortfolioDetailEntity> get copyWith => __$PortfolioDetailEntityCopyWithImpl<_PortfolioDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.numAssets, numAssets) || other.numAssets == numAssets)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact)&&const DeepCollectionEquality().equals(other._chart, _chart)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totalReturnValue, totalReturnValue) || other.totalReturnValue == totalReturnValue)&&(identical(other.totalReturnPct, totalReturnPct) || other.totalReturnPct == totalReturnPct));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,numAssets,invested,realizedPnl,breakEven,fxImpact,const DeepCollectionEquality().hash(_chart),meta,changes,totalReturnValue,totalReturnPct);

@override
String toString() {
  return 'PortfolioDetailEntity(id: $id, userId: $userId, name: $name, description: $description, numAssets: $numAssets, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact, chart: $chart, meta: $meta, changes: $changes, totalReturnValue: $totalReturnValue, totalReturnPct: $totalReturnPct)';
}


}

/// @nodoc
abstract mixin class _$PortfolioDetailEntityCopyWith<$Res> implements $PortfolioDetailEntityCopyWith<$Res> {
  factory _$PortfolioDetailEntityCopyWith(_PortfolioDetailEntity value, $Res Function(_PortfolioDetailEntity) _then) = __$PortfolioDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String name, String description,@JsonKey(name: 'num_assets') int numAssets, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact, List<PortfolioChartEntity> chart, PortfolioMetaEntity meta, PortfolioChangesEntity changes, double totalReturnValue, double totalReturnPct
});


@override $PortfolioMetaEntityCopyWith<$Res> get meta;@override $PortfolioChangesEntityCopyWith<$Res> get changes;

}
/// @nodoc
class __$PortfolioDetailEntityCopyWithImpl<$Res>
    implements _$PortfolioDetailEntityCopyWith<$Res> {
  __$PortfolioDetailEntityCopyWithImpl(this._self, this._then);

  final _PortfolioDetailEntity _self;
  final $Res Function(_PortfolioDetailEntity) _then;

/// Create a copy of PortfolioDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = null,Object? numAssets = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,Object? chart = null,Object? meta = null,Object? changes = null,Object? totalReturnValue = null,Object? totalReturnPct = null,}) {
  return _then(_PortfolioDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,numAssets: null == numAssets ? _self.numAssets : numAssets // ignore: cast_nullable_to_non_nullable
as int,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<PortfolioChartEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PortfolioMetaEntity,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as PortfolioChangesEntity,totalReturnValue: null == totalReturnValue ? _self.totalReturnValue : totalReturnValue // ignore: cast_nullable_to_non_nullable
as double,totalReturnPct: null == totalReturnPct ? _self.totalReturnPct : totalReturnPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of PortfolioDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioMetaEntityCopyWith<$Res> get meta {
  
  return $PortfolioMetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of PortfolioDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioChangesEntityCopyWith<$Res> get changes {
  
  return $PortfolioChangesEntityCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}
}

// dart format on
