// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lookup_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuoteItemEntity {

 String get symbol; String get exchange; String? get shortname; String? get longname; String get quoteType;
/// Create a copy of QuoteItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuoteItemEntityCopyWith<QuoteItemEntity> get copyWith => _$QuoteItemEntityCopyWithImpl<QuoteItemEntity>(this as QuoteItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuoteItemEntity&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.shortname, shortname) || other.shortname == shortname)&&(identical(other.longname, longname) || other.longname == longname)&&(identical(other.quoteType, quoteType) || other.quoteType == quoteType));
}


@override
int get hashCode => Object.hash(runtimeType,symbol,exchange,shortname,longname,quoteType);

@override
String toString() {
  return 'QuoteItemEntity(symbol: $symbol, exchange: $exchange, shortname: $shortname, longname: $longname, quoteType: $quoteType)';
}


}

/// @nodoc
abstract mixin class $QuoteItemEntityCopyWith<$Res>  {
  factory $QuoteItemEntityCopyWith(QuoteItemEntity value, $Res Function(QuoteItemEntity) _then) = _$QuoteItemEntityCopyWithImpl;
@useResult
$Res call({
 String symbol, String exchange, String? shortname, String? longname, String quoteType
});




}
/// @nodoc
class _$QuoteItemEntityCopyWithImpl<$Res>
    implements $QuoteItemEntityCopyWith<$Res> {
  _$QuoteItemEntityCopyWithImpl(this._self, this._then);

  final QuoteItemEntity _self;
  final $Res Function(QuoteItemEntity) _then;

/// Create a copy of QuoteItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? exchange = null,Object? shortname = freezed,Object? longname = freezed,Object? quoteType = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,shortname: freezed == shortname ? _self.shortname : shortname // ignore: cast_nullable_to_non_nullable
as String?,longname: freezed == longname ? _self.longname : longname // ignore: cast_nullable_to_non_nullable
as String?,quoteType: null == quoteType ? _self.quoteType : quoteType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuoteItemEntity].
extension QuoteItemEntityPatterns on QuoteItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuoteItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuoteItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuoteItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _QuoteItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuoteItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _QuoteItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String exchange,  String? shortname,  String? longname,  String quoteType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuoteItemEntity() when $default != null:
return $default(_that.symbol,_that.exchange,_that.shortname,_that.longname,_that.quoteType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String exchange,  String? shortname,  String? longname,  String quoteType)  $default,) {final _that = this;
switch (_that) {
case _QuoteItemEntity():
return $default(_that.symbol,_that.exchange,_that.shortname,_that.longname,_that.quoteType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String exchange,  String? shortname,  String? longname,  String quoteType)?  $default,) {final _that = this;
switch (_that) {
case _QuoteItemEntity() when $default != null:
return $default(_that.symbol,_that.exchange,_that.shortname,_that.longname,_that.quoteType);case _:
  return null;

}
}

}

/// @nodoc


class _QuoteItemEntity implements QuoteItemEntity {
  const _QuoteItemEntity({required this.symbol, required this.exchange, this.shortname, this.longname, required this.quoteType});
  

@override final  String symbol;
@override final  String exchange;
@override final  String? shortname;
@override final  String? longname;
@override final  String quoteType;

/// Create a copy of QuoteItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuoteItemEntityCopyWith<_QuoteItemEntity> get copyWith => __$QuoteItemEntityCopyWithImpl<_QuoteItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuoteItemEntity&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.shortname, shortname) || other.shortname == shortname)&&(identical(other.longname, longname) || other.longname == longname)&&(identical(other.quoteType, quoteType) || other.quoteType == quoteType));
}


@override
int get hashCode => Object.hash(runtimeType,symbol,exchange,shortname,longname,quoteType);

@override
String toString() {
  return 'QuoteItemEntity(symbol: $symbol, exchange: $exchange, shortname: $shortname, longname: $longname, quoteType: $quoteType)';
}


}

