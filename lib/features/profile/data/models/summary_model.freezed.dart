// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SummaryMetaModel {

 String get range;@JsonKey(name: 'validRanges') List<String> get validRanges;@JsonKey(name: 'fiftyTwoWeekLow') double get fiftyTwoWeekLow;@JsonKey(name: 'fiftyTwoWeekHigh') double get fiftyTwoWeekHigh;@JsonKey(name: 'volatilityRange') double get volatilityRange;@JsonKey(name: 'volatilityPct') double get volatilityPct; List<String> get currencies; List<String> get exchanges; List<String> get types;
/// Create a copy of SummaryMetaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryMetaModelCopyWith<SummaryMetaModel> get copyWith => _$SummaryMetaModelCopyWithImpl<SummaryMetaModel>(this as SummaryMetaModel, _$identity);

  /// Serializes this SummaryMetaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryMetaModel&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other.validRanges, validRanges)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other.currencies, currencies)&&const DeepCollectionEquality().equals(other.exchanges, exchanges)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(validRanges),fiftyTwoWeekLow,fiftyTwoWeekHigh,volatilityRange,volatilityPct,const DeepCollectionEquality().hash(currencies),const DeepCollectionEquality().hash(exchanges),const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'SummaryMetaModel(range: $range, validRanges: $validRanges, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, currencies: $currencies, exchanges: $exchanges, types: $types)';
}


}

