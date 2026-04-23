// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PortfolioMetaModel {

 String get range;@JsonKey(name: 'validRanges') List<String> get validRanges;@JsonKey(name: 'volatilityRange') double get volatilityRange;@JsonKey(name: 'volatilityPct') double get volatilityPct; List<String> get currencies; List<String> get exchanges; List<String> get types;@JsonKey(name: 'fiftyTwoWeekLow') double get fiftyTwoWeekLow;@JsonKey(name: 'fiftyTwoWeekHigh') double get fiftyTwoWeekHigh;
/// Create a copy of PortfolioMetaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioMetaModelCopyWith<PortfolioMetaModel> get copyWith => _$PortfolioMetaModelCopyWithImpl<PortfolioMetaModel>(this as PortfolioMetaModel, _$identity);

  /// Serializes this PortfolioMetaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioMetaModel&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other.validRanges, validRanges)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other.currencies, currencies)&&const DeepCollectionEquality().equals(other.exchanges, exchanges)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(validRanges),volatilityRange,volatilityPct,const DeepCollectionEquality().hash(currencies),const DeepCollectionEquality().hash(exchanges),const DeepCollectionEquality().hash(types),fiftyTwoWeekLow,fiftyTwoWeekHigh);

@override
String toString() {
  return 'PortfolioMetaModel(range: $range, validRanges: $validRanges, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, currencies: $currencies, exchanges: $exchanges, types: $types, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh)';
}


}

