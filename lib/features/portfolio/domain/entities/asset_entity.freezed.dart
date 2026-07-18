// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssetEntity {

 int get id; int get portfolioId; String get ticker; String get name; double get holdings; double get invested;@JsonKey(name: 'avg_price') double get avgPrice;@JsonKey(name: 'break_even') double get breakEven;@JsonKey(name: 'realized_pnl') double get realizedPnl;@JsonKey(name: 'num_txs') int get numTxs;@JsonKey(name: 'base_ccy') String get baseCcy; double? get weight; double? get endPrice;@JsonKey(name: 'returnPct') double? get returnPct; double? get returnValue; double? get totalReturnPct; double? get totalReturnValue;
/// Create a copy of AssetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetEntityCopyWith<AssetEntity> get copyWith => _$AssetEntityCopyWithImpl<AssetEntity>(this as AssetEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.portfolioId, portfolioId) || other.portfolioId == portfolioId)&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name)&&(identical(other.holdings, holdings) || other.holdings == holdings)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.numTxs, numTxs) || other.numTxs == numTxs)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.endPrice, endPrice) || other.endPrice == endPrice)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct)&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.totalReturnPct, totalReturnPct) || other.totalReturnPct == totalReturnPct)&&(identical(other.totalReturnValue, totalReturnValue) || other.totalReturnValue == totalReturnValue));
}


@override
int get hashCode => Object.hash(runtimeType,id,portfolioId,ticker,name,holdings,invested,avgPrice,breakEven,realizedPnl,numTxs,baseCcy,weight,endPrice,returnPct,returnValue,totalReturnPct,totalReturnValue);

@override
String toString() {
  return 'AssetEntity(id: $id, portfolioId: $portfolioId, ticker: $ticker, name: $name, holdings: $holdings, invested: $invested, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl, numTxs: $numTxs, baseCcy: $baseCcy, weight: $weight, endPrice: $endPrice, returnPct: $returnPct, returnValue: $returnValue, totalReturnPct: $totalReturnPct, totalReturnValue: $totalReturnValue)';
}


}

