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

 int get id; int get portfolioId; String get ticker; String get name; int get userId; double get holdings; double get invested; double get avgPrice; double get breakEven; double get realizedPnl; int get numTxs; String? get lastActivity; int? get lastActivityTs; String get baseCcy; String get created; String get modified;
/// Create a copy of AssetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetEntityCopyWith<AssetEntity> get copyWith => _$AssetEntityCopyWithImpl<AssetEntity>(this as AssetEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.portfolioId, portfolioId) || other.portfolioId == portfolioId)&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.holdings, holdings) || other.holdings == holdings)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.numTxs, numTxs) || other.numTxs == numTxs)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.lastActivityTs, lastActivityTs) || other.lastActivityTs == lastActivityTs)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}


@override
int get hashCode => Object.hash(runtimeType,id,portfolioId,ticker,name,userId,holdings,invested,avgPrice,breakEven,realizedPnl,numTxs,lastActivity,lastActivityTs,baseCcy,created,modified);

@override
String toString() {
  return 'AssetEntity(id: $id, portfolioId: $portfolioId, ticker: $ticker, name: $name, userId: $userId, holdings: $holdings, invested: $invested, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl, numTxs: $numTxs, lastActivity: $lastActivity, lastActivityTs: $lastActivityTs, baseCcy: $baseCcy, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class $AssetEntityCopyWith<$Res>  {
  factory $AssetEntityCopyWith(AssetEntity value, $Res Function(AssetEntity) _then) = _$AssetEntityCopyWithImpl;
@useResult
$Res call({
 int id, int portfolioId, String ticker, String name, int userId, double holdings, double invested, double avgPrice, double breakEven, double realizedPnl, int numTxs, String? lastActivity, int? lastActivityTs, String baseCcy, String created, String modified
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? portfolioId = null,Object? ticker = null,Object? name = null,Object? userId = null,Object? holdings = null,Object? invested = null,Object? avgPrice = null,Object? breakEven = null,Object? realizedPnl = null,Object? numTxs = null,Object? lastActivity = freezed,Object? lastActivityTs = freezed,Object? baseCcy = null,Object? created = null,Object? modified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,portfolioId: null == portfolioId ? _self.portfolioId : portfolioId // ignore: cast_nullable_to_non_nullable
as int,ticker: null == ticker ? _self.ticker : ticker // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,holdings: null == holdings ? _self.holdings : holdings // ignore: cast_nullable_to_non_nullable
as double,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,avgPrice: null == avgPrice ? _self.avgPrice : avgPrice // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,numTxs: null == numTxs ? _self.numTxs : numTxs // ignore: cast_nullable_to_non_nullable
as int,lastActivity: freezed == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as String?,lastActivityTs: freezed == lastActivityTs ? _self.lastActivityTs : lastActivityTs // ignore: cast_nullable_to_non_nullable
as int?,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int portfolioId,  String ticker,  String name,  int userId,  double holdings,  double invested,  double avgPrice,  double breakEven,  double realizedPnl,  int numTxs,  String? lastActivity,  int? lastActivityTs,  String baseCcy,  String created,  String modified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetEntity() when $default != null:
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.lastActivity,_that.lastActivityTs,_that.baseCcy,_that.created,_that.modified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int portfolioId,  String ticker,  String name,  int userId,  double holdings,  double invested,  double avgPrice,  double breakEven,  double realizedPnl,  int numTxs,  String? lastActivity,  int? lastActivityTs,  String baseCcy,  String created,  String modified)  $default,) {final _that = this;
switch (_that) {
case _AssetEntity():
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.lastActivity,_that.lastActivityTs,_that.baseCcy,_that.created,_that.modified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int portfolioId,  String ticker,  String name,  int userId,  double holdings,  double invested,  double avgPrice,  double breakEven,  double realizedPnl,  int numTxs,  String? lastActivity,  int? lastActivityTs,  String baseCcy,  String created,  String modified)?  $default,) {final _that = this;
switch (_that) {
case _AssetEntity() when $default != null:
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.lastActivity,_that.lastActivityTs,_that.baseCcy,_that.created,_that.modified);case _:
  return null;

}
}

}

/// @nodoc


