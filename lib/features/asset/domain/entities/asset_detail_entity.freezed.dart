// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssetDetailEntity {

 int get id; int get portfolioId; String get ticker; String get name; int get userId; double get holdings; double get invested; double get avgPrice; double get breakEven; double get realizedPnl; int get numTxs; String get baseCcy; double? get weight; double get fxImpact; double get volatilityRange; double get volatilityPct; List<SummaryChartEntity> get chart; SummaryMetaEntity get meta; SummaryChangesEntity get changes; SummaryTotalsEntity get totals;
/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetDetailEntityCopyWith<AssetDetailEntity> get copyWith => _$AssetDetailEntityCopyWithImpl<AssetDetailEntity>(this as AssetDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.portfolioId, portfolioId) || other.portfolioId == portfolioId)&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.holdings, holdings) || other.holdings == holdings)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.numTxs, numTxs) || other.numTxs == numTxs)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other.chart, chart)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,portfolioId,ticker,name,userId,holdings,invested,avgPrice,breakEven,realizedPnl,numTxs,baseCcy,weight,fxImpact,volatilityRange,volatilityPct,const DeepCollectionEquality().hash(chart),meta,changes,totals]);

@override
String toString() {
  return 'AssetDetailEntity(id: $id, portfolioId: $portfolioId, ticker: $ticker, name: $name, userId: $userId, holdings: $holdings, invested: $invested, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl, numTxs: $numTxs, baseCcy: $baseCcy, weight: $weight, fxImpact: $fxImpact, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, chart: $chart, meta: $meta, changes: $changes, totals: $totals)';
}


}

/// @nodoc
abstract mixin class $AssetDetailEntityCopyWith<$Res>  {
  factory $AssetDetailEntityCopyWith(AssetDetailEntity value, $Res Function(AssetDetailEntity) _then) = _$AssetDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, int portfolioId, String ticker, String name, int userId, double holdings, double invested, double avgPrice, double breakEven, double realizedPnl, int numTxs, String baseCcy, double? weight, double fxImpact, double volatilityRange, double volatilityPct, List<SummaryChartEntity> chart, SummaryMetaEntity meta, SummaryChangesEntity changes, SummaryTotalsEntity totals
});


$SummaryMetaEntityCopyWith<$Res> get meta;$SummaryChangesEntityCopyWith<$Res> get changes;$SummaryTotalsEntityCopyWith<$Res> get totals;

}
/// @nodoc
class _$AssetDetailEntityCopyWithImpl<$Res>
    implements $AssetDetailEntityCopyWith<$Res> {
  _$AssetDetailEntityCopyWithImpl(this._self, this._then);

  final AssetDetailEntity _self;
  final $Res Function(AssetDetailEntity) _then;

/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? portfolioId = null,Object? ticker = null,Object? name = null,Object? userId = null,Object? holdings = null,Object? invested = null,Object? avgPrice = null,Object? breakEven = null,Object? realizedPnl = null,Object? numTxs = null,Object? baseCcy = null,Object? weight = freezed,Object? fxImpact = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? chart = null,Object? meta = null,Object? changes = null,Object? totals = null,}) {
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
as int,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<SummaryChartEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SummaryMetaEntity,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as SummaryChangesEntity,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as SummaryTotalsEntity,
  ));
}
/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryMetaEntityCopyWith<$Res> get meta {
  
  return $SummaryMetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryChangesEntityCopyWith<$Res> get changes {
  
  return $SummaryChangesEntityCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryTotalsEntityCopyWith<$Res> get totals {
  
  return $SummaryTotalsEntityCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssetDetailEntity].
extension AssetDetailEntityPatterns on AssetDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _AssetDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AssetDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int portfolioId,  String ticker,  String name,  int userId,  double holdings,  double invested,  double avgPrice,  double breakEven,  double realizedPnl,  int numTxs,  String baseCcy,  double? weight,  double fxImpact,  double volatilityRange,  double volatilityPct,  List<SummaryChartEntity> chart,  SummaryMetaEntity meta,  SummaryChangesEntity changes,  SummaryTotalsEntity totals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetDetailEntity() when $default != null:
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.baseCcy,_that.weight,_that.fxImpact,_that.volatilityRange,_that.volatilityPct,_that.chart,_that.meta,_that.changes,_that.totals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int portfolioId,  String ticker,  String name,  int userId,  double holdings,  double invested,  double avgPrice,  double breakEven,  double realizedPnl,  int numTxs,  String baseCcy,  double? weight,  double fxImpact,  double volatilityRange,  double volatilityPct,  List<SummaryChartEntity> chart,  SummaryMetaEntity meta,  SummaryChangesEntity changes,  SummaryTotalsEntity totals)  $default,) {final _that = this;
switch (_that) {
case _AssetDetailEntity():
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.baseCcy,_that.weight,_that.fxImpact,_that.volatilityRange,_that.volatilityPct,_that.chart,_that.meta,_that.changes,_that.totals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int portfolioId,  String ticker,  String name,  int userId,  double holdings,  double invested,  double avgPrice,  double breakEven,  double realizedPnl,  int numTxs,  String baseCcy,  double? weight,  double fxImpact,  double volatilityRange,  double volatilityPct,  List<SummaryChartEntity> chart,  SummaryMetaEntity meta,  SummaryChangesEntity changes,  SummaryTotalsEntity totals)?  $default,) {final _that = this;
switch (_that) {
case _AssetDetailEntity() when $default != null:
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.baseCcy,_that.weight,_that.fxImpact,_that.volatilityRange,_that.volatilityPct,_that.chart,_that.meta,_that.changes,_that.totals);case _:
  return null;

}
}

}