/// @nodoc
abstract mixin class $PortfolioMetaModelCopyWith<$Res>  {
  factory $PortfolioMetaModelCopyWith(PortfolioMetaModel value, $Res Function(PortfolioMetaModel) _then) = _$PortfolioMetaModelCopyWithImpl;
@useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, List<String> currencies, List<String> exchanges, List<String> types,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh
});




}
/// @nodoc
class _$PortfolioMetaModelCopyWithImpl<$Res>
    implements $PortfolioMetaModelCopyWith<$Res> {
  _$PortfolioMetaModelCopyWithImpl(this._self, this._then);

  final PortfolioMetaModel _self;
  final $Res Function(PortfolioMetaModel) _then;

/// Create a copy of PortfolioMetaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? range = null,Object? validRanges = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? currencies = null,Object? exchanges = null,Object? types = null,Object? fiftyTwoWeekLow = null,Object? fiftyTwoWeekHigh = null,}) {
  return _then(_self.copyWith(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String,validRanges: null == validRanges ? _self.validRanges : validRanges // ignore: cast_nullable_to_non_nullable
as List<String>,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<String>,exchanges: null == exchanges ? _self.exchanges : exchanges // ignore: cast_nullable_to_non_nullable
as List<String>,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,fiftyTwoWeekLow: null == fiftyTwoWeekLow ? _self.fiftyTwoWeekLow : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekHigh: null == fiftyTwoWeekHigh ? _self.fiftyTwoWeekHigh : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PortfolioMetaModel].
extension PortfolioMetaModelPatterns on PortfolioMetaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioMetaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioMetaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioMetaModel value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioMetaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioMetaModel value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioMetaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  List<String> currencies,  List<String> exchanges,  List<String> types, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioMetaModel() when $default != null:
return $default(_that.range,_that.validRanges,_that.volatilityRange,_that.volatilityPct,_that.currencies,_that.exchanges,_that.types,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  List<String> currencies,  List<String> exchanges,  List<String> types, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh)  $default,) {final _that = this;
switch (_that) {
case _PortfolioMetaModel():
return $default(_that.range,_that.validRanges,_that.volatilityRange,_that.volatilityPct,_that.currencies,_that.exchanges,_that.types,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  List<String> currencies,  List<String> exchanges,  List<String> types, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioMetaModel() when $default != null:
return $default(_that.range,_that.validRanges,_that.volatilityRange,_that.volatilityPct,_that.currencies,_that.exchanges,_that.types,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PortfolioMetaModel implements PortfolioMetaModel {
  const _PortfolioMetaModel({required this.range, @JsonKey(name: 'validRanges') required final  List<String> validRanges, @JsonKey(name: 'volatilityRange') required this.volatilityRange, @JsonKey(name: 'volatilityPct') required this.volatilityPct, required final  List<String> currencies, required final  List<String> exchanges, required final  List<String> types, @JsonKey(name: 'fiftyTwoWeekLow') required this.fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh') required this.fiftyTwoWeekHigh}): _validRanges = validRanges,_currencies = currencies,_exchanges = exchanges,_types = types;
  factory _PortfolioMetaModel.fromJson(Map<String, dynamic> json) => _$PortfolioMetaModelFromJson(json);

@override final  String range;
 final  List<String> _validRanges;
@override@JsonKey(name: 'validRanges') List<String> get validRanges {
  if (_validRanges is EqualUnmodifiableListView) return _validRanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_validRanges);
}

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

@override@JsonKey(name: 'fiftyTwoWeekLow') final  double fiftyTwoWeekLow;
@override@JsonKey(name: 'fiftyTwoWeekHigh') final  double fiftyTwoWeekHigh;

/// Create a copy of PortfolioMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioMetaModelCopyWith<_PortfolioMetaModel> get copyWith => __$PortfolioMetaModelCopyWithImpl<_PortfolioMetaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortfolioMetaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioMetaModel&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other._validRanges, _validRanges)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&const DeepCollectionEquality().equals(other._exchanges, _exchanges)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(_validRanges),volatilityRange,volatilityPct,const DeepCollectionEquality().hash(_currencies),const DeepCollectionEquality().hash(_exchanges),const DeepCollectionEquality().hash(_types),fiftyTwoWeekLow,fiftyTwoWeekHigh);

@override
String toString() {
  return 'PortfolioMetaModel(range: $range, validRanges: $validRanges, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, currencies: $currencies, exchanges: $exchanges, types: $types, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh)';
}


}

/// @nodoc
abstract mixin class _$PortfolioMetaModelCopyWith<$Res> implements $PortfolioMetaModelCopyWith<$Res> {
  factory _$PortfolioMetaModelCopyWith(_PortfolioMetaModel value, $Res Function(_PortfolioMetaModel) _then) = __$PortfolioMetaModelCopyWithImpl;
@override @useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, List<String> currencies, List<String> exchanges, List<String> types,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh
});




}
/// @nodoc
class __$PortfolioMetaModelCopyWithImpl<$Res>
    implements _$PortfolioMetaModelCopyWith<$Res> {
  __$PortfolioMetaModelCopyWithImpl(this._self, this._then);

  final _PortfolioMetaModel _self;
  final $Res Function(_PortfolioMetaModel) _then;

/// Create a copy of PortfolioMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = null,Object? validRanges = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? currencies = null,Object? exchanges = null,Object? types = null,Object? fiftyTwoWeekLow = null,Object? fiftyTwoWeekHigh = null,}) {
  return _then(_PortfolioMetaModel(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String,validRanges: null == validRanges ? _self._validRanges : validRanges // ignore: cast_nullable_to_non_nullable
as List<String>,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<String>,exchanges: null == exchanges ? _self._exchanges : exchanges // ignore: cast_nullable_to_non_nullable
as List<String>,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,fiftyTwoWeekLow: null == fiftyTwoWeekLow ? _self.fiftyTwoWeekLow : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekHigh: null == fiftyTwoWeekHigh ? _self.fiftyTwoWeekHigh : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$PortfolioModel {

 int get id;@JsonKey(name: 'user_id') int get userId; String get name; String get description;@JsonKey(name: 'num_assets') int get numAssets; String get created; String get modified; PortfolioMetaModel get meta; double? get weight; bool get domestic; List<ChartDataModel> get chart; Map<String, List<ChartDataModel>> get multiChart; ChangesModel get changes; TotalsModel get totals; double get invested;@JsonKey(name: 'realizedPnl') double get realizedPnl; double get breakEven;@JsonKey(name: 'fxImpact') double get fxImpact;
/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioModelCopyWith<PortfolioModel> get copyWith => _$PortfolioModelCopyWithImpl<PortfolioModel>(this as PortfolioModel, _$identity);

  /// Serializes this PortfolioModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.numAssets, numAssets) || other.numAssets == numAssets)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.domestic, domestic) || other.domestic == domestic)&&const DeepCollectionEquality().equals(other.chart, chart)&&const DeepCollectionEquality().equals(other.multiChart, multiChart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,numAssets,created,modified,meta,weight,domestic,const DeepCollectionEquality().hash(chart),const DeepCollectionEquality().hash(multiChart),changes,totals,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'PortfolioModel(id: $id, userId: $userId, name: $name, description: $description, numAssets: $numAssets, created: $created, modified: $modified, meta: $meta, weight: $weight, domestic: $domestic, chart: $chart, multiChart: $multiChart, changes: $changes, totals: $totals, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class $PortfolioModelCopyWith<$Res>  {
  factory $PortfolioModelCopyWith(PortfolioModel value, $Res Function(PortfolioModel) _then) = _$PortfolioModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String name, String description,@JsonKey(name: 'num_assets') int numAssets, String created, String modified, PortfolioMetaModel meta, double? weight, bool domestic, List<ChartDataModel> chart, Map<String, List<ChartDataModel>> multiChart, ChangesModel changes, TotalsModel totals, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact
});


$PortfolioMetaModelCopyWith<$Res> get meta;$ChangesModelCopyWith<$Res> get changes;$TotalsModelCopyWith<$Res> get totals;

}
/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._self, this._then);

  final PortfolioModel _self;
  final $Res Function(PortfolioModel) _then;

/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = null,Object? numAssets = null,Object? created = null,Object? modified = null,Object? meta = null,Object? weight = freezed,Object? domestic = null,Object? chart = null,Object? multiChart = null,Object? changes = null,Object? totals = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,numAssets: null == numAssets ? _self.numAssets : numAssets // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PortfolioMetaModel,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,domestic: null == domestic ? _self.domestic : domestic // ignore: cast_nullable_to_non_nullable
as bool,chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
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
/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioMetaModelCopyWith<$Res> get meta {
  
  return $PortfolioMetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<$Res> get changes {
  
  return $ChangesModelCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalsModelCopyWith<$Res> get totals {
  
  return $TotalsModelCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [PortfolioModel].
extension PortfolioModelPatterns on PortfolioModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioModel value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioModel value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  String created,  String modified,  PortfolioMetaModel meta,  double? weight,  bool domestic,  List<ChartDataModel> chart,  Map<String, List<ChartDataModel>> multiChart,  ChangesModel changes,  TotalsModel totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioModel() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.meta,_that.weight,_that.domestic,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  String created,  String modified,  PortfolioMetaModel meta,  double? weight,  bool domestic,  List<ChartDataModel> chart,  Map<String, List<ChartDataModel>> multiChart,  ChangesModel changes,  TotalsModel totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)  $default,) {final _that = this;
switch (_that) {
case _PortfolioModel():
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.meta,_that.weight,_that.domestic,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int userId,  String name,  String description, @JsonKey(name: 'num_assets')  int numAssets,  String created,  String modified,  PortfolioMetaModel meta,  double? weight,  bool domestic,  List<ChartDataModel> chart,  Map<String, List<ChartDataModel>> multiChart,  ChangesModel changes,  TotalsModel totals,  double invested, @JsonKey(name: 'realizedPnl')  double realizedPnl,  double breakEven, @JsonKey(name: 'fxImpact')  double fxImpact)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioModel() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.numAssets,_that.created,_that.modified,_that.meta,_that.weight,_that.domestic,_that.chart,_that.multiChart,_that.changes,_that.totals,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PortfolioModel implements PortfolioModel {
  const _PortfolioModel({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.name, required this.description, @JsonKey(name: 'num_assets') required this.numAssets, required this.created, required this.modified, required this.meta, this.weight, required this.domestic, required final  List<ChartDataModel> chart, required final  Map<String, List<ChartDataModel>> multiChart, required this.changes, required this.totals, required this.invested, @JsonKey(name: 'realizedPnl') required this.realizedPnl, required this.breakEven, @JsonKey(name: 'fxImpact') required this.fxImpact}): _chart = chart,_multiChart = multiChart;
  factory _PortfolioModel.fromJson(Map<String, dynamic> json) => _$PortfolioModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  String name;
@override final  String description;
@override@JsonKey(name: 'num_assets') final  int numAssets;
@override final  String created;
@override final  String modified;
@override final  PortfolioMetaModel meta;
@override final  double? weight;
@override final  bool domestic;
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

/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioModelCopyWith<_PortfolioModel> get copyWith => __$PortfolioModelCopyWithImpl<_PortfolioModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortfolioModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.numAssets, numAssets) || other.numAssets == numAssets)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.domestic, domestic) || other.domestic == domestic)&&const DeepCollectionEquality().equals(other._chart, _chart)&&const DeepCollectionEquality().equals(other._multiChart, _multiChart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,numAssets,created,modified,meta,weight,domestic,const DeepCollectionEquality().hash(_chart),const DeepCollectionEquality().hash(_multiChart),changes,totals,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'PortfolioModel(id: $id, userId: $userId, name: $name, description: $description, numAssets: $numAssets, created: $created, modified: $modified, meta: $meta, weight: $weight, domestic: $domestic, chart: $chart, multiChart: $multiChart, changes: $changes, totals: $totals, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class _$PortfolioModelCopyWith<$Res> implements $PortfolioModelCopyWith<$Res> {
  factory _$PortfolioModelCopyWith(_PortfolioModel value, $Res Function(_PortfolioModel) _then) = __$PortfolioModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String name, String description,@JsonKey(name: 'num_assets') int numAssets, String created, String modified, PortfolioMetaModel meta, double? weight, bool domestic, List<ChartDataModel> chart, Map<String, List<ChartDataModel>> multiChart, ChangesModel changes, TotalsModel totals, double invested,@JsonKey(name: 'realizedPnl') double realizedPnl, double breakEven,@JsonKey(name: 'fxImpact') double fxImpact
});


@override $PortfolioMetaModelCopyWith<$Res> get meta;@override $ChangesModelCopyWith<$Res> get changes;@override $TotalsModelCopyWith<$Res> get totals;

}
/// @nodoc
class __$PortfolioModelCopyWithImpl<$Res>
    implements _$PortfolioModelCopyWith<$Res> {
  __$PortfolioModelCopyWithImpl(this._self, this._then);

  final _PortfolioModel _self;
  final $Res Function(_PortfolioModel) _then;

/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = null,Object? numAssets = null,Object? created = null,Object? modified = null,Object? meta = null,Object? weight = freezed,Object? domestic = null,Object? chart = null,Object? multiChart = null,Object? changes = null,Object? totals = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_PortfolioModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,numAssets: null == numAssets ? _self.numAssets : numAssets // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PortfolioMetaModel,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,domestic: null == domestic ? _self.domestic : domestic // ignore: cast_nullable_to_non_nullable
as bool,chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
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

/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioMetaModelCopyWith<$Res> get meta {
  
  return $PortfolioMetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<$Res> get changes {
  
  return $ChangesModelCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalsModelCopyWith<$Res> get totals {
  
  return $TotalsModelCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// @nodoc
mixin _$CreatePortfolioRequestModel {

 String get name; String get description;
/// Create a copy of CreatePortfolioRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePortfolioRequestModelCopyWith<CreatePortfolioRequestModel> get copyWith => _$CreatePortfolioRequestModelCopyWithImpl<CreatePortfolioRequestModel>(this as CreatePortfolioRequestModel, _$identity);

  /// Serializes this CreatePortfolioRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePortfolioRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'CreatePortfolioRequestModel(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreatePortfolioRequestModelCopyWith<$Res>  {
  factory $CreatePortfolioRequestModelCopyWith(CreatePortfolioRequestModel value, $Res Function(CreatePortfolioRequestModel) _then) = _$CreatePortfolioRequestModelCopyWithImpl;
@useResult
$Res call({
 String name, String description
});




}
/// @nodoc
class _$CreatePortfolioRequestModelCopyWithImpl<$Res>
    implements $CreatePortfolioRequestModelCopyWith<$Res> {
  _$CreatePortfolioRequestModelCopyWithImpl(this._self, this._then);

  final CreatePortfolioRequestModel _self;
  final $Res Function(CreatePortfolioRequestModel) _then;

/// Create a copy of CreatePortfolioRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePortfolioRequestModel].
extension CreatePortfolioRequestModelPatterns on CreatePortfolioRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePortfolioRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePortfolioRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePortfolioRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreatePortfolioRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePortfolioRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePortfolioRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePortfolioRequestModel() when $default != null:
return $default(_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description)  $default,) {final _that = this;
switch (_that) {
case _CreatePortfolioRequestModel():
return $default(_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description)?  $default,) {final _that = this;
switch (_that) {
case _CreatePortfolioRequestModel() when $default != null:
return $default(_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePortfolioRequestModel implements CreatePortfolioRequestModel {
  const _CreatePortfolioRequestModel({required this.name, required this.description});
  factory _CreatePortfolioRequestModel.fromJson(Map<String, dynamic> json) => _$CreatePortfolioRequestModelFromJson(json);

@override final  String name;
@override final  String description;

/// Create a copy of CreatePortfolioRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePortfolioRequestModelCopyWith<_CreatePortfolioRequestModel> get copyWith => __$CreatePortfolioRequestModelCopyWithImpl<_CreatePortfolioRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePortfolioRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePortfolioRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'CreatePortfolioRequestModel(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreatePortfolioRequestModelCopyWith<$Res> implements $CreatePortfolioRequestModelCopyWith<$Res> {
  factory _$CreatePortfolioRequestModelCopyWith(_CreatePortfolioRequestModel value, $Res Function(_CreatePortfolioRequestModel) _then) = __$CreatePortfolioRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String description
});




}
/// @nodoc
class __$CreatePortfolioRequestModelCopyWithImpl<$Res>
    implements _$CreatePortfolioRequestModelCopyWith<$Res> {
  __$CreatePortfolioRequestModelCopyWithImpl(this._self, this._then);

  final _CreatePortfolioRequestModel _self;
  final $Res Function(_CreatePortfolioRequestModel) _then;

/// Create a copy of CreatePortfolioRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,}) {
  return _then(_CreatePortfolioRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UpdatePortfolioRequestModel {

 String get name; String get description;
/// Create a copy of UpdatePortfolioRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePortfolioRequestModelCopyWith<UpdatePortfolioRequestModel> get copyWith => _$UpdatePortfolioRequestModelCopyWithImpl<UpdatePortfolioRequestModel>(this as UpdatePortfolioRequestModel, _$identity);

  /// Serializes this UpdatePortfolioRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePortfolioRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'UpdatePortfolioRequestModel(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $UpdatePortfolioRequestModelCopyWith<$Res>  {
  factory $UpdatePortfolioRequestModelCopyWith(UpdatePortfolioRequestModel value, $Res Function(UpdatePortfolioRequestModel) _then) = _$UpdatePortfolioRequestModelCopyWithImpl;
@useResult
$Res call({
 String name, String description
});




}
/// @nodoc
class _$UpdatePortfolioRequestModelCopyWithImpl<$Res>
    implements $UpdatePortfolioRequestModelCopyWith<$Res> {
  _$UpdatePortfolioRequestModelCopyWithImpl(this._self, this._then);

  final UpdatePortfolioRequestModel _self;
  final $Res Function(UpdatePortfolioRequestModel) _then;

/// Create a copy of UpdatePortfolioRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePortfolioRequestModel].
extension UpdatePortfolioRequestModelPatterns on UpdatePortfolioRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePortfolioRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePortfolioRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePortfolioRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePortfolioRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePortfolioRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePortfolioRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePortfolioRequestModel() when $default != null:
return $default(_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description)  $default,) {final _that = this;
switch (_that) {
case _UpdatePortfolioRequestModel():
return $default(_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePortfolioRequestModel() when $default != null:
return $default(_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatePortfolioRequestModel implements UpdatePortfolioRequestModel {
  const _UpdatePortfolioRequestModel({required this.name, required this.description});
  factory _UpdatePortfolioRequestModel.fromJson(Map<String, dynamic> json) => _$UpdatePortfolioRequestModelFromJson(json);

@override final  String name;
@override final  String description;

/// Create a copy of UpdatePortfolioRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePortfolioRequestModelCopyWith<_UpdatePortfolioRequestModel> get copyWith => __$UpdatePortfolioRequestModelCopyWithImpl<_UpdatePortfolioRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePortfolioRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePortfolioRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'UpdatePortfolioRequestModel(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$UpdatePortfolioRequestModelCopyWith<$Res> implements $UpdatePortfolioRequestModelCopyWith<$Res> {
  factory _$UpdatePortfolioRequestModelCopyWith(_UpdatePortfolioRequestModel value, $Res Function(_UpdatePortfolioRequestModel) _then) = __$UpdatePortfolioRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String description
});




}
/// @nodoc
class __$UpdatePortfolioRequestModelCopyWithImpl<$Res>
    implements _$UpdatePortfolioRequestModelCopyWith<$Res> {
  __$UpdatePortfolioRequestModelCopyWithImpl(this._self, this._then);

  final _UpdatePortfolioRequestModel _self;
  final $Res Function(_UpdatePortfolioRequestModel) _then;

/// Create a copy of UpdatePortfolioRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,}) {
  return _then(_UpdatePortfolioRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$IdResponseModel {

 int get id;
/// Create a copy of IdResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdResponseModelCopyWith<IdResponseModel> get copyWith => _$IdResponseModelCopyWithImpl<IdResponseModel>(this as IdResponseModel, _$identity);

  /// Serializes this IdResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdResponseModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'IdResponseModel(id: $id)';
}


}

/// @nodoc
abstract mixin class $IdResponseModelCopyWith<$Res>  {
  factory $IdResponseModelCopyWith(IdResponseModel value, $Res Function(IdResponseModel) _then) = _$IdResponseModelCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$IdResponseModelCopyWithImpl<$Res>
    implements $IdResponseModelCopyWith<$Res> {
  _$IdResponseModelCopyWithImpl(this._self, this._then);

  final IdResponseModel _self;
  final $Res Function(IdResponseModel) _then;

/// Create a copy of IdResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [IdResponseModel].
extension IdResponseModelPatterns on IdResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IdResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IdResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IdResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _IdResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IdResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _IdResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IdResponseModel() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id)  $default,) {final _that = this;
switch (_that) {
case _IdResponseModel():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id)?  $default,) {final _that = this;
switch (_that) {
case _IdResponseModel() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IdResponseModel implements IdResponseModel {
  const _IdResponseModel({required this.id});
  factory _IdResponseModel.fromJson(Map<String, dynamic> json) => _$IdResponseModelFromJson(json);

@override final  int id;

/// Create a copy of IdResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdResponseModelCopyWith<_IdResponseModel> get copyWith => __$IdResponseModelCopyWithImpl<_IdResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IdResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdResponseModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'IdResponseModel(id: $id)';
}


}

/// @nodoc
abstract mixin class _$IdResponseModelCopyWith<$Res> implements $IdResponseModelCopyWith<$Res> {
  factory _$IdResponseModelCopyWith(_IdResponseModel value, $Res Function(_IdResponseModel) _then) = __$IdResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$IdResponseModelCopyWithImpl<$Res>
    implements _$IdResponseModelCopyWith<$Res> {
  __$IdResponseModelCopyWithImpl(this._self, this._then);

  final _IdResponseModel _self;
  final $Res Function(_IdResponseModel) _then;

/// Create a copy of IdResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_IdResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