class _AssetEntity implements AssetEntity {
  const _AssetEntity({required this.id, required this.portfolioId, required this.ticker, required this.name, required this.userId, required this.holdings, required this.invested, required this.avgPrice, required this.breakEven, required this.realizedPnl, required this.numTxs, this.lastActivity, this.lastActivityTs, required this.baseCcy, required this.created, required this.modified});
  

@override final  int id;
@override final  int portfolioId;
@override final  String ticker;
@override final  String name;
@override final  int userId;
@override final  double holdings;
@override final  double invested;
@override final  double avgPrice;
@override final  double breakEven;
@override final  double realizedPnl;
@override final  int numTxs;
@override final  String? lastActivity;
@override final  int? lastActivityTs;
@override final  String baseCcy;
@override final  String created;
@override final  String modified;

/// Create a copy of AssetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetEntityCopyWith<_AssetEntity> get copyWith => __$AssetEntityCopyWithImpl<_AssetEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.portfolioId, portfolioId) || other.portfolioId == portfolioId)&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.holdings, holdings) || other.holdings == holdings)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.numTxs, numTxs) || other.numTxs == numTxs)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.lastActivityTs, lastActivityTs) || other.lastActivityTs == lastActivityTs)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}


@override
int get hashCode => Object.hash(runtimeType,id,portfolioId,ticker,name,userId,holdings,invested,avgPrice,breakEven,realizedPnl,numTxs,lastActivity,lastActivityTs,baseCcy,created,modified);

@override
String toString() {
  return 'AssetEntity(id: $id, portfolioId: $portfolioId, ticker: $ticker, name: $name, userId: $userId, holdings: $holdings, invested: $invested, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl, numTxs: $numTxs, lastActivity: $lastActivity, lastActivityTs: $lastActivityTs, baseCcy: $baseCcy, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class _$AssetEntityCopyWith<$Res> implements $AssetEntityCopyWith<$Res> {
  factory _$AssetEntityCopyWith(_AssetEntity value, $Res Function(_AssetEntity) _then) = __$AssetEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int portfolioId, String ticker, String name, int userId, double holdings, double invested, double avgPrice, double breakEven, double realizedPnl, int numTxs, String? lastActivity, int? lastActivityTs, String baseCcy, String created, String modified
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? portfolioId = null,Object? ticker = null,Object? name = null,Object? userId = null,Object? holdings = null,Object? invested = null,Object? avgPrice = null,Object? breakEven = null,Object? realizedPnl = null,Object? numTxs = null,Object? lastActivity = freezed,Object? lastActivityTs = freezed,Object? baseCcy = null,Object? created = null,Object? modified = null,}) {
  return _then(_AssetEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,portfolioId: null == portfolioId ? _self.portfolioId : portfolioId // ignore: cast_nullable_to_non_nullable
as int,ticker: null == ticker ? _self.ticker : ticker // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,holdings: null == holdings ? _self.holdings : holdings // ignore: cast_nullable_to_non_nullable
as double,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,avgPrice: null == avgPrice ? _self.avgPrice : avgPrice // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,numTxs: null == numTxs ? _self.numTxs : numTxs // ignore: cast_nullable_to_non_nullable
as int,lastActivity: freezed == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as String?,lastActivityTs: freezed == lastActivityTs ? _self.lastActivityTs : lastActivityTs // ignore: cast_nullable_to_non_nullable
as int?,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TransactionEntity {

 int get id; int get assetId; String get type; double get quantity; double get price; String get date; String? get comments; double get realizedPnl; double get cost; double get costBasis; double get contribution; double get runningHolding; double get runningCost; double get runningAveragePrice; double get runningBreakEven; double get runningContribution; String get assetName; String get assetTicker; String get portfolioName; int get timestamp; String get created; String get modified;
/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionEntityCopyWith<TransactionEntity> get copyWith => _$TransactionEntityCopyWithImpl<TransactionEntity>(this as TransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.costBasis, costBasis) || other.costBasis == costBasis)&&(identical(other.contribution, contribution) || other.contribution == contribution)&&(identical(other.runningHolding, runningHolding) || other.runningHolding == runningHolding)&&(identical(other.runningCost, runningCost) || other.runningCost == runningCost)&&(identical(other.runningAveragePrice, runningAveragePrice) || other.runningAveragePrice == runningAveragePrice)&&(identical(other.runningBreakEven, runningBreakEven) || other.runningBreakEven == runningBreakEven)&&(identical(other.runningContribution, runningContribution) || other.runningContribution == runningContribution)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetTicker, assetTicker) || other.assetTicker == assetTicker)&&(identical(other.portfolioName, portfolioName) || other.portfolioName == portfolioName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,assetId,type,quantity,price,date,comments,realizedPnl,cost,costBasis,contribution,runningHolding,runningCost,runningAveragePrice,runningBreakEven,runningContribution,assetName,assetTicker,portfolioName,timestamp,created,modified]);