/// @nodoc
abstract mixin class _$QuoteItemEntityCopyWith<$Res> implements $QuoteItemEntityCopyWith<$Res> {
  factory _$QuoteItemEntityCopyWith(_QuoteItemEntity value, $Res Function(_QuoteItemEntity) _then) = __$QuoteItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String exchange, String? shortname, String? longname, String quoteType
});




}
/// @nodoc
class __$QuoteItemEntityCopyWithImpl<$Res>
    implements _$QuoteItemEntityCopyWith<$Res> {
  __$QuoteItemEntityCopyWithImpl(this._self, this._then);

  final _QuoteItemEntity _self;
  final $Res Function(_QuoteItemEntity) _then;

/// Create a copy of QuoteItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? exchange = null,Object? shortname = freezed,Object? longname = freezed,Object? quoteType = null,}) {
  return _then(_QuoteItemEntity(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,shortname: freezed == shortname ? _self.shortname : shortname // ignore: cast_nullable_to_non_nullable
as String?,longname: freezed == longname ? _self.longname : longname // ignore: cast_nullable_to_non_nullable
as String?,quoteType: null == quoteType ? _self.quoteType : quoteType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PriceQuoteEntity {

 int get timestamp; double get price; int get volume;
/// Create a copy of PriceQuoteEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceQuoteEntityCopyWith<PriceQuoteEntity> get copyWith => _$PriceQuoteEntityCopyWithImpl<PriceQuoteEntity>(this as PriceQuoteEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceQuoteEntity&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume);

@override
String toString() {
  return 'PriceQuoteEntity(timestamp: $timestamp, price: $price, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $PriceQuoteEntityCopyWith<$Res>  {
  factory $PriceQuoteEntityCopyWith(PriceQuoteEntity value, $Res Function(PriceQuoteEntity) _then) = _$PriceQuoteEntityCopyWithImpl;
@useResult
$Res call({
 int timestamp, double price, int volume
});




}
/// @nodoc
class _$PriceQuoteEntityCopyWithImpl<$Res>
    implements $PriceQuoteEntityCopyWith<$Res> {
  _$PriceQuoteEntityCopyWithImpl(this._self, this._then);

  final PriceQuoteEntity _self;
  final $Res Function(PriceQuoteEntity) _then;

/// Create a copy of PriceQuoteEntity
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


/// Adds pattern-matching-related methods to [PriceQuoteEntity].
extension PriceQuoteEntityPatterns on PriceQuoteEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceQuoteEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceQuoteEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceQuoteEntity value)  $default,){
final _that = this;
switch (_that) {
case _PriceQuoteEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceQuoteEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PriceQuoteEntity() when $default != null:
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
case _PriceQuoteEntity() when $default != null:
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
case _PriceQuoteEntity():
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
case _PriceQuoteEntity() when $default != null:
return $default(_that.timestamp,_that.price,_that.volume);case _:
  return null;

}
}

}

/// @nodoc


class _PriceQuoteEntity implements PriceQuoteEntity {
  const _PriceQuoteEntity({required this.timestamp, required this.price, required this.volume});
  

@override final  int timestamp;
@override final  double price;
@override final  int volume;

/// Create a copy of PriceQuoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceQuoteEntityCopyWith<_PriceQuoteEntity> get copyWith => __$PriceQuoteEntityCopyWithImpl<_PriceQuoteEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceQuoteEntity&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume);

@override
String toString() {
  return 'PriceQuoteEntity(timestamp: $timestamp, price: $price, volume: $volume)';
}


}

/// @nodoc
abstract mixin class _$PriceQuoteEntityCopyWith<$Res> implements $PriceQuoteEntityCopyWith<$Res> {
  factory _$PriceQuoteEntityCopyWith(_PriceQuoteEntity value, $Res Function(_PriceQuoteEntity) _then) = __$PriceQuoteEntityCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, double price, int volume
});




}
/// @nodoc
class __$PriceQuoteEntityCopyWithImpl<$Res>
    implements _$PriceQuoteEntityCopyWith<$Res> {
  __$PriceQuoteEntityCopyWithImpl(this._self, this._then);

  final _PriceQuoteEntity _self;
  final $Res Function(_PriceQuoteEntity) _then;

/// Create a copy of PriceQuoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? price = null,Object? volume = null,}) {
  return _then(_PriceQuoteEntity(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FxRateEntity {

 String get ccy; String get base; double get rate; int get timestamp;
/// Create a copy of FxRateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FxRateEntityCopyWith<FxRateEntity> get copyWith => _$FxRateEntityCopyWithImpl<FxRateEntity>(this as FxRateEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FxRateEntity&&(identical(other.ccy, ccy) || other.ccy == ccy)&&(identical(other.base, base) || other.base == base)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,ccy,base,rate,timestamp);

@override
String toString() {
  return 'FxRateEntity(ccy: $ccy, base: $base, rate: $rate, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $FxRateEntityCopyWith<$Res>  {
  factory $FxRateEntityCopyWith(FxRateEntity value, $Res Function(FxRateEntity) _then) = _$FxRateEntityCopyWithImpl;
@useResult
$Res call({
 String ccy, String base, double rate, int timestamp
});




}
/// @nodoc
class _$FxRateEntityCopyWithImpl<$Res>
    implements $FxRateEntityCopyWith<$Res> {
  _$FxRateEntityCopyWithImpl(this._self, this._then);

  final FxRateEntity _self;
  final $Res Function(FxRateEntity) _then;

/// Create a copy of FxRateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ccy = null,Object? base = null,Object? rate = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
ccy: null == ccy ? _self.ccy : ccy // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FxRateEntity].
extension FxRateEntityPatterns on FxRateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FxRateEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FxRateEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FxRateEntity value)  $default,){
final _that = this;
switch (_that) {
case _FxRateEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FxRateEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FxRateEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ccy,  String base,  double rate,  int timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FxRateEntity() when $default != null:
return $default(_that.ccy,_that.base,_that.rate,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ccy,  String base,  double rate,  int timestamp)  $default,) {final _that = this;
switch (_that) {
case _FxRateEntity():
return $default(_that.ccy,_that.base,_that.rate,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ccy,  String base,  double rate,  int timestamp)?  $default,) {final _that = this;
switch (_that) {
case _FxRateEntity() when $default != null:
return $default(_that.ccy,_that.base,_that.rate,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc


class _FxRateEntity implements FxRateEntity {
  const _FxRateEntity({required this.ccy, required this.base, required this.rate, required this.timestamp});
  

@override final  String ccy;
@override final  String base;
@override final  double rate;
@override final  int timestamp;

/// Create a copy of FxRateEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FxRateEntityCopyWith<_FxRateEntity> get copyWith => __$FxRateEntityCopyWithImpl<_FxRateEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FxRateEntity&&(identical(other.ccy, ccy) || other.ccy == ccy)&&(identical(other.base, base) || other.base == base)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,ccy,base,rate,timestamp);

@override
String toString() {
  return 'FxRateEntity(ccy: $ccy, base: $base, rate: $rate, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$FxRateEntityCopyWith<$Res> implements $FxRateEntityCopyWith<$Res> {
  factory _$FxRateEntityCopyWith(_FxRateEntity value, $Res Function(_FxRateEntity) _then) = __$FxRateEntityCopyWithImpl;
@override @useResult
$Res call({
 String ccy, String base, double rate, int timestamp
});




}
/// @nodoc
class __$FxRateEntityCopyWithImpl<$Res>
    implements _$FxRateEntityCopyWith<$Res> {
  __$FxRateEntityCopyWithImpl(this._self, this._then);

  final _FxRateEntity _self;
  final $Res Function(_FxRateEntity) _then;

/// Create a copy of FxRateEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ccy = null,Object? base = null,Object? rate = null,Object? timestamp = null,}) {
  return _then(_FxRateEntity(
ccy: null == ccy ? _self.ccy : ccy // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
