// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssetMetaModel {

 String get range;@JsonKey(name: 'validRanges') List<String> get validRanges;@JsonKey(name: 'volatilityRange') double get volatilityRange;@JsonKey(name: 'volatilityPct') double get volatilityPct;@JsonKey(name: 'fiftyTwoWeekLow') double get fiftyTwoWeekLow;@JsonKey(name: 'fiftyTwoWeekHigh') double get fiftyTwoWeekHigh;
/// Create a copy of AssetMetaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetMetaModelCopyWith<AssetMetaModel> get copyWith => _$AssetMetaModelCopyWithImpl<AssetMetaModel>(this as AssetMetaModel, _$identity);

  /// Serializes this AssetMetaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetMetaModel&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other.validRanges, validRanges)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(validRanges),volatilityRange,volatilityPct,fiftyTwoWeekLow,fiftyTwoWeekHigh);

@override
String toString() {
  return 'AssetMetaModel(range: $range, validRanges: $validRanges, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh)';
}


}

/// @nodoc
abstract mixin class $AssetMetaModelCopyWith<$Res>  {
  factory $AssetMetaModelCopyWith(AssetMetaModel value, $Res Function(AssetMetaModel) _then) = _$AssetMetaModelCopyWithImpl;
@useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh
});




}
/// @nodoc
class _$AssetMetaModelCopyWithImpl<$Res>
    implements $AssetMetaModelCopyWith<$Res> {
  _$AssetMetaModelCopyWithImpl(this._self, this._then);

  final AssetMetaModel _self;
  final $Res Function(AssetMetaModel) _then;

/// Create a copy of AssetMetaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? range = null,Object? validRanges = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? fiftyTwoWeekLow = null,Object? fiftyTwoWeekHigh = null,}) {
  return _then(_self.copyWith(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String,validRanges: null == validRanges ? _self.validRanges : validRanges // ignore: cast_nullable_to_non_nullable
as List<String>,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekLow: null == fiftyTwoWeekLow ? _self.fiftyTwoWeekLow : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekHigh: null == fiftyTwoWeekHigh ? _self.fiftyTwoWeekHigh : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AssetMetaModel].
extension AssetMetaModelPatterns on AssetMetaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetMetaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetMetaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetMetaModel value)  $default,){
final _that = this;
switch (_that) {
case _AssetMetaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetMetaModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssetMetaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetMetaModel() when $default != null:
return $default(_that.range,_that.validRanges,_that.volatilityRange,_that.volatilityPct,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh)  $default,) {final _that = this;
switch (_that) {
case _AssetMetaModel():
return $default(_that.range,_that.validRanges,_that.volatilityRange,_that.volatilityPct,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String range, @JsonKey(name: 'validRanges')  List<String> validRanges, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct, @JsonKey(name: 'fiftyTwoWeekLow')  double fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh')  double fiftyTwoWeekHigh)?  $default,) {final _that = this;
switch (_that) {
case _AssetMetaModel() when $default != null:
return $default(_that.range,_that.validRanges,_that.volatilityRange,_that.volatilityPct,_that.fiftyTwoWeekLow,_that.fiftyTwoWeekHigh);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetMetaModel implements AssetMetaModel {
  const _AssetMetaModel({required this.range, @JsonKey(name: 'validRanges') required final  List<String> validRanges, @JsonKey(name: 'volatilityRange') required this.volatilityRange, @JsonKey(name: 'volatilityPct') required this.volatilityPct, @JsonKey(name: 'fiftyTwoWeekLow') required this.fiftyTwoWeekLow, @JsonKey(name: 'fiftyTwoWeekHigh') required this.fiftyTwoWeekHigh}): _validRanges = validRanges;
  factory _AssetMetaModel.fromJson(Map<String, dynamic> json) => _$AssetMetaModelFromJson(json);

@override final  String range;
 final  List<String> _validRanges;
@override@JsonKey(name: 'validRanges') List<String> get validRanges {
  if (_validRanges is EqualUnmodifiableListView) return _validRanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_validRanges);
}

@override@JsonKey(name: 'volatilityRange') final  double volatilityRange;
@override@JsonKey(name: 'volatilityPct') final  double volatilityPct;
@override@JsonKey(name: 'fiftyTwoWeekLow') final  double fiftyTwoWeekLow;
@override@JsonKey(name: 'fiftyTwoWeekHigh') final  double fiftyTwoWeekHigh;

/// Create a copy of AssetMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetMetaModelCopyWith<_AssetMetaModel> get copyWith => __$AssetMetaModelCopyWithImpl<_AssetMetaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetMetaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetMetaModel&&(identical(other.range, range) || other.range == range)&&const DeepCollectionEquality().equals(other._validRanges, _validRanges)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,const DeepCollectionEquality().hash(_validRanges),volatilityRange,volatilityPct,fiftyTwoWeekLow,fiftyTwoWeekHigh);

@override
String toString() {
  return 'AssetMetaModel(range: $range, validRanges: $validRanges, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyTwoWeekHigh: $fiftyTwoWeekHigh)';
}


}

/// @nodoc
abstract mixin class _$AssetMetaModelCopyWith<$Res> implements $AssetMetaModelCopyWith<$Res> {
  factory _$AssetMetaModelCopyWith(_AssetMetaModel value, $Res Function(_AssetMetaModel) _then) = __$AssetMetaModelCopyWithImpl;
@override @useResult
$Res call({
 String range,@JsonKey(name: 'validRanges') List<String> validRanges,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct,@JsonKey(name: 'fiftyTwoWeekLow') double fiftyTwoWeekLow,@JsonKey(name: 'fiftyTwoWeekHigh') double fiftyTwoWeekHigh
});




}
/// @nodoc
class __$AssetMetaModelCopyWithImpl<$Res>
    implements _$AssetMetaModelCopyWith<$Res> {
  __$AssetMetaModelCopyWithImpl(this._self, this._then);

  final _AssetMetaModel _self;
  final $Res Function(_AssetMetaModel) _then;

/// Create a copy of AssetMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = null,Object? validRanges = null,Object? volatilityRange = null,Object? volatilityPct = null,Object? fiftyTwoWeekLow = null,Object? fiftyTwoWeekHigh = null,}) {
  return _then(_AssetMetaModel(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String,validRanges: null == validRanges ? _self._validRanges : validRanges // ignore: cast_nullable_to_non_nullable
as List<String>,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekLow: null == fiftyTwoWeekLow ? _self.fiftyTwoWeekLow : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekHigh: null == fiftyTwoWeekHigh ? _self.fiftyTwoWeekHigh : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AssetCurrencyDataModel {

 List<ChartDataModel> get chart; ChangesModel get changes; TotalsModel get totals;
/// Create a copy of AssetCurrencyDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetCurrencyDataModelCopyWith<AssetCurrencyDataModel> get copyWith => _$AssetCurrencyDataModelCopyWithImpl<AssetCurrencyDataModel>(this as AssetCurrencyDataModel, _$identity);

  /// Serializes this AssetCurrencyDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetCurrencyDataModel&&const DeepCollectionEquality().equals(other.chart, chart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chart),changes,totals);

@override
String toString() {
  return 'AssetCurrencyDataModel(chart: $chart, changes: $changes, totals: $totals)';
}


}

/// @nodoc
abstract mixin class $AssetCurrencyDataModelCopyWith<$Res>  {
  factory $AssetCurrencyDataModelCopyWith(AssetCurrencyDataModel value, $Res Function(AssetCurrencyDataModel) _then) = _$AssetCurrencyDataModelCopyWithImpl;
@useResult
$Res call({
 List<ChartDataModel> chart, ChangesModel changes, TotalsModel totals
});


$ChangesModelCopyWith<$Res> get changes;$TotalsModelCopyWith<$Res> get totals;

}
/// @nodoc
class _$AssetCurrencyDataModelCopyWithImpl<$Res>
    implements $AssetCurrencyDataModelCopyWith<$Res> {
  _$AssetCurrencyDataModelCopyWithImpl(this._self, this._then);

  final AssetCurrencyDataModel _self;
  final $Res Function(AssetCurrencyDataModel) _then;

/// Create a copy of AssetCurrencyDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chart = null,Object? changes = null,Object? totals = null,}) {
  return _then(_self.copyWith(
chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartDataModel>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as ChangesModel,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as TotalsModel,
  ));
}
/// Create a copy of AssetCurrencyDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<$Res> get changes {
  
  return $ChangesModelCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of AssetCurrencyDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalsModelCopyWith<$Res> get totals {
  
  return $TotalsModelCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssetCurrencyDataModel].
extension AssetCurrencyDataModelPatterns on AssetCurrencyDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetCurrencyDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetCurrencyDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetCurrencyDataModel value)  $default,){
final _that = this;
switch (_that) {
case _AssetCurrencyDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetCurrencyDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssetCurrencyDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChartDataModel> chart,  ChangesModel changes,  TotalsModel totals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetCurrencyDataModel() when $default != null:
return $default(_that.chart,_that.changes,_that.totals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChartDataModel> chart,  ChangesModel changes,  TotalsModel totals)  $default,) {final _that = this;
switch (_that) {
case _AssetCurrencyDataModel():
return $default(_that.chart,_that.changes,_that.totals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChartDataModel> chart,  ChangesModel changes,  TotalsModel totals)?  $default,) {final _that = this;
switch (_that) {
case _AssetCurrencyDataModel() when $default != null:
return $default(_that.chart,_that.changes,_that.totals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetCurrencyDataModel implements AssetCurrencyDataModel {
  const _AssetCurrencyDataModel({required final  List<ChartDataModel> chart, required this.changes, required this.totals}): _chart = chart;
  factory _AssetCurrencyDataModel.fromJson(Map<String, dynamic> json) => _$AssetCurrencyDataModelFromJson(json);

 final  List<ChartDataModel> _chart;
@override List<ChartDataModel> get chart {
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chart);
}

@override final  ChangesModel changes;
@override final  TotalsModel totals;

/// Create a copy of AssetCurrencyDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetCurrencyDataModelCopyWith<_AssetCurrencyDataModel> get copyWith => __$AssetCurrencyDataModelCopyWithImpl<_AssetCurrencyDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetCurrencyDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetCurrencyDataModel&&const DeepCollectionEquality().equals(other._chart, _chart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chart),changes,totals);

@override
String toString() {
  return 'AssetCurrencyDataModel(chart: $chart, changes: $changes, totals: $totals)';
}


}

/// @nodoc
abstract mixin class _$AssetCurrencyDataModelCopyWith<$Res> implements $AssetCurrencyDataModelCopyWith<$Res> {
  factory _$AssetCurrencyDataModelCopyWith(_AssetCurrencyDataModel value, $Res Function(_AssetCurrencyDataModel) _then) = __$AssetCurrencyDataModelCopyWithImpl;
@override @useResult
$Res call({
 List<ChartDataModel> chart, ChangesModel changes, TotalsModel totals
});


@override $ChangesModelCopyWith<$Res> get changes;@override $TotalsModelCopyWith<$Res> get totals;

}
/// @nodoc
class __$AssetCurrencyDataModelCopyWithImpl<$Res>
    implements _$AssetCurrencyDataModelCopyWith<$Res> {
  __$AssetCurrencyDataModelCopyWithImpl(this._self, this._then);

  final _AssetCurrencyDataModel _self;
  final $Res Function(_AssetCurrencyDataModel) _then;

/// Create a copy of AssetCurrencyDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chart = null,Object? changes = null,Object? totals = null,}) {
  return _then(_AssetCurrencyDataModel(
chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartDataModel>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as ChangesModel,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as TotalsModel,
  ));
}

/// Create a copy of AssetCurrencyDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<$Res> get changes {
  
  return $ChangesModelCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of AssetCurrencyDataModel
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
mixin _$AssetBaseDataModel {

 bool get domestic; double get invested;@JsonKey(name: 'fxImpact') double get fxImpact; double get fxRate; List<ChartDataModel> get chart; ChangesModel get changes; TotalsModel get totals; double? get avgPrice; double? get breakEven;@JsonKey(name: 'realizedPnl') double get realizedPnl;
/// Create a copy of AssetBaseDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetBaseDataModelCopyWith<AssetBaseDataModel> get copyWith => _$AssetBaseDataModelCopyWithImpl<AssetBaseDataModel>(this as AssetBaseDataModel, _$identity);

  /// Serializes this AssetBaseDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetBaseDataModel&&(identical(other.domestic, domestic) || other.domestic == domestic)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact)&&(identical(other.fxRate, fxRate) || other.fxRate == fxRate)&&const DeepCollectionEquality().equals(other.chart, chart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,domestic,invested,fxImpact,fxRate,const DeepCollectionEquality().hash(chart),changes,totals,avgPrice,breakEven,realizedPnl);

@override
String toString() {
  return 'AssetBaseDataModel(domestic: $domestic, invested: $invested, fxImpact: $fxImpact, fxRate: $fxRate, chart: $chart, changes: $changes, totals: $totals, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl)';
}


}

/// @nodoc
abstract mixin class $AssetBaseDataModelCopyWith<$Res>  {
  factory $AssetBaseDataModelCopyWith(AssetBaseDataModel value, $Res Function(AssetBaseDataModel) _then) = _$AssetBaseDataModelCopyWithImpl;
@useResult
$Res call({
 bool domestic, double invested,@JsonKey(name: 'fxImpact') double fxImpact, double fxRate, List<ChartDataModel> chart, ChangesModel changes, TotalsModel totals, double? avgPrice, double? breakEven,@JsonKey(name: 'realizedPnl') double realizedPnl
});


$ChangesModelCopyWith<$Res> get changes;$TotalsModelCopyWith<$Res> get totals;

}
/// @nodoc
class _$AssetBaseDataModelCopyWithImpl<$Res>
    implements $AssetBaseDataModelCopyWith<$Res> {
  _$AssetBaseDataModelCopyWithImpl(this._self, this._then);

  final AssetBaseDataModel _self;
  final $Res Function(AssetBaseDataModel) _then;

/// Create a copy of AssetBaseDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? domestic = null,Object? invested = null,Object? fxImpact = null,Object? fxRate = null,Object? chart = null,Object? changes = null,Object? totals = null,Object? avgPrice = freezed,Object? breakEven = freezed,Object? realizedPnl = null,}) {
  return _then(_self.copyWith(
domestic: null == domestic ? _self.domestic : domestic // ignore: cast_nullable_to_non_nullable
as bool,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,fxRate: null == fxRate ? _self.fxRate : fxRate // ignore: cast_nullable_to_non_nullable
as double,chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartDataModel>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as ChangesModel,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as TotalsModel,avgPrice: freezed == avgPrice ? _self.avgPrice : avgPrice // ignore: cast_nullable_to_non_nullable
as double?,breakEven: freezed == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double?,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of AssetBaseDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<$Res> get changes {
  
  return $ChangesModelCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of AssetBaseDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalsModelCopyWith<$Res> get totals {
  
  return $TotalsModelCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssetBaseDataModel].
extension AssetBaseDataModelPatterns on AssetBaseDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetBaseDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetBaseDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetBaseDataModel value)  $default,){
final _that = this;
switch (_that) {
case _AssetBaseDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetBaseDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssetBaseDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool domestic,  double invested, @JsonKey(name: 'fxImpact')  double fxImpact,  double fxRate,  List<ChartDataModel> chart,  ChangesModel changes,  TotalsModel totals,  double? avgPrice,  double? breakEven, @JsonKey(name: 'realizedPnl')  double realizedPnl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetBaseDataModel() when $default != null:
return $default(_that.domestic,_that.invested,_that.fxImpact,_that.fxRate,_that.chart,_that.changes,_that.totals,_that.avgPrice,_that.breakEven,_that.realizedPnl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool domestic,  double invested, @JsonKey(name: 'fxImpact')  double fxImpact,  double fxRate,  List<ChartDataModel> chart,  ChangesModel changes,  TotalsModel totals,  double? avgPrice,  double? breakEven, @JsonKey(name: 'realizedPnl')  double realizedPnl)  $default,) {final _that = this;
switch (_that) {
case _AssetBaseDataModel():
return $default(_that.domestic,_that.invested,_that.fxImpact,_that.fxRate,_that.chart,_that.changes,_that.totals,_that.avgPrice,_that.breakEven,_that.realizedPnl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool domestic,  double invested, @JsonKey(name: 'fxImpact')  double fxImpact,  double fxRate,  List<ChartDataModel> chart,  ChangesModel changes,  TotalsModel totals,  double? avgPrice,  double? breakEven, @JsonKey(name: 'realizedPnl')  double realizedPnl)?  $default,) {final _that = this;
switch (_that) {
case _AssetBaseDataModel() when $default != null:
return $default(_that.domestic,_that.invested,_that.fxImpact,_that.fxRate,_that.chart,_that.changes,_that.totals,_that.avgPrice,_that.breakEven,_that.realizedPnl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetBaseDataModel implements AssetBaseDataModel {
  const _AssetBaseDataModel({required this.domestic, required this.invested, @JsonKey(name: 'fxImpact') required this.fxImpact, required this.fxRate, required final  List<ChartDataModel> chart, required this.changes, required this.totals, this.avgPrice, this.breakEven, @JsonKey(name: 'realizedPnl') required this.realizedPnl}): _chart = chart;
  factory _AssetBaseDataModel.fromJson(Map<String, dynamic> json) => _$AssetBaseDataModelFromJson(json);

@override final  bool domestic;
@override final  double invested;
@override@JsonKey(name: 'fxImpact') final  double fxImpact;
@override final  double fxRate;
 final  List<ChartDataModel> _chart;
@override List<ChartDataModel> get chart {
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chart);
}

@override final  ChangesModel changes;
@override final  TotalsModel totals;
@override final  double? avgPrice;
@override final  double? breakEven;
@override@JsonKey(name: 'realizedPnl') final  double realizedPnl;

/// Create a copy of AssetBaseDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetBaseDataModelCopyWith<_AssetBaseDataModel> get copyWith => __$AssetBaseDataModelCopyWithImpl<_AssetBaseDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetBaseDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetBaseDataModel&&(identical(other.domestic, domestic) || other.domestic == domestic)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact)&&(identical(other.fxRate, fxRate) || other.fxRate == fxRate)&&const DeepCollectionEquality().equals(other._chart, _chart)&&(identical(other.changes, changes) || other.changes == changes)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,domestic,invested,fxImpact,fxRate,const DeepCollectionEquality().hash(_chart),changes,totals,avgPrice,breakEven,realizedPnl);

@override
String toString() {
  return 'AssetBaseDataModel(domestic: $domestic, invested: $invested, fxImpact: $fxImpact, fxRate: $fxRate, chart: $chart, changes: $changes, totals: $totals, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl)';
}


}

/// @nodoc
abstract mixin class _$AssetBaseDataModelCopyWith<$Res> implements $AssetBaseDataModelCopyWith<$Res> {
  factory _$AssetBaseDataModelCopyWith(_AssetBaseDataModel value, $Res Function(_AssetBaseDataModel) _then) = __$AssetBaseDataModelCopyWithImpl;
@override @useResult
$Res call({
 bool domestic, double invested,@JsonKey(name: 'fxImpact') double fxImpact, double fxRate, List<ChartDataModel> chart, ChangesModel changes, TotalsModel totals, double? avgPrice, double? breakEven,@JsonKey(name: 'realizedPnl') double realizedPnl
});


@override $ChangesModelCopyWith<$Res> get changes;@override $TotalsModelCopyWith<$Res> get totals;

}
/// @nodoc
class __$AssetBaseDataModelCopyWithImpl<$Res>
    implements _$AssetBaseDataModelCopyWith<$Res> {
  __$AssetBaseDataModelCopyWithImpl(this._self, this._then);

  final _AssetBaseDataModel _self;
  final $Res Function(_AssetBaseDataModel) _then;

/// Create a copy of AssetBaseDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? domestic = null,Object? invested = null,Object? fxImpact = null,Object? fxRate = null,Object? chart = null,Object? changes = null,Object? totals = null,Object? avgPrice = freezed,Object? breakEven = freezed,Object? realizedPnl = null,}) {
  return _then(_AssetBaseDataModel(
domestic: null == domestic ? _self.domestic : domestic // ignore: cast_nullable_to_non_nullable
as bool,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,fxRate: null == fxRate ? _self.fxRate : fxRate // ignore: cast_nullable_to_non_nullable
as double,chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartDataModel>,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as ChangesModel,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as TotalsModel,avgPrice: freezed == avgPrice ? _self.avgPrice : avgPrice // ignore: cast_nullable_to_non_nullable
as double?,breakEven: freezed == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double?,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of AssetBaseDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangesModelCopyWith<$Res> get changes {
  
  return $ChangesModelCopyWith<$Res>(_self.changes, (value) {
    return _then(_self.copyWith(changes: value));
  });
}/// Create a copy of AssetBaseDataModel
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
mixin _$AssetModel {

 int get id;@JsonKey(name: 'portfolio_id') int get portfolioId; String get ticker; String get name;@JsonKey(name: 'user_id') int get userId; double get holdings; double get invested;@JsonKey(name: 'avg_price') double get avgPrice;@JsonKey(name: 'break_even') double get breakEven;@JsonKey(name: 'realized_pnl') double get realizedPnl;@JsonKey(name: 'num_txs') int get numTxs;@JsonKey(name: 'last_activity') String? get lastActivity;@JsonKey(name: 'last_activity_ts') int? get lastActivityTs;@JsonKey(name: 'base_ccy') String get baseCcy; String get created; String get modified; AssetMetaModel get meta; double? get weight;@JsonKey(name: 'volatilityRange') double get volatilityRange;@JsonKey(name: 'volatilityPct') double get volatilityPct; AssetCurrencyDataModel get ccy; AssetBaseDataModel get base;
/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetModelCopyWith<AssetModel> get copyWith => _$AssetModelCopyWithImpl<AssetModel>(this as AssetModel, _$identity);

  /// Serializes this AssetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.portfolioId, portfolioId) || other.portfolioId == portfolioId)&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.holdings, holdings) || other.holdings == holdings)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.numTxs, numTxs) || other.numTxs == numTxs)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.lastActivityTs, lastActivityTs) || other.lastActivityTs == lastActivityTs)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&(identical(other.ccy, ccy) || other.ccy == ccy)&&(identical(other.base, base) || other.base == base));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,portfolioId,ticker,name,userId,holdings,invested,avgPrice,breakEven,realizedPnl,numTxs,lastActivity,lastActivityTs,baseCcy,created,modified,meta,weight,volatilityRange,volatilityPct,ccy,base]);

@override
String toString() {
  return 'AssetModel(id: $id, portfolioId: $portfolioId, ticker: $ticker, name: $name, userId: $userId, holdings: $holdings, invested: $invested, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl, numTxs: $numTxs, lastActivity: $lastActivity, lastActivityTs: $lastActivityTs, baseCcy: $baseCcy, created: $created, modified: $modified, meta: $meta, weight: $weight, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, ccy: $ccy, base: $base)';
}


}

/// @nodoc
abstract mixin class $AssetModelCopyWith<$Res>  {
  factory $AssetModelCopyWith(AssetModel value, $Res Function(AssetModel) _then) = _$AssetModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'portfolio_id') int portfolioId, String ticker, String name,@JsonKey(name: 'user_id') int userId, double holdings, double invested,@JsonKey(name: 'avg_price') double avgPrice,@JsonKey(name: 'break_even') double breakEven,@JsonKey(name: 'realized_pnl') double realizedPnl,@JsonKey(name: 'num_txs') int numTxs,@JsonKey(name: 'last_activity') String? lastActivity,@JsonKey(name: 'last_activity_ts') int? lastActivityTs,@JsonKey(name: 'base_ccy') String baseCcy, String created, String modified, AssetMetaModel meta, double? weight,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, AssetCurrencyDataModel ccy, AssetBaseDataModel base
});


$AssetMetaModelCopyWith<$Res> get meta;$AssetCurrencyDataModelCopyWith<$Res> get ccy;$AssetBaseDataModelCopyWith<$Res> get base;

}
/// @nodoc
class _$AssetModelCopyWithImpl<$Res>
    implements $AssetModelCopyWith<$Res> {
  _$AssetModelCopyWithImpl(this._self, this._then);

  final AssetModel _self;
  final $Res Function(AssetModel) _then;

/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? portfolioId = null,Object? ticker = null,Object? name = null,Object? userId = null,Object? holdings = null,Object? invested = null,Object? avgPrice = null,Object? breakEven = null,Object? realizedPnl = null,Object? numTxs = null,Object? lastActivity = freezed,Object? lastActivityTs = freezed,Object? baseCcy = null,Object? created = null,Object? modified = null,Object? meta = null,Object? weight = freezed,Object? volatilityRange = null,Object? volatilityPct = null,Object? ccy = null,Object? base = null,}) {
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
as String,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as AssetMetaModel,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,ccy: null == ccy ? _self.ccy : ccy // ignore: cast_nullable_to_non_nullable
as AssetCurrencyDataModel,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as AssetBaseDataModel,
  ));
}
/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetMetaModelCopyWith<$Res> get meta {
  
  return $AssetMetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCurrencyDataModelCopyWith<$Res> get ccy {
  
  return $AssetCurrencyDataModelCopyWith<$Res>(_self.ccy, (value) {
    return _then(_self.copyWith(ccy: value));
  });
}/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetBaseDataModelCopyWith<$Res> get base {
  
  return $AssetBaseDataModelCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssetModel].
extension AssetModelPatterns on AssetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetModel value)  $default,){
final _that = this;
switch (_that) {
case _AssetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssetModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'portfolio_id')  int portfolioId,  String ticker,  String name, @JsonKey(name: 'user_id')  int userId,  double holdings,  double invested, @JsonKey(name: 'avg_price')  double avgPrice, @JsonKey(name: 'break_even')  double breakEven, @JsonKey(name: 'realized_pnl')  double realizedPnl, @JsonKey(name: 'num_txs')  int numTxs, @JsonKey(name: 'last_activity')  String? lastActivity, @JsonKey(name: 'last_activity_ts')  int? lastActivityTs, @JsonKey(name: 'base_ccy')  String baseCcy,  String created,  String modified,  AssetMetaModel meta,  double? weight, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  AssetCurrencyDataModel ccy,  AssetBaseDataModel base)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetModel() when $default != null:
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.lastActivity,_that.lastActivityTs,_that.baseCcy,_that.created,_that.modified,_that.meta,_that.weight,_that.volatilityRange,_that.volatilityPct,_that.ccy,_that.base);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'portfolio_id')  int portfolioId,  String ticker,  String name, @JsonKey(name: 'user_id')  int userId,  double holdings,  double invested, @JsonKey(name: 'avg_price')  double avgPrice, @JsonKey(name: 'break_even')  double breakEven, @JsonKey(name: 'realized_pnl')  double realizedPnl, @JsonKey(name: 'num_txs')  int numTxs, @JsonKey(name: 'last_activity')  String? lastActivity, @JsonKey(name: 'last_activity_ts')  int? lastActivityTs, @JsonKey(name: 'base_ccy')  String baseCcy,  String created,  String modified,  AssetMetaModel meta,  double? weight, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  AssetCurrencyDataModel ccy,  AssetBaseDataModel base)  $default,) {final _that = this;
switch (_that) {
case _AssetModel():
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.lastActivity,_that.lastActivityTs,_that.baseCcy,_that.created,_that.modified,_that.meta,_that.weight,_that.volatilityRange,_that.volatilityPct,_that.ccy,_that.base);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'portfolio_id')  int portfolioId,  String ticker,  String name, @JsonKey(name: 'user_id')  int userId,  double holdings,  double invested, @JsonKey(name: 'avg_price')  double avgPrice, @JsonKey(name: 'break_even')  double breakEven, @JsonKey(name: 'realized_pnl')  double realizedPnl, @JsonKey(name: 'num_txs')  int numTxs, @JsonKey(name: 'last_activity')  String? lastActivity, @JsonKey(name: 'last_activity_ts')  int? lastActivityTs, @JsonKey(name: 'base_ccy')  String baseCcy,  String created,  String modified,  AssetMetaModel meta,  double? weight, @JsonKey(name: 'volatilityRange')  double volatilityRange, @JsonKey(name: 'volatilityPct')  double volatilityPct,  AssetCurrencyDataModel ccy,  AssetBaseDataModel base)?  $default,) {final _that = this;
switch (_that) {
case _AssetModel() when $default != null:
return $default(_that.id,_that.portfolioId,_that.ticker,_that.name,_that.userId,_that.holdings,_that.invested,_that.avgPrice,_that.breakEven,_that.realizedPnl,_that.numTxs,_that.lastActivity,_that.lastActivityTs,_that.baseCcy,_that.created,_that.modified,_that.meta,_that.weight,_that.volatilityRange,_that.volatilityPct,_that.ccy,_that.base);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetModel implements AssetModel {
  const _AssetModel({required this.id, @JsonKey(name: 'portfolio_id') required this.portfolioId, required this.ticker, required this.name, @JsonKey(name: 'user_id') required this.userId, required this.holdings, required this.invested, @JsonKey(name: 'avg_price') required this.avgPrice, @JsonKey(name: 'break_even') required this.breakEven, @JsonKey(name: 'realized_pnl') required this.realizedPnl, @JsonKey(name: 'num_txs') required this.numTxs, @JsonKey(name: 'last_activity') this.lastActivity, @JsonKey(name: 'last_activity_ts') this.lastActivityTs, @JsonKey(name: 'base_ccy') required this.baseCcy, required this.created, required this.modified, required this.meta, this.weight, @JsonKey(name: 'volatilityRange') required this.volatilityRange, @JsonKey(name: 'volatilityPct') required this.volatilityPct, required this.ccy, required this.base});
  factory _AssetModel.fromJson(Map<String, dynamic> json) => _$AssetModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'portfolio_id') final  int portfolioId;
@override final  String ticker;
@override final  String name;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  double holdings;
@override final  double invested;
@override@JsonKey(name: 'avg_price') final  double avgPrice;
@override@JsonKey(name: 'break_even') final  double breakEven;
@override@JsonKey(name: 'realized_pnl') final  double realizedPnl;
@override@JsonKey(name: 'num_txs') final  int numTxs;
@override@JsonKey(name: 'last_activity') final  String? lastActivity;
@override@JsonKey(name: 'last_activity_ts') final  int? lastActivityTs;
@override@JsonKey(name: 'base_ccy') final  String baseCcy;
@override final  String created;
@override final  String modified;
@override final  AssetMetaModel meta;
@override final  double? weight;
@override@JsonKey(name: 'volatilityRange') final  double volatilityRange;
@override@JsonKey(name: 'volatilityPct') final  double volatilityPct;
@override final  AssetCurrencyDataModel ccy;
@override final  AssetBaseDataModel base;

/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetModelCopyWith<_AssetModel> get copyWith => __$AssetModelCopyWithImpl<_AssetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.portfolioId, portfolioId) || other.portfolioId == portfolioId)&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.holdings, holdings) || other.holdings == holdings)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.avgPrice, avgPrice) || other.avgPrice == avgPrice)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.numTxs, numTxs) || other.numTxs == numTxs)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.lastActivityTs, lastActivityTs) || other.lastActivityTs == lastActivityTs)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.volatilityRange, volatilityRange) || other.volatilityRange == volatilityRange)&&(identical(other.volatilityPct, volatilityPct) || other.volatilityPct == volatilityPct)&&(identical(other.ccy, ccy) || other.ccy == ccy)&&(identical(other.base, base) || other.base == base));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,portfolioId,ticker,name,userId,holdings,invested,avgPrice,breakEven,realizedPnl,numTxs,lastActivity,lastActivityTs,baseCcy,created,modified,meta,weight,volatilityRange,volatilityPct,ccy,base]);