/// @nodoc


class _AssetDetailEntity implements AssetDetailEntity {
  const _AssetDetailEntity({required this.id, required this.portfolioId, required this.ticker, required this.name, required this.userId, required this.holdings, required this.invested, required this.avgPrice, required this.breakEven, required this.realizedPnl, required this.numTxs, required this.baseCcy, this.weight, required this.fxImpact, required this.volatilityRange, required this.volatilityPct, required final  List<SummaryChartEntity> chart, required this.meta, required this.changes, required this.totals}): _chart = chart;
  

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
@override final  String baseCcy;
@override final  double? weight;
@override final  double fxImpact;
@override final  double volatilityRange;
@override final  double volatilityPct;
 final  List<SummaryChartEntity> _chart;
@override List<SummaryChartEntity> get chart {
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chart);
}

@override final  SummaryMetaEntity meta;
@override final  SummaryChangesEntity changes;
@override final  SummaryTotalsEntity totals;

/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetDetailEntityCopyWith<_AssetDetailEntity> get copyWith => __$AssetDetailEntityCopyWithImpl<_AssetDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.portfolioId, portfolioId) || other.portfolioId == portfolioId)&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.holdings, holdings) || other.holdings == holdings)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.numTxs, numTxs) || other.numTxs == numTxs)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other._chart, _chart)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,portfolioId,ticker,name,userId,holdings,invested,avgPrice,breakEven,realizedPnl,numTxs,baseCcy,weight,fxImpact,volatilityRange,volatilityPct,const DeepCollectionEquality().hash(_chart),meta,changes,totals]);

@override
String toString() {
  return 'AssetDetailEntity(id: $id, portfolioId: $portfolioId, ticker: $ticker, name: $name, userId: $userId, holdings: $holdings, invested: $invested, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl, numTxs: $numTxs, baseCcy: $baseCcy, weight: $weight, fxImpact: $fxImpact, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, chart: $chart, meta: $meta, changes: $changes, totals: $totals)';
}


}

/// @nodoc
abstract mixin class _$AssetDetailEntityCopyWith<$Res> implements $AssetDetailEntityCopyWith<$Res> {
  factory _$AssetDetailEntityCopyWith(_AssetDetailEntity value, $Res Function(_AssetDetailEntity) _then) = __$AssetDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int portfolioId, String ticker, String name, int userId, double holdings, double invested, double avgPrice, double breakEven, double realizedPnl, int numTxs, String baseCcy, double? weight, double fxImpact, double volatilityRange, double volatilityPct, List<SummaryChartEntity> chart, SummaryMetaEntity meta, SummaryChangesEntity changes, SummaryTotalsEntity totals
});


@override $SummaryMetaEntityCopyWith<$Res> get meta;@override $SummaryChangesEntityCopyWith<$Res> get changes;@override $SummaryTotalsEntityCopyWith<$Res> get totals;

}
/// @nodoc
class __$AssetDetailEntityCopyWithImpl<$Res>
    implements _$AssetDetailEntityCopyWith<$Res> {
  __$AssetDetailEntityCopyWithImpl(this._self, this._then);

  final _AssetDetailEntity _self;
  final $Res Function(_AssetDetailEntity) _then;

/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? portfolioId = null,Object? ticker = null,Object? name = null,Object? userId = null,Object? holdings = null,Object? invested = null,Object? avgPrice = null,Object? breakEven = null,Object? realizedPnl = null,Object? numTxs = null,Object? baseCcy = null,Object? weight = freezed,Object? fxImpact = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? chart = null,Object? meta = null,Object? changes = null,Object? totals = null,}) {
  return _then(_AssetDetailEntity(
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
as int,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<SummaryChartEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SummaryMetaEntity,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as SummaryChangesEntity,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as SummaryTotalsEntity,
  ));
}

/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryMetaEntityCopyWith<$Res> get meta {
  
  return $SummaryMetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of AssetDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryChangesEntityCopyWith<$Res> get changes {
  
  return $SummaryChangesEntityCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of AssetDetailEntity
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