@override
String toString() {
  return 'TransactionEntity(id: $id, assetId: $assetId, type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments, realizedPnl: $realizedPnl, cost: $cost, costBasis: $costBasis, contribution: $contribution, runningHolding: $runningHolding, runningCost: $runningCost, runningAveragePrice: $runningAveragePrice, runningBreakEven: $runningBreakEven, runningContribution: $runningContribution, assetName: $assetName, assetTicker: $assetTicker, portfolioName: $portfolioName, timestamp: $timestamp, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class $TransactionEntityCopyWith<$Res>  {
  factory $TransactionEntityCopyWith(TransactionEntity value, $Res Function(TransactionEntity) _then) = _$TransactionEntityCopyWithImpl;
@useResult
$Res call({
 int id, int assetId, String type, double quantity, double price, String date, String? comments, double realizedPnl, double cost, double costBasis, double contribution, double runningHolding, double runningCost, double runningAveragePrice, double runningBreakEven, double runningContribution, String assetName, String assetTicker, String portfolioName, int timestamp, String created, String modified
});




}
/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._self, this._then);

  final TransactionEntity _self;
  final $Res Function(TransactionEntity) _then;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assetId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,Object? realizedPnl = null,Object? cost = null,Object? costBasis = null,Object? contribution = null,Object? runningHolding = null,Object? runningCost = null,Object? runningAveragePrice = null,Object? runningBreakEven = null,Object? runningContribution = null,Object? assetName = null,Object? assetTicker = null,Object? portfolioName = null,Object? timestamp = null,Object? created = null,Object? modified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,costBasis: null == costBasis ? _self.costBasis : costBasis // ignore: cast_nullable_to_non_nullable
as double,contribution: null == contribution ? _self.contribution : contribution // ignore: cast_nullable_to_non_nullable
as double,runningHolding: null == runningHolding ? _self.runningHolding : runningHolding // ignore: cast_nullable_to_non_nullable
as double,runningCost: null == runningCost ? _self.runningCost : runningCost // ignore: cast_nullable_to_non_nullable
as double,runningAveragePrice: null == runningAveragePrice ? _self.runningAveragePrice : runningAveragePrice // ignore: cast_nullable_to_non_nullable
as double,runningBreakEven: null == runningBreakEven ? _self.runningBreakEven : runningBreakEven // ignore: cast_nullable_to_non_nullable
as double,runningContribution: null == runningContribution ? _self.runningContribution : runningContribution // ignore: cast_nullable_to_non_nullable
as double,assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String,assetTicker: null == assetTicker ? _self.assetTicker : assetTicker // ignore: cast_nullable_to_non_nullable
as String,portfolioName: null == portfolioName ? _self.portfolioName : portfolioName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionEntity].
extension TransactionEntityPatterns on TransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int assetId,  String type,  double quantity,  double price,  String date,  String? comments,  double realizedPnl,  double cost,  double costBasis,  double contribution,  double runningHolding,  double runningCost,  double runningAveragePrice,  double runningBreakEven,  double runningContribution,  String assetName,  String assetTicker,  String portfolioName,  int timestamp,  String created,  String modified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.realizedPnl,_that.cost,_that.costBasis,_that.contribution,_that.runningHolding,_that.runningCost,_that.runningAveragePrice,_that.runningBreakEven,_that.runningContribution,_that.assetName,_that.assetTicker,_that.portfolioName,_that.timestamp,_that.created,_that.modified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int assetId,  String type,  double quantity,  double price,  String date,  String? comments,  double realizedPnl,  double cost,  double costBasis,  double contribution,  double runningHolding,  double runningCost,  double runningAveragePrice,  double runningBreakEven,  double runningContribution,  String assetName,  String assetTicker,  String portfolioName,  int timestamp,  String created,  String modified)  $default,) {final _that = this;
switch (_that) {
case _TransactionEntity():
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.realizedPnl,_that.cost,_that.costBasis,_that.contribution,_that.runningHolding,_that.runningCost,_that.runningAveragePrice,_that.runningBreakEven,_that.runningContribution,_that.assetName,_that.assetTicker,_that.portfolioName,_that.timestamp,_that.created,_that.modified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int assetId,  String type,  double quantity,  double price,  String date,  String? comments,  double realizedPnl,  double cost,  double costBasis,  double contribution,  double runningHolding,  double runningCost,  double runningAveragePrice,  double runningBreakEven,  double runningContribution,  String assetName,  String assetTicker,  String portfolioName,  int timestamp,  String created,  String modified)?  $default,) {final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.realizedPnl,_that.cost,_that.costBasis,_that.contribution,_that.runningHolding,_that.runningCost,_that.runningAveragePrice,_that.runningBreakEven,_that.runningContribution,_that.assetName,_that.assetTicker,_that.portfolioName,_that.timestamp,_that.created,_that.modified);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionEntity implements TransactionEntity {
  const _TransactionEntity({required this.id, required this.assetId, required this.type, required this.quantity, required this.price, required this.date, this.comments, required this.realizedPnl, required this.cost, required this.costBasis, required this.contribution, required this.runningHolding, required this.runningCost, required this.runningAveragePrice, required this.runningBreakEven, required this.runningContribution, required this.assetName, required this.assetTicker, required this.portfolioName, required this.timestamp, required this.created, required this.modified});
  

@override final  int id;
@override final  int assetId;
@override final  String type;
@override final  double quantity;
@override final  double price;
@override final  String date;
@override final  String? comments;
@override final  double realizedPnl;
@override final  double cost;
@override final  double costBasis;
@override final  double contribution;
@override final  double runningHolding;
@override final  double runningCost;
@override final  double runningAveragePrice;
@override final  double runningBreakEven;
@override final  double runningContribution;
@override final  String assetName;
@override final  String assetTicker;
@override final  String portfolioName;
@override final  int timestamp;
@override final  String created;
@override final  String modified;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionEntityCopyWith<_TransactionEntity> get copyWith => __$TransactionEntityCopyWithImpl<_TransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.costBasis, costBasis) || other.costBasis == costBasis)&&(identical(other.contribution, contribution) || other.contribution == contribution)&&(identical(other.runningHolding, runningHolding) || other.runningHolding == runningHolding)&&(identical(other.runningCost, runningCost) || other.runningCost == runningCost)&&(identical(other.runningAveragePrice, runningAveragePrice) || other.runningAveragePrice == runningAveragePrice)&&(identical(other.runningBreakEven, runningBreakEven) || other.runningBreakEven == runningBreakEven)&&(identical(other.runningContribution, runningContribution) || other.runningContribution == runningContribution)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetTicker, assetTicker) || other.assetTicker == assetTicker)&&(identical(other.portfolioName, portfolioName) || other.portfolioName == portfolioName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,assetId,type,quantity,price,date,comments,realizedPnl,cost,costBasis,contribution,runningHolding,runningCost,runningAveragePrice,runningBreakEven,runningContribution,assetName,assetTicker,portfolioName,timestamp,created,modified]);