@override
String toString() {
  return 'AssetModel(id: $id, portfolioId: $portfolioId, ticker: $ticker, name: $name, userId: $userId, holdings: $holdings, invested: $invested, avgPrice: $avgPrice, breakEven: $breakEven, realizedPnl: $realizedPnl, numTxs: $numTxs, lastActivity: $lastActivity, lastActivityTs: $lastActivityTs, baseCcy: $baseCcy, created: $created, modified: $modified, meta: $meta, weight: $weight, volatilityRange: $volatilityRange, volatilityPct: $volatilityPct, ccy: $ccy, base: $base)';
}


}

/// @nodoc
abstract mixin class _$AssetModelCopyWith<$Res> implements $AssetModelCopyWith<$Res> {
  factory _$AssetModelCopyWith(_AssetModel value, $Res Function(_AssetModel) _then) = __$AssetModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'portfolio_id') int portfolioId, String ticker, String name,@JsonKey(name: 'user_id') int userId, double holdings, double invested,@JsonKey(name: 'avg_price') double avgPrice,@JsonKey(name: 'break_even') double breakEven,@JsonKey(name: 'realized_pnl') double realizedPnl,@JsonKey(name: 'num_txs') int numTxs,@JsonKey(name: 'last_activity') String? lastActivity,@JsonKey(name: 'last_activity_ts') int? lastActivityTs,@JsonKey(name: 'base_ccy') String baseCcy, String created, String modified, AssetMetaModel meta, double? weight,@JsonKey(name: 'volatilityRange') double volatilityRange,@JsonKey(name: 'volatilityPct') double volatilityPct, AssetCurrencyDataModel ccy, AssetBaseDataModel base
});