/// @nodoc
abstract mixin class $AssetEntityCopyWith<$Res>  {
  factory $AssetEntityCopyWith(AssetEntity value, $Res Function(AssetEntity) _then) = _$AssetEntityCopyWithImpl;
@useResult
$Res call({
 int id, int portfolioId, String ticker, String name, double holdings, double invested,@JsonKey(name: 'avg_price') double avgPrice,@JsonKey(name: 'break_even') double breakEven,@JsonKey(name: 'realized_pnl') double realizedPnl,@JsonKey(name: 'num_txs') int numTxs,@JsonKey(name: 'base_ccy') String baseCcy, double? weight, double? endPrice,@JsonKey(name: 'returnPct') double? returnPct, double? returnValue, double? totalReturnPct, double? totalReturnValue
});




}
/// @nodoc
class _$AssetEntityCopyWithImpl<$Res>
    implements $AssetEntityCopyWith<$Res> {
  _$AssetEntityCopyWithImpl(this._self, this._then);

  final AssetEntity _self;
  final $Res Function(AssetEntity) _then;

/// Create a copy of AssetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? portfolioId = null,Object? ticker = null,Object? name = null,Object? holdings = null,Object? invested = null,Object? avgPrice = null,Object? breakEven = null,Object? realizedPnl = null,Object? numTxs = null,Object? baseCcy = null,Object? weight = freezed,Object? endPrice = freezed,Object? returnPct = freezed,Object? returnValue = freezed,Object? totalReturnPct = freezed,Object? totalReturnValue = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,portfolioId: null == portfolioId ? _self.portfolioId : portfolioId // ignore: cast_nullable_to_non_nullable
as int,ticker: null == ticker ? _self.ticker : ticker // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,holdings: null == holdings ? _self.holdings : holdings // ignore: cast_nullable_to_non_nullable
as double,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,avgPrice: null == avgPrice ? _self.avgPrice : avgPrice // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,numTxs: null == numTxs ? _self.numTxs : numTxs // ignore: cast_nullable_to_non_nullable
as int,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,endPrice: freezed == endPrice ? _self.endPrice : endPrice // ignore: cast_nullable_to_non_nullable
as double?,returnPct: freezed == returnPct ? _self.returnPct : returnPct // ignore: cast_nullable_to_non_nullable
as double?,returnValue: freezed == returnValue ? _self.returnValue : returnValue // ignore: cast_nullable_to_non_nullable
as double?,totalReturnPct: freezed == totalReturnPct ? _self.totalReturnPct : totalReturnPct // ignore: cast_nullable_to_non_nullable
as double?,totalReturnValue: freezed == totalReturnValue ? _self.totalReturnValue : totalReturnValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssetEntity].
extension AssetEntityPatterns on AssetEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetEntity value)  $default,){
final _that = this;
switch (_that) {
case _AssetEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AssetEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int portfolioId,  String ticker,  String name,  double holdings,  double invested, @JsonKey(name: 'avg_price')  double avgPrice, @JsonKey(name: 'break_even')  double breakEven, @JsonKey(name: 'realized_pnl')  double realizedPnl, @JsonKey(name: 'num_txs')  int numTxs, @JsonKey(name: 'base_ccy')  String baseCcy,  double? weight,  double? endPrice, @JsonKey(name: 'returnPct')  double? returnPct,  double? returnValue,  double? totalReturnPct,  double? totalReturnValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetEntity() when $default != null:
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.baseCcy,_that.weight,_that.endPrice,_that.returnPct,_that.returnValue,_that.totalReturnPct,_that.totalReturnValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int portfolioId,  String ticker,  String name,  double holdings,  double invested, @JsonKey(name: 'avg_price')  double avgPrice, @JsonKey(name: 'break_even')  double breakEven, @JsonKey(name: 'realized_pnl')  double realizedPnl, @JsonKey(name: 'num_txs')  int numTxs, @JsonKey(name: 'base_ccy')  String baseCcy,  double? weight,  double? endPrice, @JsonKey(name: 'returnPct')  double? returnPct,  double? returnValue,  double? totalReturnPct,  double? totalReturnValue)  $default,) {final _that = this;
switch (_that) {
case _AssetEntity():
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.baseCcy,_that.weight,_that.endPrice,_that.returnPct,_that.returnValue,_that.totalReturnPct,_that.totalReturnValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int portfolioId,  String ticker,  String name,  double holdings,  double invested, @JsonKey(name: 'avg_price')  double avgPrice, @JsonKey(name: 'break_even')  double breakEven, @JsonKey(name: 'realized_pnl')  double realizedPnl, @JsonKey(name: 'num_txs')  int numTxs, @JsonKey(name: 'base_ccy')  String baseCcy,  double? weight,  double? endPrice, @JsonKey(name: 'returnPct')  double? returnPct,  double? returnValue,  double? totalReturnPct,  double? totalReturnValue)?  $default,) {final _that = this;
switch (_that) {
case _AssetEntity() when $default != null:
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.baseCcy,_that.weight,_that.endPrice,_that.returnPct,_that.returnValue,_that.totalReturnPct,_that.totalReturnValue);case _:
  return null;

}
}

}

/// @nodoc


class _AssetEntity implements AssetEntity {
  const _AssetEntity({required this.id, required this.portfolioId, required this.ticker, required this.name, required this.holdings, required this.invested, @JsonKey(name: 'avg_price') required this.avgPrice, @JsonKey(name: 'break_even') required this.breakEven, @JsonKey(name: 'realized_pnl') required this.realizedPnl, @JsonKey(name: 'num_txs') required this.numTxs, @JsonKey(name: 'base_ccy') required this.baseCcy, this.weight, this.endPrice, @JsonKey(name: 'returnPct') this.returnPct, this.returnValue, this.totalReturnPct, this.totalReturnValue});
  

@override final  int id;
@override final  int portfolioId;
@override final  String ticker;
@override final  String name;
@override final  double holdings;
@override final  double invested;
@override@JsonKey(name: 'avg_price') final  double avgPrice;
@override@JsonKey(name: 'break_even') final  double breakEven;
@override@JsonKey(name: 'realized_pnl') final  double realizedPnl;
@override@JsonKey(name: 'num_txs') final  int numTxs;
@override@JsonKey(name: 'base_ccy') final  String baseCcy;
@override final  double? weight;
@override final  double? endPrice;
@override@JsonKey(name: 'returnPct') final  double? returnPct;
@override final  double? returnValue;
@override final  double? totalReturnPct;
@override final  double? totalReturnValue;

/// Create a copy of AssetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetEntityCopyWith<_AssetEntity> get copyWith => __$AssetEntityCopyWithImpl<_AssetEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.portfolioId, portfolioId) || other.portfolioId == portfolioId)&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name)&&(identical(other.holdings, holdings) || other.holdings == holdings)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.numTxs, numTxs) || other.numTxs == numTxs)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.endPrice, endPrice) || other.endPrice == endPrice)&&(identical(other.returnPct, returnPct) || other.returnPct == returnPct)&&(identical(other.returnValue, returnValue) || other.returnValue == returnValue)&&(identical(other.totalReturnPct, totalReturnPct) || other.totalReturnPct == totalReturnPct)&&(identical(other.totalReturnValue, totalReturnValue) || other.totalReturnValue == totalReturnValue));
}


