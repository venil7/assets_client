// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuoteItemModel {

 String get symbol; String get exchange; String? get shortname; String? get longname; String get quoteType;
/// Create a copy of QuoteItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuoteItemModelCopyWith<QuoteItemModel> get copyWith => _$QuoteItemModelCopyWithImpl<QuoteItemModel>(this as QuoteItemModel, _$identity);

  /// Serializes this QuoteItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuoteItemModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.shortname, shortname) || other.shortname == shortname)&&(identical(other.longname, longname) || other.longname == longname)&&(identical(other.quoteType, quoteType) || other.quoteType == quoteType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,exchange,shortname,longname,quoteType);

@override
String toString() {
  return 'QuoteItemModel(symbol: $symbol, exchange: $exchange, shortname: $shortname, longname: $longname, quoteType: $quoteType)';
}


}

/// @nodoc
abstract mixin class $QuoteItemModelCopyWith<$Res>  {
  factory $QuoteItemModelCopyWith(QuoteItemModel value, $Res Function(QuoteItemModel) _then) = _$QuoteItemModelCopyWithImpl;
@useResult
$Res call({
 String symbol, String exchange, String? shortname, String? longname, String quoteType
});




}
/// @nodoc
class _$QuoteItemModelCopyWithImpl<$Res>
    implements $QuoteItemModelCopyWith<$Res> {
  _$QuoteItemModelCopyWithImpl(this._self, this._then);

  final QuoteItemModel _self;
  final $Res Function(QuoteItemModel) _then;

/// Create a copy of QuoteItemModel
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


/// Adds pattern-matching-related methods to [QuoteItemModel].
extension QuoteItemModelPatterns on QuoteItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuoteItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuoteItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuoteItemModel value)  $default,){
final _that = this;
switch (_that) {
case _QuoteItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuoteItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuoteItemModel() when $default != null:
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
case _QuoteItemModel() when $default != null:
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
case _QuoteItemModel():
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
case _QuoteItemModel() when $default != null:
return $default(_that.symbol,_that.exchange,_that.shortname,_that.longname,_that.quoteType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuoteItemModel implements QuoteItemModel {
  const _QuoteItemModel({required this.symbol, required this.exchange, this.shortname, this.longname, required this.quoteType});
  factory _QuoteItemModel.fromJson(Map<String, dynamic> json) => _$QuoteItemModelFromJson(json);

@override final  String symbol;
@override final  String exchange;
@override final  String? shortname;
@override final  String? longname;
@override final  String quoteType;

/// Create a copy of QuoteItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuoteItemModelCopyWith<_QuoteItemModel> get copyWith => __$QuoteItemModelCopyWithImpl<_QuoteItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuoteItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuoteItemModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.shortname, shortname) || other.shortname == shortname)&&(identical(other.longname, longname) || other.longname == longname)&&(identical(other.quoteType, quoteType) || other.quoteType == quoteType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,exchange,shortname,longname,quoteType);

@override
String toString() {
  return 'QuoteItemModel(symbol: $symbol, exchange: $exchange, shortname: $shortname, longname: $longname, quoteType: $quoteType)';
}


}

/// @nodoc
abstract mixin class _$QuoteItemModelCopyWith<$Res> implements $QuoteItemModelCopyWith<$Res> {
  factory _$QuoteItemModelCopyWith(_QuoteItemModel value, $Res Function(_QuoteItemModel) _then) = __$QuoteItemModelCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String exchange, String? shortname, String? longname, String quoteType
});




}
/// @nodoc
class __$QuoteItemModelCopyWithImpl<$Res>
    implements _$QuoteItemModelCopyWith<$Res> {
  __$QuoteItemModelCopyWithImpl(this._self, this._then);

  final _QuoteItemModel _self;
  final $Res Function(_QuoteItemModel) _then;

/// Create a copy of QuoteItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? exchange = null,Object? shortname = freezed,Object? longname = freezed,Object? quoteType = null,}) {
  return _then(_QuoteItemModel(
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
mixin _$QuoteSearchResponseModel {

 List<QuoteItemModel> get quotes;
/// Create a copy of QuoteSearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuoteSearchResponseModelCopyWith<QuoteSearchResponseModel> get copyWith => _$QuoteSearchResponseModelCopyWithImpl<QuoteSearchResponseModel>(this as QuoteSearchResponseModel, _$identity);

  /// Serializes this QuoteSearchResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuoteSearchResponseModel&&const DeepCollectionEquality().equals(other.quotes, quotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(quotes));

@override
String toString() {
  return 'QuoteSearchResponseModel(quotes: $quotes)';
}


}

/// @nodoc
abstract mixin class $QuoteSearchResponseModelCopyWith<$Res>  {
  factory $QuoteSearchResponseModelCopyWith(QuoteSearchResponseModel value, $Res Function(QuoteSearchResponseModel) _then) = _$QuoteSearchResponseModelCopyWithImpl;
@useResult
$Res call({
 List<QuoteItemModel> quotes
});




}
/// @nodoc
class _$QuoteSearchResponseModelCopyWithImpl<$Res>
    implements $QuoteSearchResponseModelCopyWith<$Res> {
  _$QuoteSearchResponseModelCopyWithImpl(this._self, this._then);

  final QuoteSearchResponseModel _self;
  final $Res Function(QuoteSearchResponseModel) _then;

/// Create a copy of QuoteSearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quotes = null,}) {
  return _then(_self.copyWith(
quotes: null == quotes ? _self.quotes : quotes // ignore: cast_nullable_to_non_nullable
as List<QuoteItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuoteSearchResponseModel].
extension QuoteSearchResponseModelPatterns on QuoteSearchResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuoteSearchResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuoteSearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuoteSearchResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _QuoteSearchResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuoteSearchResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuoteSearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<QuoteItemModel> quotes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuoteSearchResponseModel() when $default != null:
return $default(_that.quotes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<QuoteItemModel> quotes)  $default,) {final _that = this;
switch (_that) {
case _QuoteSearchResponseModel():
return $default(_that.quotes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<QuoteItemModel> quotes)?  $default,) {final _that = this;
switch (_that) {
case _QuoteSearchResponseModel() when $default != null:
return $default(_that.quotes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuoteSearchResponseModel implements QuoteSearchResponseModel {
  const _QuoteSearchResponseModel({required final  List<QuoteItemModel> quotes}): _quotes = quotes;
  factory _QuoteSearchResponseModel.fromJson(Map<String, dynamic> json) => _$QuoteSearchResponseModelFromJson(json);

 final  List<QuoteItemModel> _quotes;
@override List<QuoteItemModel> get quotes {
  if (_quotes is EqualUnmodifiableListView) return _quotes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_quotes);
}


/// Create a copy of QuoteSearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuoteSearchResponseModelCopyWith<_QuoteSearchResponseModel> get copyWith => __$QuoteSearchResponseModelCopyWithImpl<_QuoteSearchResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuoteSearchResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuoteSearchResponseModel&&const DeepCollectionEquality().equals(other._quotes, _quotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_quotes));

@override
String toString() {
  return 'QuoteSearchResponseModel(quotes: $quotes)';
}


}

/// @nodoc
abstract mixin class _$QuoteSearchResponseModelCopyWith<$Res> implements $QuoteSearchResponseModelCopyWith<$Res> {
  factory _$QuoteSearchResponseModelCopyWith(_QuoteSearchResponseModel value, $Res Function(_QuoteSearchResponseModel) _then) = __$QuoteSearchResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<QuoteItemModel> quotes
});




}
/// @nodoc
class __$QuoteSearchResponseModelCopyWithImpl<$Res>
    implements _$QuoteSearchResponseModelCopyWith<$Res> {
  __$QuoteSearchResponseModelCopyWithImpl(this._self, this._then);

  final _QuoteSearchResponseModel _self;
  final $Res Function(_QuoteSearchResponseModel) _then;

/// Create a copy of QuoteSearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quotes = null,}) {
  return _then(_QuoteSearchResponseModel(
quotes: null == quotes ? _self._quotes : quotes // ignore: cast_nullable_to_non_nullable
as List<QuoteItemModel>,
  ));
}


}


/// @nodoc
mixin _$PriceQuoteModel {

 int get timestamp; double get price; int get volume; dynamic get tx;
/// Create a copy of PriceQuoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceQuoteModelCopyWith<PriceQuoteModel> get copyWith => _$PriceQuoteModelCopyWithImpl<PriceQuoteModel>(this as PriceQuoteModel, _$identity);

  /// Serializes this PriceQuoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceQuoteModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume)&&const DeepCollectionEquality().equals(other.tx, tx));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume,const DeepCollectionEquality().hash(tx));

@override
String toString() {
  return 'PriceQuoteModel(timestamp: $timestamp, price: $price, volume: $volume, tx: $tx)';
}


}

/// @nodoc
abstract mixin class $PriceQuoteModelCopyWith<$Res>  {
  factory $PriceQuoteModelCopyWith(PriceQuoteModel value, $Res Function(PriceQuoteModel) _then) = _$PriceQuoteModelCopyWithImpl;
@useResult
$Res call({
 int timestamp, double price, int volume, dynamic tx
});




}
/// @nodoc
class _$PriceQuoteModelCopyWithImpl<$Res>
    implements $PriceQuoteModelCopyWith<$Res> {
  _$PriceQuoteModelCopyWithImpl(this._self, this._then);

  final PriceQuoteModel _self;
  final $Res Function(PriceQuoteModel) _then;

/// Create a copy of PriceQuoteModel
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


/// Adds pattern-matching-related methods to [PriceQuoteModel].
extension PriceQuoteModelPatterns on PriceQuoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceQuoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceQuoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceQuoteModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceQuoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceQuoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceQuoteModel() when $default != null:
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
case _PriceQuoteModel() when $default != null:
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
case _PriceQuoteModel():
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
case _PriceQuoteModel() when $default != null:
return $default(_that.timestamp,_that.price,_that.volume,_that.tx);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceQuoteModel implements PriceQuoteModel {
  const _PriceQuoteModel({required this.timestamp, required this.price, required this.volume, this.tx});
  factory _PriceQuoteModel.fromJson(Map<String, dynamic> json) => _$PriceQuoteModelFromJson(json);

@override final  int timestamp;
@override final  double price;
@override final  int volume;
@override final  dynamic tx;

/// Create a copy of PriceQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceQuoteModelCopyWith<_PriceQuoteModel> get copyWith => __$PriceQuoteModelCopyWithImpl<_PriceQuoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceQuoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceQuoteModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume)&&const DeepCollectionEquality().equals(other.tx, tx));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,price,volume,const DeepCollectionEquality().hash(tx));

@override
String toString() {
  return 'PriceQuoteModel(timestamp: $timestamp, price: $price, volume: $volume, tx: $tx)';
}


}

/// @nodoc
abstract mixin class _$PriceQuoteModelCopyWith<$Res> implements $PriceQuoteModelCopyWith<$Res> {
  factory _$PriceQuoteModelCopyWith(_PriceQuoteModel value, $Res Function(_PriceQuoteModel) _then) = __$PriceQuoteModelCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, double price, int volume, dynamic tx
});




}
/// @nodoc
class __$PriceQuoteModelCopyWithImpl<$Res>
    implements _$PriceQuoteModelCopyWith<$Res> {
  __$PriceQuoteModelCopyWithImpl(this._self, this._then);

  final _PriceQuoteModel _self;
  final $Res Function(_PriceQuoteModel) _then;

/// Create a copy of PriceQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? price = null,Object? volume = null,Object? tx = freezed,}) {
  return _then(_PriceQuoteModel(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,tx: freezed == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$FxRateModel {

 String get ccy; String get base; double get rate; int get timestamp;
/// Create a copy of FxRateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FxRateModelCopyWith<FxRateModel> get copyWith => _$FxRateModelCopyWithImpl<FxRateModel>(this as FxRateModel, _$identity);

  /// Serializes this FxRateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FxRateModel&&(identical(other.ccy, ccy) || other.ccy == ccy)&&(identical(other.base, base) || other.base == base)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ccy,base,rate,timestamp);

@override
String toString() {
  return 'FxRateModel(ccy: $ccy, base: $base, rate: $rate, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $FxRateModelCopyWith<$Res>  {
  factory $FxRateModelCopyWith(FxRateModel value, $Res Function(FxRateModel) _then) = _$FxRateModelCopyWithImpl;
@useResult
$Res call({
 String ccy, String base, double rate, int timestamp
});




}
/// @nodoc
class _$FxRateModelCopyWithImpl<$Res>
    implements $FxRateModelCopyWith<$Res> {
  _$FxRateModelCopyWithImpl(this._self, this._then);

  final FxRateModel _self;
  final $Res Function(FxRateModel) _then;

/// Create a copy of FxRateModel
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


/// Adds pattern-matching-related methods to [FxRateModel].
extension FxRateModelPatterns on FxRateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FxRateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FxRateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FxRateModel value)  $default,){
final _that = this;
switch (_that) {
case _FxRateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FxRateModel value)?  $default,){
final _that = this;
switch (_that) {
case _FxRateModel() when $default != null:
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
case _FxRateModel() when $default != null:
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
case _FxRateModel():
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
case _FxRateModel() when $default != null:
return $default(_that.ccy,_that.base,_that.rate,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FxRateModel implements FxRateModel {
  const _FxRateModel({required this.ccy, required this.base, required this.rate, required this.timestamp});
  factory _FxRateModel.fromJson(Map<String, dynamic> json) => _$FxRateModelFromJson(json);

@override final  String ccy;
@override final  String base;
@override final  double rate;
@override final  int timestamp;

/// Create a copy of FxRateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FxRateModelCopyWith<_FxRateModel> get copyWith => __$FxRateModelCopyWithImpl<_FxRateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FxRateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FxRateModel&&(identical(other.ccy, ccy) || other.ccy == ccy)&&(identical(other.base, base) || other.base == base)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ccy,base,rate,timestamp);

@override
String toString() {
  return 'FxRateModel(ccy: $ccy, base: $base, rate: $rate, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$FxRateModelCopyWith<$Res> implements $FxRateModelCopyWith<$Res> {
  factory _$FxRateModelCopyWith(_FxRateModel value, $Res Function(_FxRateModel) _then) = __$FxRateModelCopyWithImpl;
@override @useResult
$Res call({
 String ccy, String base, double rate, int timestamp
});




}
/// @nodoc
class __$FxRateModelCopyWithImpl<$Res>
    implements _$FxRateModelCopyWith<$Res> {
  __$FxRateModelCopyWithImpl(this._self, this._then);

  final _FxRateModel _self;
  final $Res Function(_FxRateModel) _then;

/// Create a copy of FxRateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ccy = null,Object? base = null,Object? rate = null,Object? timestamp = null,}) {
  return _then(_FxRateModel(
ccy: null == ccy ? _self.ccy : ccy // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