@override $AssetMetaModelCopyWith<$Res> get meta;@override $AssetCurrencyDataModelCopyWith<$Res> get ccy;@override $AssetBaseDataModelCopyWith<$Res> get base;

}
/// @nodoc
class __$AssetModelCopyWithImpl<$Res>
    implements _$AssetModelCopyWith<$Res> {
  __$AssetModelCopyWithImpl(this._self, this._then);

  final _AssetModel _self;
  final $Res Function(_AssetModel) _then;

/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? portfolioId = null,Object? ticker = null,Object? name = null,Object? userId = null,Object? holdings = null,Object? invested = null,Object? avgPrice = null,Object? breakEven = null,Object? realizedPnl = null,Object? numTxs = null,Object? lastActivity = freezed,Object? lastActivityTs = freezed,Object? baseCcy = null,Object? created = null,Object? modified = null,Object? meta = null,Object? weight = freezed,Object? volatilityRange = null,Object? volatilityPct = null,Object? ccy = null,Object? base = null,}) {
  return _then(_AssetModel(
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
as String,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as AssetMetaModel,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,volatilityRange: null == volatilityRange ? _self.volatilityRange : volatilityRange // ignore: cast_nullable_to_non_nullable
as double,volatilityPct: null == volatilityPct ? _self.volatilityPct : volatilityPct // ignore: cast_nullable_to_non_nullable
as double,ccy: null == ccy ? _self.ccy : ccy // ignore: cast_nullable_to_non_nullable
as AssetCurrencyDataModel,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as AssetBaseDataModel,
  ));
}