/// @nodoc
abstract mixin class $SummaryMetaModelCopyWith<$Res>  {
  factory $SummaryMetaModelCopyWith(SummaryMetaModel value, $Res Function(SummaryMetaModel) _then) = _$SummaryMetaModelCopyWithImpl;
@useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, List<String> currencies, List<String> exchanges, List<String> types
});




}
/// @nodoc
class _$SummaryMetaModelCopyWithImpl<$Res>
    implements $SummaryMetaModelCopyWith<$Res> {
  _$SummaryMetaModelCopyWithImpl(this._self, this._then);

  final SummaryMetaModel _self;
  final $Res Function(SummaryMetaModel) _then;

/// Create a copy of SummaryMetaModel
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


/// Adds pattern-matching-related methods to [SummaryMetaModel].
extension SummaryMetaModelPatterns on SummaryMetaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryMetaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryMetaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryMetaModel value)  $default,){
final _that = this;
switch (_that) {
case _SummaryMetaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryMetaModel value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryMetaModel() when $default != null:
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
case _SummaryMetaModel() when $default != null:
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
case _SummaryMetaModel():
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
case _SummaryMetaModel() when $default != null:
return $default(_that.range,_that.validRanges,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh,_that.volatilityRange,_that.volatilityPct,_that.currencies,_that.exchanges,_that.types);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SummaryMetaModel implements SummaryMetaModel {
  const _SummaryMetaModel({required this.range, @JsonKey(name: 'validRanges') required final  List<String> validRanges, @JsonKey(name: 'fiftyTwoWeekLow') required this.fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh') required this.fiftyTwoWeekHigh, @JsonKey(name: 'volatilityRange') required this.volatilityRange, @JsonKey(name: 'volatilityPct') required this.volatilityPct, required final  List<String> currencies, required final  List<String> exchanges, required final  List<String> types}): _validRanges = validRanges,_currencies = currencies,_exchanges = exchanges,_types = types;
  factory _SummaryMetaModel.fromJson(Map<String, dynamic> json) => _$SummaryMetaModelFromJson(json);

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


/// Create a copy of SummaryMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryMetaModelCopyWith<_SummaryMetaModel> get copyWith => __$SummaryMetaModelCopyWithImpl<_SummaryMetaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryMetaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryMetaModel&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other._validRanges, _validRanges)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&const DeepCollectionEquality().equals(other._exchanges, _exchanges)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(_validRanges),fiftyTwoWeekLow,fiftyTwoWeekHigh,volatilityRange,volatilityPct,const DeepCollectionEquality().hash(_currencies),const DeepCollectionEquality().hash(_exchanges),const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'SummaryMetaModel(range: $range, validRanges: $validRanges, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, currencies: $currencies, exchanges: $exchanges, types: $types)';
}


}

/// @nodoc
abstract mixin class _$SummaryMetaModelCopyWith<$Res> implements $SummaryMetaModelCopyWith<$Res> {
  factory _$SummaryMetaModelCopyWith(_SummaryMetaModel value, $Res Function(_SummaryMetaModel) _then) = __$SummaryMetaModelCopyWithImpl;
@override @useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, List<String> currencies, List<String> exchanges, List<String> types
});




}
/// @nodoc
class __$SummaryMetaModelCopyWithImpl<$Res>
    implements _$SummaryMetaModelCopyWith<$Res> {
  __$SummaryMetaModelCopyWithImpl(this._self, this._then);

  final _SummaryMetaModel _self;
  final $Res Function(_SummaryMetaModel) _then;

/// Create a copy of SummaryMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = null,Object? validRanges = null,Object? fiftyTwoWeekLow = null,Object? fiftyTwoWeekHigh = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? currencies = null,Object? exchanges = null,Object? types = null,}) {
  return _then(_SummaryMetaModel(
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
mixin _$ChartDataModel {

 int get timestamp; double get price; int get volume; dynamic get tx;
/// Create a copy of ChartDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartDataModelCopyWith<ChartDataModel> get copyWith => _$ChartDataModelCopyWithImpl<ChartDataModel>(this as ChartDataModel, _$identity);

  /// Serializes this ChartDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartDataModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume)&&const DeepCollectionEquality().equals(other.tx, tx));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume,const DeepCollectionEquality().hash(tx));

@override
String toString() {
  return 'ChartDataModel(timestamp: $timestamp, price: $price, volume: $volume, tx: $tx)';
}


}

/// @nodoc
abstract mixin class $ChartDataModelCopyWith<$Res>  {
  factory $ChartDataModelCopyWith(ChartDataModel value, $Res Function(ChartDataModel) _then) = _$ChartDataModelCopyWithImpl;
@useResult
$Res call({
 int timestamp, double price, int volume, dynamic tx
});




}
/// @nodoc
class _$ChartDataModelCopyWithImpl<$Res>
    implements $ChartDataModelCopyWith<$Res> {
  _$ChartDataModelCopyWithImpl(this._self, this._then);

  final ChartDataModel _self;
  final $Res Function(ChartDataModel) _then;

/// Create a copy of ChartDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? price = null,Object? volume = null,Object? tx = freezed,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,tx: freezed == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartDataModel].
extension ChartDataModelPatterns on ChartDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ChartDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChartDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int timestamp,  double price,  int volume,  dynamic tx)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartDataModel() when $default != null:
return $default(_that.timestamp,_that.price,_that.volume,_that.tx);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int timestamp,  double price,  int volume,  dynamic tx)  $default,) {final _that = this;
switch (_that) {
case _ChartDataModel():
return $default(_that.timestamp,_that.price,_that.volume,_that.tx);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int timestamp,  double price,  int volume,  dynamic tx)?  $default,) {final _that = this;
switch (_that) {
case _ChartDataModel() when $default != null:
return $default(_that.timestamp,_that.price,_that.volume,_that.tx);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartDataModel implements ChartDataModel {
  const _ChartDataModel({required this.timestamp, required this.price, required this.volume, this.tx});
  factory _ChartDataModel.fromJson(Map<String, dynamic> json) => _$ChartDataModelFromJson(json);

@override final  int timestamp;
@override final  double price;
@override final  int volume;
@override final  dynamic tx;

/// Create a copy of ChartDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartDataModelCopyWith<_ChartDataModel> get copyWith => __$ChartDataModelCopyWithImpl<_ChartDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChartDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartDataModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume)&&const DeepCollectionEquality().equals(other.tx, tx));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume,const DeepCollectionEquality().hash(tx));

@override
String toString() {
  return 'ChartDataModel(timestamp: $timestamp, price: $price, volume: $volume, tx: $tx)';
}


}

/// @nodoc
abstract mixin class _$ChartDataModelCopyWith<$Res> implements $ChartDataModelCopyWith<$Res> {
  factory _$ChartDataModelCopyWith(_ChartDataModel value, $Res Function(_ChartDataModel) _then) = __$ChartDataModelCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, double price, int volume, dynamic tx
});




}
/// @nodoc
class __$ChartDataModelCopyWithImpl<$Res>
    implements _$ChartDataModelCopyWith<$Res> {
  __$ChartDataModelCopyWithImpl(this._self, this._then);

  final _ChartDataModel _self;
  final $Res Function(_ChartDataModel) _then;

/// Create a copy of ChartDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? price = null,Object? volume = null,Object? tx = freezed,}) {
  return _then(_ChartDataModel(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,tx: freezed == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$ChangesModel {

@JsonKey(name: 'startPrice') double get startPrice;@JsonKey(name: 'endPrice') double get endPrice;@JsonKey(name: 'returnValue') double get returnValue;@JsonKey(name: 'returnPct') double get returnPct; int get startTs; int get endTs;
/// Create a copy of ChangesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<ChangesModel> get copyWith => _$ChangesModelCopyWithImpl<ChangesModel>(this as ChangesModel, _$identity);

  /// Serializes this ChangesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangesModel&&(identical(other.startPrice, startPrice) || other.startPrice == startPrice)&&(identical(other.endPrice, endPrice) || other.endPrice == endPrice)&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct)&&(identical(other.startTs, startTs) || other.startTs == startTs)&&(identical(other.endTs, endTs) || other.endTs == endTs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startPrice,endPrice,returnValue,returnPct,startTs,endTs);

@override
String toString() {
  return 'ChangesModel(startPrice: $startPrice, endPrice: $endPrice, returnValue: $returnValue, returnPct: $returnPct, startTs: $startTs, endTs: $endTs)';
}


}

/// @nodoc
abstract mixin class $ChangesModelCopyWith<$Res>  {
  factory $ChangesModelCopyWith(ChangesModel value, $Res Function(ChangesModel) _then) = _$ChangesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'startPrice') double startPrice,@JsonKey(name: 'endPrice') double endPrice,@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct, int startTs, int endTs
});




}
/// @nodoc
class _$ChangesModelCopyWithImpl<$Res>
    implements $ChangesModelCopyWith<$Res> {
  _$ChangesModelCopyWithImpl(this._self, this._then);

  final ChangesModel _self;
  final $Res Function(ChangesModel) _then;

/// Create a copy of ChangesModel
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


/// Adds pattern-matching-related methods to [ChangesModel].
extension ChangesModelPatterns on ChangesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangesModel value)  $default,){
final _that = this;
switch (_that) {
case _ChangesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangesModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChangesModel() when $default != null:
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
case _ChangesModel() when $default != null:
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
case _ChangesModel():
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
case _ChangesModel() when $default != null:
return $default(_that.startPrice,_that.endPrice,_that.returnValue,_that.returnPct,_that.startTs,_that.endTs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangesModel implements ChangesModel {
  const _ChangesModel({@JsonKey(name: 'startPrice') required this.startPrice, @JsonKey(name: 'endPrice') required this.endPrice, @JsonKey(name: 'returnValue') required this.returnValue, @JsonKey(name: 'returnPct') required this.returnPct, required this.startTs, required this.endTs});
  factory _ChangesModel.fromJson(Map<String, dynamic> json) => _$ChangesModelFromJson(json);

@override@JsonKey(name: 'startPrice') final  double startPrice;
@override@JsonKey(name: 'endPrice') final  double endPrice;
@override@JsonKey(name: 'returnValue') final  double returnValue;
@override@JsonKey(name: 'returnPct') final  double returnPct;
@override final  int startTs;
@override final  int endTs;

/// Create a copy of ChangesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangesModelCopyWith<_ChangesModel> get copyWith => __$ChangesModelCopyWithImpl<_ChangesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangesModel&&(identical(other.startPrice, startPrice) || other.startPrice == startPrice)&&(identical(other.endPrice, endPrice) || other.endPrice == endPrice)&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct)&&(identical(other.startTs, startTs) || other.startTs == startTs)&&(identical(other.endTs, endTs) || other.endTs == endTs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startPrice,endPrice,returnValue,returnPct,startTs,endTs);

@override
String toString() {
  return 'ChangesModel(startPrice: $startPrice, endPrice: $endPrice, returnValue: $returnValue, returnPct: $returnPct, startTs: $startTs, endTs: $endTs)';
}


}

/// @nodoc
abstract mixin class _$ChangesModelCopyWith<$Res> implements $ChangesModelCopyWith<$Res> {
  factory _$ChangesModelCopyWith(_ChangesModel value, $Res Function(_ChangesModel) _then) = __$ChangesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'startPrice') double startPrice,@JsonKey(name: 'endPrice') double endPrice,@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct, int startTs, int endTs
});




}
/// @nodoc
class __$ChangesModelCopyWithImpl<$Res>
    implements _$ChangesModelCopyWith<$Res> {
  __$ChangesModelCopyWithImpl(this._self, this._then);

  final _ChangesModel _self;
  final $Res Function(_ChangesModel) _then;

/// Create a copy of ChangesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startPrice = null,Object? endPrice = null,Object? returnValue = null,Object? returnPct = null,Object? startTs = null,Object? endTs = null,}) {
  return _then(_ChangesModel(
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
mixin _$TotalsModel {

@JsonKey(name: 'returnValue') double get returnValue;@JsonKey(name: 'returnPct') double get returnPct;
/// Create a copy of TotalsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TotalsModelCopyWith<TotalsModel> get copyWith => _$TotalsModelCopyWithImpl<TotalsModel>(this as TotalsModel, _$identity);

  /// Serializes this TotalsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TotalsModel&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,returnValue,returnPct);

@override
String toString() {
  return 'TotalsModel(returnValue: $returnValue, returnPct: $returnPct)';
}


}

/// @nodoc
abstract mixin class $TotalsModelCopyWith<$Res>  {
  factory $TotalsModelCopyWith(TotalsModel value, $Res Function(TotalsModel) _then) = _$TotalsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct
});




}
/// @nodoc
class _$TotalsModelCopyWithImpl<$Res>
    implements $TotalsModelCopyWith<$Res> {
  _$TotalsModelCopyWithImpl(this._self, this._then);

  final TotalsModel _self;
  final $Res Function(TotalsModel) _then;

/// Create a copy of TotalsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? returnValue = null,Object? returnPct = null,}) {
  return _then(_self.copyWith(
returnValue: null == returnValue ? _self.returnValue : returnValue // ignore: cast_nullable_to_non_nullable
as double,returnPct: null == returnPct ? _self.returnPct : returnPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TotalsModel].
extension TotalsModelPatterns on TotalsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TotalsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TotalsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TotalsModel value)  $default,){
final _that = this;
switch (_that) {
case _TotalsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TotalsModel value)?  $default,){
final _that = this;
switch (_that) {
case _TotalsModel() when $default != null:
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
case _TotalsModel() when $default != null:
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
case _TotalsModel():
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
case _TotalsModel() when $default != null:
return $default(_that.returnValue,_that.returnPct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TotalsModel implements TotalsModel {
  const _TotalsModel({@JsonKey(name: 'returnValue') required this.returnValue, @JsonKey(name: 'returnPct') required this.returnPct});
  factory _TotalsModel.fromJson(Map<String, dynamic> json) => _$TotalsModelFromJson(json);

@override@JsonKey(name: 'returnValue') final  double returnValue;
@override@JsonKey(name: 'returnPct') final  double returnPct;

/// Create a copy of TotalsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TotalsModelCopyWith<_TotalsModel> get copyWith => __$TotalsModelCopyWithImpl<_TotalsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TotalsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TotalsModel&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,returnValue,returnPct);

@override
String toString() {
  return 'TotalsModel(returnValue: $returnValue, returnPct: $returnPct)';
}


}

/// @nodoc
abstract mixin class _$TotalsModelCopyWith<$Res> implements $TotalsModelCopyWith<$Res> {
  factory _$TotalsModelCopyWith(_TotalsModel value, $Res Function(_TotalsModel) _then) = __$TotalsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'returnValue') double returnValue,@JsonKey(name: 'returnPct') double returnPct
});




}
/// @nodoc
class __$TotalsModelCopyWithImpl<$Res>
    implements _$TotalsModelCopyWith<$Res> {
  __$TotalsModelCopyWithImpl(this._self, this._then);

  final _TotalsModel _self;
  final $Res Function(_TotalsModel) _then;

/// Create a copy of TotalsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? returnValue = null,Object? returnPct = null,}) {
  return _then(_TotalsModel(
returnValue: null == returnValue ? _self.returnValue : returnValue // ignore: cast_nullable_to_non_nullable
as double,returnPct: null == returnPct ? _self.returnPct : returnPct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$SummaryModel {

 int get numPortfolios; SummaryMetaModel get meta; List<ChartDataModel> get chart; Map<String, List<ChartDataModel>> get multiChart; ChangesModel get changes; TotalsModel get totals; double get invested;@JsonKey(name: 'realizedPnl') double get realizedPnl; double get breakEven;@JsonKey(name: 'fxImpact') double get fxImpact;
/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryModelCopyWith<SummaryModel> get copyWith => _$SummaryModelCopyWithImpl<SummaryModel>(this as SummaryModel, _$identity);

  /// Serializes this SummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryModel&&(identical(other.numPortfolios, numPortfolios) || other.numPortfolios == numPortfolios)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.chart, chart)&&const DeepCollectionEquality().equals(other.multiChart, multiChart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,numPortfolios,meta,const DeepCollectionEquality().hash(chart),const DeepCollectionEquality().hash(multiChart),changes,totals,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'SummaryModel(numPortfolios: $numPortfolios, meta: $meta, chart: $chart, multiChart: $multiChart, changes: $changes, totals: $totals, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class $SummaryModelCopyWith<$Res>  {
  factory $SummaryModelCopyWith(SummaryModel value, $Res Function(SummaryModel) _then) = _$SummaryModelCopyWithImpl;
@useResult
$Res call({
 int numPortfolios, SummaryMetaModel meta, List<ChartDataModel> chart, Map<String, List<ChartDataModel>> multiChart, ChangesModel changes, TotalsModel totals, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact
});


$SummaryMetaModelCopyWith<$Res> get meta;$ChangesModelCopyWith<$Res> get changes;$TotalsModelCopyWith<$Res> get totals;

}
/// @nodoc
class _$SummaryModelCopyWithImpl<$Res>
    implements $SummaryModelCopyWith<$Res> {
  _$SummaryModelCopyWithImpl(this._self, this._then);

  final SummaryModel _self;
  final $Res Function(SummaryModel) _then;

/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numPortfolios = null,Object? meta = null,Object? chart = null,Object? multiChart = null,Object? changes = null,Object? totals = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_self.copyWith(
numPortfolios: null == numPortfolios ? _self.numPortfolios : numPortfolios // ignore: cast_nullable_to_non_nullable
as int,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SummaryMetaModel,chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartDataModel>,multiChart: null == multiChart ? _self.multiChart : multiChart // ignore: cast_nullable_to_non_nullable
as Map<String, List<ChartDataModel>>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as ChangesModel,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as TotalsModel,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryMetaModelCopyWith<$Res> get meta {
  
  return $SummaryMetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<$Res> get changes {
  
  return $ChangesModelCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalsModelCopyWith<$Res> get totals {
  
  return $TotalsModelCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [SummaryModel].
extension SummaryModelPatterns on SummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _SummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int numPortfolios,  SummaryMetaModel meta,  List<ChartDataModel> chart,  Map<String, List<ChartDataModel>> multiChart,  ChangesModel changes,  TotalsModel totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int numPortfolios,  SummaryMetaModel meta,  List<ChartDataModel> chart,  Map<String, List<ChartDataModel>> multiChart,  ChangesModel changes,  TotalsModel totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)  $default,) {final _that = this;
switch (_that) {
case _SummaryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int numPortfolios,  SummaryMetaModel meta,  List<ChartDataModel> chart,  Map<String, List<ChartDataModel>> multiChart,  ChangesModel changes,  TotalsModel totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)?  $default,) {final _that = this;
switch (_that) {
case _SummaryModel() when $default != null:
return $default(_that.numPortfolios,_that.meta,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SummaryModel implements SummaryModel {
  const _SummaryModel({required this.numPortfolios, required this.meta, required final  List<ChartDataModel> chart, required final  Map<String, List<ChartDataModel>> multiChart, required this.changes, required this.totals, required this.invested, @JsonKey(name: 'realizedPnl') required this.realizedPnl, required this.breakEven, @JsonKey(name: 'fxImpact') required this.fxImpact}): _chart = chart,_multiChart = multiChart;
  factory _SummaryModel.fromJson(Map<String, dynamic> json) => _$SummaryModelFromJson(json);

@override final  int numPortfolios;
@override final  SummaryMetaModel meta;
 final  List<ChartDataModel> _chart;
@override List<ChartDataModel> get chart {
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chart);
}

 final  Map<String, List<ChartDataModel>> _multiChart;
@override Map<String, List<ChartDataModel>> get multiChart {
  if (_multiChart is EqualUnmodifiableMapView) return _multiChart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_multiChart);
}

@override final  ChangesModel changes;
@override final  TotalsModel totals;
@override final  double invested;
@override@JsonKey(name: 'realizedPnl') final  double realizedPnl;
@override final  double breakEven;
@override@JsonKey(name: 'fxImpact') final  double fxImpact;

/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryModelCopyWith<_SummaryModel> get copyWith => __$SummaryModelCopyWithImpl<_SummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryModel&&(identical(other.numPortfolios, numPortfolios) || other.numPortfolios == numPortfolios)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._chart, _chart)&&const DeepCollectionEquality().equals(other._multiChart, _multiChart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,numPortfolios,meta,const DeepCollectionEquality().hash(_chart),const DeepCollectionEquality().hash(_multiChart),changes,totals,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'SummaryModel(numPortfolios: $numPortfolios, meta: $meta, chart: $chart, multiChart: $multiChart, changes: $changes, totals: $totals, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class _$SummaryModelCopyWith<$Res> implements $SummaryModelCopyWith<$Res> {
  factory _$SummaryModelCopyWith(_SummaryModel value, $Res Function(_SummaryModel) _then) = __$SummaryModelCopyWithImpl;
@override @useResult
$Res call({
 int numPortfolios, SummaryMetaModel meta, List<ChartDataModel> chart, Map<String, List<ChartDataModel>> multiChart, ChangesModel changes, TotalsModel totals, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact
});


@override $SummaryMetaModelCopyWith<$Res> get meta;@override $ChangesModelCopyWith<$Res> get changes;@override $TotalsModelCopyWith<$Res> get totals;

}
/// @nodoc
class __$SummaryModelCopyWithImpl<$Res>
    implements _$SummaryModelCopyWith<$Res> {
  __$SummaryModelCopyWithImpl(this._self, this._then);

  final _SummaryModel _self;
  final $Res Function(_SummaryModel) _then;

/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numPortfolios = null,Object? meta = null,Object? chart = null,Object? multiChart = null,Object? changes = null,Object? totals = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_SummaryModel(
numPortfolios: null == numPortfolios ? _self.numPortfolios : numPortfolios // ignore: cast_nullable_to_non_nullable
as int,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SummaryMetaModel,chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartDataModel>,multiChart: null == multiChart ? _self._multiChart : multiChart // ignore: cast_nullable_to_non_nullable
as Map<String, List<ChartDataModel>>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as ChangesModel,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as TotalsModel,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryMetaModelCopyWith<$Res> get meta {
  
  return $SummaryMetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<$Res> get changes {
  
  return $ChangesModelCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalsModelCopyWith<$Res> get totals {
  
  return $TotalsModelCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}

// dart format on