@override
int get hashCode => Object.hash(runtimeType,id,portfolioId,ticker,name,holdings,invested,avgPrice,breakEven,realizedPnl,numTxs,baseCcy,weight,endPrice,returnPct,returnValue,totalReturnPct,totalReturnValue);

@override
String toString() {
  return 'AssetEntity(id: $id, portfolioId: $portfolioId, ticker: $ticker, name: $name, holdings: $holdings, invested: $invested, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl, numTxs: $numTxs, baseCcy: $baseCcy, weight: $weight, endPrice: $endPrice, returnPct: $returnPct, returnValue: $returnValue, totalReturnPct: $totalReturnPct, totalReturnValue: $totalReturnValue)';
}


}

/// @nodoc
abstract mixin class _$AssetEntityCopyWith<$Res> implements $AssetEntityCopyWith<$Res> {
  factory _$AssetEntityCopyWith(_AssetEntity value, $Res Function(_AssetEntity) _then) = __$AssetEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int portfolioId, String ticker, String name, double holdings, double invested,@JsonKey(name: 'avg_price') double avgPrice,@JsonKey(name: 'break_even') double breakEven,@JsonKey(name: 'realized_pnl') double realizedPnl,@JsonKey(name: 'num_txs') int numTxs,@JsonKey(name: 'base_ccy') String baseCcy, double? weight, double? endPrice,@JsonKey(name: 'returnPct') double? returnPct, double? returnValue, double? totalReturnPct, double? totalReturnValue
});




}
/// @nodoc
class __$AssetEntityCopyWithImpl<$Res>
    implements _$AssetEntityCopyWith<$Res> {
  __$AssetEntityCopyWithImpl(this._self, this._then);

  final _AssetEntity _self;
  final $Res Function(_AssetEntity) _then;

/// Create a copy of AssetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? portfolioId = null,Object? ticker = null,Object? name = null,Object? holdings = null,Object? invested = null,Object? avgPrice = null,Object? breakEven = null,Object? realizedPnl = null,Object? numTxs = null,Object? baseCcy = null,Object? weight = freezed,Object? endPrice = freezed,Object? returnPct = freezed,Object? returnValue = freezed,Object? totalReturnPct = freezed,Object? totalReturnValue = freezed,}) {
  return _then(_AssetEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,portfolioId: null == portfolioId ? _self.portfolioId : portfolioId // ignore: cast_nullable_to_non_nullable
as int,ticker: null == ticker ? _self.ticker : ticker // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,holdings: null == holdings ? _self.holdings : holdings // ignore: cast_nullable_to_non_nullable
as double,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,avgPrice: null == avgPrice ? _self.avgPrice : avgPrice // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,numTxs: null == numTxs ? _self.numTxs : numTxs // ignore: cast_nullable_to_non_nullable
as int,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,endPrice: freezed == endPrice ? _self.endPrice : endPrice // ignore: cast_nullable_to_non_nullable
as double?,returnPct: freezed == returnPct ? _self.returnPct : returnPct // ignore: cast_nullable_to_non_nullable
as double?,returnValue: freezed == returnValue ? _self.returnValue : returnValue // ignore: cast_nullable_to_non_nullable
as double?,totalReturnPct: freezed == totalReturnPct ? _self.totalReturnPct : totalReturnPct // ignore: cast_nullable_to_non_nullable
as double?,totalReturnValue: freezed == totalReturnValue ? _self.totalReturnValue : totalReturnValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