/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetMetaModelCopyWith<$Res> get meta {
  
  return $AssetMetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCurrencyDataModelCopyWith<$Res> get ccy {
  
  return $AssetCurrencyDataModelCopyWith<$Res>(_self.ccy, (value) {
    return _then(_self.copyWith(ccy: value));
  });
}/// Create a copy of AssetModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetBaseDataModelCopyWith<$Res> get base {
  
  return $AssetBaseDataModelCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
  });
}
}


/// @nodoc
mixin _$CreateAssetRequestModel {

 String get ticker; String get name;
/// Create a copy of CreateAssetRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAssetRequestModelCopyWith<CreateAssetRequestModel> get copyWith => _$CreateAssetRequestModelCopyWithImpl<CreateAssetRequestModel>(this as CreateAssetRequestModel, _$identity);

  /// Serializes this CreateAssetRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAssetRequestModel&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticker,name);

@override
String toString() {
  return 'CreateAssetRequestModel(ticker: $ticker, name: $name)';
}


}

/// @nodoc
abstract mixin class $CreateAssetRequestModelCopyWith<$Res>  {
  factory $CreateAssetRequestModelCopyWith(CreateAssetRequestModel value, $Res Function(CreateAssetRequestModel) _then) = _$CreateAssetRequestModelCopyWithImpl;
@useResult
$Res call({
 String ticker, String name
});




}
/// @nodoc
class _$CreateAssetRequestModelCopyWithImpl<$Res>
    implements $CreateAssetRequestModelCopyWith<$Res> {
  _$CreateAssetRequestModelCopyWithImpl(this._self, this._then);

  final CreateAssetRequestModel _self;
  final $Res Function(CreateAssetRequestModel) _then;

/// Create a copy of CreateAssetRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticker = null,Object? name = null,}) {
  return _then(_self.copyWith(
ticker: null == ticker ? _self.ticker : ticker // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAssetRequestModel].
extension CreateAssetRequestModelPatterns on CreateAssetRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAssetRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAssetRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAssetRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateAssetRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAssetRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAssetRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ticker,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAssetRequestModel() when $default != null:
return $default(_that.ticker,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ticker,  String name)  $default,) {final _that = this;
switch (_that) {
case _CreateAssetRequestModel():
return $default(_that.ticker,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ticker,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CreateAssetRequestModel() when $default != null:
return $default(_that.ticker,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAssetRequestModel implements CreateAssetRequestModel {
  const _CreateAssetRequestModel({required this.ticker, required this.name});
  factory _CreateAssetRequestModel.fromJson(Map<String, dynamic> json) => _$CreateAssetRequestModelFromJson(json);

@override final  String ticker;
@override final  String name;

/// Create a copy of CreateAssetRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAssetRequestModelCopyWith<_CreateAssetRequestModel> get copyWith => __$CreateAssetRequestModelCopyWithImpl<_CreateAssetRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAssetRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAssetRequestModel&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticker,name);

@override
String toString() {
  return 'CreateAssetRequestModel(ticker: $ticker, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateAssetRequestModelCopyWith<$Res> implements $CreateAssetRequestModelCopyWith<$Res> {
  factory _$CreateAssetRequestModelCopyWith(_CreateAssetRequestModel value, $Res Function(_CreateAssetRequestModel) _then) = __$CreateAssetRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String ticker, String name
});




}
/// @nodoc
class __$CreateAssetRequestModelCopyWithImpl<$Res>
    implements _$CreateAssetRequestModelCopyWith<$Res> {
  __$CreateAssetRequestModelCopyWithImpl(this._self, this._then);

  final _CreateAssetRequestModel _self;
  final $Res Function(_CreateAssetRequestModel) _then;

/// Create a copy of CreateAssetRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticker = null,Object? name = null,}) {
  return _then(_CreateAssetRequestModel(
ticker: null == ticker ? _self.ticker : ticker // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UpdateAssetRequestModel {

 String get ticker; String get name;
/// Create a copy of UpdateAssetRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAssetRequestModelCopyWith<UpdateAssetRequestModel> get copyWith => _$UpdateAssetRequestModelCopyWithImpl<UpdateAssetRequestModel>(this as UpdateAssetRequestModel, _$identity);

  /// Serializes this UpdateAssetRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAssetRequestModel&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticker,name);

@override
String toString() {
  return 'UpdateAssetRequestModel(ticker: $ticker, name: $name)';
}


}

/// @nodoc
abstract mixin class $UpdateAssetRequestModelCopyWith<$Res>  {
  factory $UpdateAssetRequestModelCopyWith(UpdateAssetRequestModel value, $Res Function(UpdateAssetRequestModel) _then) = _$UpdateAssetRequestModelCopyWithImpl;
@useResult
$Res call({
 String ticker, String name
});




}
/// @nodoc
class _$UpdateAssetRequestModelCopyWithImpl<$Res>
    implements $UpdateAssetRequestModelCopyWith<$Res> {
  _$UpdateAssetRequestModelCopyWithImpl(this._self, this._then);

  final UpdateAssetRequestModel _self;
  final $Res Function(UpdateAssetRequestModel) _then;

/// Create a copy of UpdateAssetRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticker = null,Object? name = null,}) {
  return _then(_self.copyWith(
ticker: null == ticker ? _self.ticker : ticker // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateAssetRequestModel].
extension UpdateAssetRequestModelPatterns on UpdateAssetRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateAssetRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateAssetRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateAssetRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateAssetRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateAssetRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateAssetRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ticker,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateAssetRequestModel() when $default != null:
return $default(_that.ticker,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ticker,  String name)  $default,) {final _that = this;
switch (_that) {
case _UpdateAssetRequestModel():
return $default(_that.ticker,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ticker,  String name)?  $default,) {final _that = this;
switch (_that) {
case _UpdateAssetRequestModel() when $default != null:
return $default(_that.ticker,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateAssetRequestModel implements UpdateAssetRequestModel {
  const _UpdateAssetRequestModel({required this.ticker, required this.name});
  factory _UpdateAssetRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateAssetRequestModelFromJson(json);

@override final  String ticker;
@override final  String name;

/// Create a copy of UpdateAssetRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAssetRequestModelCopyWith<_UpdateAssetRequestModel> get copyWith => __$UpdateAssetRequestModelCopyWithImpl<_UpdateAssetRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateAssetRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAssetRequestModel&&(identical(other.ticker, ticker) || other.ticker == ticker)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticker,name);

@override
String toString() {
  return 'UpdateAssetRequestModel(ticker: $ticker, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UpdateAssetRequestModelCopyWith<$Res> implements $UpdateAssetRequestModelCopyWith<$Res> {
  factory _$UpdateAssetRequestModelCopyWith(_UpdateAssetRequestModel value, $Res Function(_UpdateAssetRequestModel) _then) = __$UpdateAssetRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String ticker, String name
});




}
/// @nodoc
class __$UpdateAssetRequestModelCopyWithImpl<$Res>
    implements _$UpdateAssetRequestModelCopyWith<$Res> {
  __$UpdateAssetRequestModelCopyWithImpl(this._self, this._then);

  final _UpdateAssetRequestModel _self;
  final $Res Function(_UpdateAssetRequestModel) _then;

/// Create a copy of UpdateAssetRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticker = null,Object? name = null,}) {
  return _then(_UpdateAssetRequestModel(
ticker: null == ticker ? _self.ticker : ticker // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