@override
String toString() {
  return 'TransactionEntity(id: $id, assetId: $assetId, type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments, realizedPnl: $realizedPnl, cost: $cost, costBasis: $costBasis, contribution: $contribution, runningHolding: $runningHolding, runningCost: $runningCost, runningAveragePrice: $runningAveragePrice, runningBreakEven: $runningBreakEven, runningContribution: $runningContribution, assetName: $assetName, assetTicker: $assetTicker, portfolioName: $portfolioName, timestamp: $timestamp, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class _$TransactionEntityCopyWith<$Res> implements $TransactionEntityCopyWith<$Res> {
  factory _$TransactionEntityCopyWith(_TransactionEntity value, $Res Function(_TransactionEntity) _then) = __$TransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int assetId, String type, double quantity, double price, String date, String? comments, double realizedPnl, double cost, double costBasis, double contribution, double runningHolding, double runningCost, double runningAveragePrice, double runningBreakEven, double runningContribution, String assetName, String assetTicker, String portfolioName, int timestamp, String created, String modified
});




}
/// @nodoc
class __$TransactionEntityCopyWithImpl<$Res>
    implements _$TransactionEntityCopyWith<$Res> {
  __$TransactionEntityCopyWithImpl(this._self, this._then);

  final _TransactionEntity _self;
  final $Res Function(_TransactionEntity) _then;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,Object? realizedPnl = null,Object? cost = null,Object? costBasis = null,Object? contribution = null,Object? runningHolding = null,Object? runningCost = null,Object? runningAveragePrice = null,Object? runningBreakEven = null,Object? runningContribution = null,Object? assetName = null,Object? assetTicker = null,Object? portfolioName = null,Object? timestamp = null,Object? created = null,Object? modified = null,}) {
  return _then(_TransactionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,costBasis: null == costBasis ? _self.costBasis : costBasis // ignore: cast_nullable_to_non_nullable
as double,contribution: null == contribution ? _self.contribution : contribution // ignore: cast_nullable_to_non_nullable
as double,runningHolding: null == runningHolding ? _self.runningHolding : runningHolding // ignore: cast_nullable_to_non_nullable
as double,runningCost: null == runningCost ? _self.runningCost : runningCost // ignore: cast_nullable_to_non_nullable
as double,runningAveragePrice: null == runningAveragePrice ? _self.runningAveragePrice : runningAveragePrice // ignore: cast_nullable_to_non_nullable
as double,runningBreakEven: null == runningBreakEven ? _self.runningBreakEven : runningBreakEven // ignore: cast_nullable_to_non_nullable
as double,runningContribution: null == runningContribution ? _self.runningContribution : runningContribution // ignore: cast_nullable_to_non_nullable
as double,assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String,assetTicker: null == assetTicker ? _self.assetTicker : assetTicker // ignore: cast_nullable_to_non_nullable
as String,portfolioName: null == portfolioName ? _self.portfolioName : portfolioName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
