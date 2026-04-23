// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionModel {

 int get id;@JsonKey(name: 'asset_id') int get assetId; String get type; double get quantity; double get price; String get date; String? get comments;@JsonKey(name: 'quantity_ext') double? get quantityExt; double? get stretch;@JsonKey(name: 'final_stretch') bool? get finalStretch; double? get value; double? get pnl;@JsonKey(name: 'pnl_pct') double? get pnlPct;@JsonKey(name: 'realized_pnl') double get realizedPnl; double get cost;@JsonKey(name: 'cost_basis') double get costBasis; double get contribution;@JsonKey(name: 'running_holding') double get runningHolding;@JsonKey(name: 'running_cost') double get runningCost;@JsonKey(name: 'running_average_price') double get runningAveragePrice;@JsonKey(name: 'running_break_even') double get runningBreakEven;@JsonKey(name: 'running_contribution') double get runningContribution;@JsonKey(name: 'asset_name') String get assetName;@JsonKey(name: 'asset_ticker') String get assetTicker;@JsonKey(name: 'portfolio_name') String get portfolioName;@JsonKey(name: 'portfolio_description') String get portfolioDescription;@JsonKey(name: 'user_id') int get userId;@JsonKey(name: 'user_base_ccy') String get userBaseCcy; int get timestamp; String get created; String get modified;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.quantityExt, quantityExt) || other.quantityExt == quantityExt)&&(identical(other.stretch, stretch) || other.stretch == stretch)&&(identical(other.finalStretch, finalStretch) || other.finalStretch == finalStretch)&&(identical(other.value, value) || other.value == value)&&(identical(other.pnl, pnl) || other.pnl == pnl)&&(identical(other.pnlPct, pnlPct) || other.pnlPct == pnlPct)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.costBasis, costBasis) || other.costBasis == costBasis)&&(identical(other.contribution, contribution) || other.contribution == contribution)&&(identical(other.runningHolding, runningHolding) || other.runningHolding == runningHolding)&&(identical(other.runningCost, runningCost) || other.runningCost == runningCost)&&(identical(other.runningAveragePrice, runningAveragePrice) || other.runningAveragePrice == runningAveragePrice)&&(identical(other.runningBreakEven, runningBreakEven) || other.runningBreakEven == runningBreakEven)&&(identical(other.runningContribution, runningContribution) || other.runningContribution == runningContribution)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetTicker, assetTicker) || other.assetTicker == assetTicker)&&(identical(other.portfolioName, portfolioName) || other.portfolioName == portfolioName)&&(identical(other.portfolioDescription, portfolioDescription) || other.portfolioDescription == portfolioDescription)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userBaseCcy, userBaseCcy) || other.userBaseCcy == userBaseCcy)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,assetId,type,quantity,price,date,comments,quantityExt,stretch,finalStretch,value,pnl,pnlPct,realizedPnl,cost,costBasis,contribution,runningHolding,runningCost,runningAveragePrice,runningBreakEven,runningContribution,assetName,assetTicker,portfolioName,portfolioDescription,userId,userBaseCcy,timestamp,created,modified]);

@override
String toString() {
  return 'TransactionModel(id: $id, assetId: $assetId, type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments, quantityExt: $quantityExt, stretch: $stretch, finalStretch: $finalStretch, value: $value, pnl: $pnl, pnlPct: $pnlPct, realizedPnl: $realizedPnl, cost: $cost, costBasis: $costBasis, contribution: $contribution, runningHolding: $runningHolding, runningCost: $runningCost, runningAveragePrice: $runningAveragePrice, runningBreakEven: $runningBreakEven, runningContribution: $runningContribution, assetName: $assetName, assetTicker: $assetTicker, portfolioName: $portfolioName, portfolioDescription: $portfolioDescription, userId: $userId, userBaseCcy: $userBaseCcy, timestamp: $timestamp, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'asset_id') int assetId, String type, double quantity, double price, String date, String? comments,@JsonKey(name: 'quantity_ext') double? quantityExt, double? stretch,@JsonKey(name: 'final_stretch') bool? finalStretch, double? value, double? pnl,@JsonKey(name: 'pnl_pct') double? pnlPct,@JsonKey(name: 'realized_pnl') double realizedPnl, double cost,@JsonKey(name: 'cost_basis') double costBasis, double contribution,@JsonKey(name: 'running_holding') double runningHolding,@JsonKey(name: 'running_cost') double runningCost,@JsonKey(name: 'running_average_price') double runningAveragePrice,@JsonKey(name: 'running_break_even') double runningBreakEven,@JsonKey(name: 'running_contribution') double runningContribution,@JsonKey(name: 'asset_name') String assetName,@JsonKey(name: 'asset_ticker') String assetTicker,@JsonKey(name: 'portfolio_name') String portfolioName,@JsonKey(name: 'portfolio_description') String portfolioDescription,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'user_base_ccy') String userBaseCcy, int timestamp, String created, String modified
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assetId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,Object? quantityExt = freezed,Object? stretch = freezed,Object? finalStretch = freezed,Object? value = freezed,Object? pnl = freezed,Object? pnlPct = freezed,Object? realizedPnl = null,Object? cost = null,Object? costBasis = null,Object? contribution = null,Object? runningHolding = null,Object? runningCost = null,Object? runningAveragePrice = null,Object? runningBreakEven = null,Object? runningContribution = null,Object? assetName = null,Object? assetTicker = null,Object? portfolioName = null,Object? portfolioDescription = null,Object? userId = null,Object? userBaseCcy = null,Object? timestamp = null,Object? created = null,Object? modified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,quantityExt: freezed == quantityExt ? _self.quantityExt : quantityExt // ignore: cast_nullable_to_non_nullable
as double?,stretch: freezed == stretch ? _self.stretch : stretch // ignore: cast_nullable_to_non_nullable
as double?,finalStretch: freezed == finalStretch ? _self.finalStretch : finalStretch // ignore: cast_nullable_to_non_nullable
as bool?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,pnl: freezed == pnl ? _self.pnl : pnl // ignore: cast_nullable_to_non_nullable
as double?,pnlPct: freezed == pnlPct ? _self.pnlPct : pnlPct // ignore: cast_nullable_to_non_nullable
as double?,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
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
as String,portfolioDescription: null == portfolioDescription ? _self.portfolioDescription : portfolioDescription // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userBaseCcy: null == userBaseCcy ? _self.userBaseCcy : userBaseCcy // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionModel].
extension TransactionModelPatterns on TransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'asset_id')  int assetId,  String type,  double quantity,  double price,  String date,  String? comments, @JsonKey(name: 'quantity_ext')  double? quantityExt,  double? stretch, @JsonKey(name: 'final_stretch')  bool? finalStretch,  double? value,  double? pnl, @JsonKey(name: 'pnl_pct')  double? pnlPct, @JsonKey(name: 'realized_pnl')  double realizedPnl,  double cost, @JsonKey(name: 'cost_basis')  double costBasis,  double contribution, @JsonKey(name: 'running_holding')  double runningHolding, @JsonKey(name: 'running_cost')  double runningCost, @JsonKey(name: 'running_average_price')  double runningAveragePrice, @JsonKey(name: 'running_break_even')  double runningBreakEven, @JsonKey(name: 'running_contribution')  double runningContribution, @JsonKey(name: 'asset_name')  String assetName, @JsonKey(name: 'asset_ticker')  String assetTicker, @JsonKey(name: 'portfolio_name')  String portfolioName, @JsonKey(name: 'portfolio_description')  String portfolioDescription, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'user_base_ccy')  String userBaseCcy,  int timestamp,  String created,  String modified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.quantityExt,_that.stretch,_that.finalStretch,_that.value,_that.pnl,_that.pnlPct,_that.realizedPnl,_that.cost,_that.costBasis,_that.contribution,_that.runningHolding,_that.runningCost,_that.runningAveragePrice,_that.runningBreakEven,_that.runningContribution,_that.assetName,_that.assetTicker,_that.portfolioName,_that.portfolioDescription,_that.userId,_that.userBaseCcy,_that.timestamp,_that.created,_that.modified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'asset_id')  int assetId,  String type,  double quantity,  double price,  String date,  String? comments, @JsonKey(name: 'quantity_ext')  double? quantityExt,  double? stretch, @JsonKey(name: 'final_stretch')  bool? finalStretch,  double? value,  double? pnl, @JsonKey(name: 'pnl_pct')  double? pnlPct, @JsonKey(name: 'realized_pnl')  double realizedPnl,  double cost, @JsonKey(name: 'cost_basis')  double costBasis,  double contribution, @JsonKey(name: 'running_holding')  double runningHolding, @JsonKey(name: 'running_cost')  double runningCost, @JsonKey(name: 'running_average_price')  double runningAveragePrice, @JsonKey(name: 'running_break_even')  double runningBreakEven, @JsonKey(name: 'running_contribution')  double runningContribution, @JsonKey(name: 'asset_name')  String assetName, @JsonKey(name: 'asset_ticker')  String assetTicker, @JsonKey(name: 'portfolio_name')  String portfolioName, @JsonKey(name: 'portfolio_description')  String portfolioDescription, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'user_base_ccy')  String userBaseCcy,  int timestamp,  String created,  String modified)  $default,) {final _that = this;
switch (_that) {
case _TransactionModel():
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.quantityExt,_that.stretch,_that.finalStretch,_that.value,_that.pnl,_that.pnlPct,_that.realizedPnl,_that.cost,_that.costBasis,_that.contribution,_that.runningHolding,_that.runningCost,_that.runningAveragePrice,_that.runningBreakEven,_that.runningContribution,_that.assetName,_that.assetTicker,_that.portfolioName,_that.portfolioDescription,_that.userId,_that.userBaseCcy,_that.timestamp,_that.created,_that.modified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'asset_id')  int assetId,  String type,  double quantity,  double price,  String date,  String? comments, @JsonKey(name: 'quantity_ext')  double? quantityExt,  double? stretch, @JsonKey(name: 'final_stretch')  bool? finalStretch,  double? value,  double? pnl, @JsonKey(name: 'pnl_pct')  double? pnlPct, @JsonKey(name: 'realized_pnl')  double realizedPnl,  double cost, @JsonKey(name: 'cost_basis')  double costBasis,  double contribution, @JsonKey(name: 'running_holding')  double runningHolding, @JsonKey(name: 'running_cost')  double runningCost, @JsonKey(name: 'running_average_price')  double runningAveragePrice, @JsonKey(name: 'running_break_even')  double runningBreakEven, @JsonKey(name: 'running_contribution')  double runningContribution, @JsonKey(name: 'asset_name')  String assetName, @JsonKey(name: 'asset_ticker')  String assetTicker, @JsonKey(name: 'portfolio_name')  String portfolioName, @JsonKey(name: 'portfolio_description')  String portfolioDescription, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'user_base_ccy')  String userBaseCcy,  int timestamp,  String created,  String modified)?  $default,) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.quantityExt,_that.stretch,_that.finalStretch,_that.value,_that.pnl,_that.pnlPct,_that.realizedPnl,_that.cost,_that.costBasis,_that.contribution,_that.runningHolding,_that.runningCost,_that.runningAveragePrice,_that.runningBreakEven,_that.runningContribution,_that.assetName,_that.assetTicker,_that.portfolioName,_that.portfolioDescription,_that.userId,_that.userBaseCcy,_that.timestamp,_that.created,_that.modified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionModel implements TransactionModel {
  const _TransactionModel({required this.id, @JsonKey(name: 'asset_id') required this.assetId, required this.type, required this.quantity, required this.price, required this.date, this.comments, @JsonKey(name: 'quantity_ext') this.quantityExt, this.stretch, @JsonKey(name: 'final_stretch') this.finalStretch, this.value, this.pnl, @JsonKey(name: 'pnl_pct') this.pnlPct, @JsonKey(name: 'realized_pnl') required this.realizedPnl, required this.cost, @JsonKey(name: 'cost_basis') required this.costBasis, required this.contribution, @JsonKey(name: 'running_holding') required this.runningHolding, @JsonKey(name: 'running_cost') required this.runningCost, @JsonKey(name: 'running_average_price') required this.runningAveragePrice, @JsonKey(name: 'running_break_even') required this.runningBreakEven, @JsonKey(name: 'running_contribution') required this.runningContribution, @JsonKey(name: 'asset_name') required this.assetName, @JsonKey(name: 'asset_ticker') required this.assetTicker, @JsonKey(name: 'portfolio_name') required this.portfolioName, @JsonKey(name: 'portfolio_description') required this.portfolioDescription, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'user_base_ccy') required this.userBaseCcy, required this.timestamp, required this.created, required this.modified});
  factory _TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'asset_id') final  int assetId;
@override final  String type;
@override final  double quantity;
@override final  double price;
@override final  String date;
@override final  String? comments;
@override@JsonKey(name: 'quantity_ext') final  double? quantityExt;
@override final  double? stretch;
@override@JsonKey(name: 'final_stretch') final  bool? finalStretch;
@override final  double? value;
@override final  double? pnl;
@override@JsonKey(name: 'pnl_pct') final  double? pnlPct;
@override@JsonKey(name: 'realized_pnl') final  double realizedPnl;
@override final  double cost;
@override@JsonKey(name: 'cost_basis') final  double costBasis;
@override final  double contribution;
@override@JsonKey(name: 'running_holding') final  double runningHolding;
@override@JsonKey(name: 'running_cost') final  double runningCost;
@override@JsonKey(name: 'running_average_price') final  double runningAveragePrice;
@override@JsonKey(name: 'running_break_even') final  double runningBreakEven;
@override@JsonKey(name: 'running_contribution') final  double runningContribution;
@override@JsonKey(name: 'asset_name') final  String assetName;
@override@JsonKey(name: 'asset_ticker') final  String assetTicker;
@override@JsonKey(name: 'portfolio_name') final  String portfolioName;
@override@JsonKey(name: 'portfolio_description') final  String portfolioDescription;
@override@JsonKey(name: 'user_id') final  int userId;
@override@JsonKey(name: 'user_base_ccy') final  String userBaseCcy;
@override final  int timestamp;
@override final  String created;
@override final  String modified;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.quantityExt, quantityExt) || other.quantityExt == quantityExt)&&(identical(other.stretch, stretch) || other.stretch == stretch)&&(identical(other.finalStretch, finalStretch) || other.finalStretch == finalStretch)&&(identical(other.value, value) || other.value == value)&&(identical(other.pnl, pnl) || other.pnl == pnl)&&(identical(other.pnlPct, pnlPct) || other.pnlPct == pnlPct)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.costBasis, costBasis) || other.costBasis == costBasis)&&(identical(other.contribution, contribution) || other.contribution == contribution)&&(identical(other.runningHolding, runningHolding) || other.runningHolding == runningHolding)&&(identical(other.runningCost, runningCost) || other.runningCost == runningCost)&&(identical(other.runningAveragePrice, runningAveragePrice) || other.runningAveragePrice == runningAveragePrice)&&(identical(other.runningBreakEven, runningBreakEven) || other.runningBreakEven == runningBreakEven)&&(identical(other.runningContribution, runningContribution) || other.runningContribution == runningContribution)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetTicker, assetTicker) || other.assetTicker == assetTicker)&&(identical(other.portfolioName, portfolioName) || other.portfolioName == portfolioName)&&(identical(other.portfolioDescription, portfolioDescription) || other.portfolioDescription == portfolioDescription)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userBaseCcy, userBaseCcy) || other.userBaseCcy == userBaseCcy)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,assetId,type,quantity,price,date,comments,quantityExt,stretch,finalStretch,value,pnl,pnlPct,realizedPnl,cost,costBasis,contribution,runningHolding,runningCost,runningAveragePrice,runningBreakEven,runningContribution,assetName,assetTicker,portfolioName,portfolioDescription,userId,userBaseCcy,timestamp,created,modified]);

@override
String toString() {
  return 'TransactionModel(id: $id, assetId: $assetId, type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments, quantityExt: $quantityExt, stretch: $stretch, finalStretch: $finalStretch, value: $value, pnl: $pnl, pnlPct: $pnlPct, realizedPnl: $realizedPnl, cost: $cost, costBasis: $costBasis, contribution: $contribution, runningHolding: $runningHolding, runningCost: $runningCost, runningAveragePrice: $runningAveragePrice, runningBreakEven: $runningBreakEven, runningContribution: $runningContribution, assetName: $assetName, assetTicker: $assetTicker, portfolioName: $portfolioName, portfolioDescription: $portfolioDescription, userId: $userId, userBaseCcy: $userBaseCcy, timestamp: $timestamp, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'asset_id') int assetId, String type, double quantity, double price, String date, String? comments,@JsonKey(name: 'quantity_ext') double? quantityExt, double? stretch,@JsonKey(name: 'final_stretch') bool? finalStretch, double? value, double? pnl,@JsonKey(name: 'pnl_pct') double? pnlPct,@JsonKey(name: 'realized_pnl') double realizedPnl, double cost,@JsonKey(name: 'cost_basis') double costBasis, double contribution,@JsonKey(name: 'running_holding') double runningHolding,@JsonKey(name: 'running_cost') double runningCost,@JsonKey(name: 'running_average_price') double runningAveragePrice,@JsonKey(name: 'running_break_even') double runningBreakEven,@JsonKey(name: 'running_contribution') double runningContribution,@JsonKey(name: 'asset_name') String assetName,@JsonKey(name: 'asset_ticker') String assetTicker,@JsonKey(name: 'portfolio_name') String portfolioName,@JsonKey(name: 'portfolio_description') String portfolioDescription,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'user_base_ccy') String userBaseCcy, int timestamp, String created, String modified
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,Object? quantityExt = freezed,Object? stretch = freezed,Object? finalStretch = freezed,Object? value = freezed,Object? pnl = freezed,Object? pnlPct = freezed,Object? realizedPnl = null,Object? cost = null,Object? costBasis = null,Object? contribution = null,Object? runningHolding = null,Object? runningCost = null,Object? runningAveragePrice = null,Object? runningBreakEven = null,Object? runningContribution = null,Object? assetName = null,Object? assetTicker = null,Object? portfolioName = null,Object? portfolioDescription = null,Object? userId = null,Object? userBaseCcy = null,Object? timestamp = null,Object? created = null,Object? modified = null,}) {
  return _then(_TransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,quantityExt: freezed == quantityExt ? _self.quantityExt : quantityExt // ignore: cast_nullable_to_non_nullable
as double?,stretch: freezed == stretch ? _self.stretch : stretch // ignore: cast_nullable_to_non_nullable
as double?,finalStretch: freezed == finalStretch ? _self.finalStretch : finalStretch // ignore: cast_nullable_to_non_nullable
as bool?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,pnl: freezed == pnl ? _self.pnl : pnl // ignore: cast_nullable_to_non_nullable
as double?,pnlPct: freezed == pnlPct ? _self.pnlPct : pnlPct // ignore: cast_nullable_to_non_nullable
as double?,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
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
as String,portfolioDescription: null == portfolioDescription ? _self.portfolioDescription : portfolioDescription // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userBaseCcy: null == userBaseCcy ? _self.userBaseCcy : userBaseCcy // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TransactionListItemModel {

 int get id;@JsonKey(name: 'asset_id') int get assetId; String get type; double get quantity; double get price; String get date; String? get comments;@JsonKey(name: 'quantity_ext') double? get quantityExt;@JsonKey(name: 'asset_name') String get assetName;@JsonKey(name: 'asset_ticker') String get assetTicker;
/// Create a copy of TransactionListItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionListItemModelCopyWith<TransactionListItemModel> get copyWith => _$TransactionListItemModelCopyWithImpl<TransactionListItemModel>(this as TransactionListItemModel, _$identity);

  /// Serializes this TransactionListItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionListItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.quantityExt, quantityExt) || other.quantityExt == quantityExt)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetTicker, assetTicker) || other.assetTicker == assetTicker));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assetId,type,quantity,price,date,comments,quantityExt,assetName,assetTicker);

@override
String toString() {
  return 'TransactionListItemModel(id: $id, assetId: $assetId, type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments, quantityExt: $quantityExt, assetName: $assetName, assetTicker: $assetTicker)';
}


}

/// @nodoc
abstract mixin class $TransactionListItemModelCopyWith<$Res>  {
  factory $TransactionListItemModelCopyWith(TransactionListItemModel value, $Res Function(TransactionListItemModel) _then) = _$TransactionListItemModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'asset_id') int assetId, String type, double quantity, double price, String date, String? comments,@JsonKey(name: 'quantity_ext') double? quantityExt,@JsonKey(name: 'asset_name') String assetName,@JsonKey(name: 'asset_ticker') String assetTicker
});




}
/// @nodoc
class _$TransactionListItemModelCopyWithImpl<$Res>
    implements $TransactionListItemModelCopyWith<$Res> {
  _$TransactionListItemModelCopyWithImpl(this._self, this._then);

  final TransactionListItemModel _self;
  final $Res Function(TransactionListItemModel) _then;

/// Create a copy of TransactionListItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assetId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,Object? quantityExt = freezed,Object? assetName = null,Object? assetTicker = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,quantityExt: freezed == quantityExt ? _self.quantityExt : quantityExt // ignore: cast_nullable_to_non_nullable
as double?,assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String,assetTicker: null == assetTicker ? _self.assetTicker : assetTicker // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionListItemModel].
extension TransactionListItemModelPatterns on TransactionListItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionListItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionListItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionListItemModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionListItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionListItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionListItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'asset_id')  int assetId,  String type,  double quantity,  double price,  String date,  String? comments, @JsonKey(name: 'quantity_ext')  double? quantityExt, @JsonKey(name: 'asset_name')  String assetName, @JsonKey(name: 'asset_ticker')  String assetTicker)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionListItemModel() when $default != null:
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.quantityExt,_that.assetName,_that.assetTicker);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'asset_id')  int assetId,  String type,  double quantity,  double price,  String date,  String? comments, @JsonKey(name: 'quantity_ext')  double? quantityExt, @JsonKey(name: 'asset_name')  String assetName, @JsonKey(name: 'asset_ticker')  String assetTicker)  $default,) {final _that = this;
switch (_that) {
case _TransactionListItemModel():
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.quantityExt,_that.assetName,_that.assetTicker);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'asset_id')  int assetId,  String type,  double quantity,  double price,  String date,  String? comments, @JsonKey(name: 'quantity_ext')  double? quantityExt, @JsonKey(name: 'asset_name')  String assetName, @JsonKey(name: 'asset_ticker')  String assetTicker)?  $default,) {final _that = this;
switch (_that) {
case _TransactionListItemModel() when $default != null:
return $default(_that.id,_that.assetId,_that.type,_that.quantity,_that.price,_that.date,_that.comments,_that.quantityExt,_that.assetName,_that.assetTicker);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionListItemModel implements TransactionListItemModel {
  const _TransactionListItemModel({required this.id, @JsonKey(name: 'asset_id') required this.assetId, required this.type, required this.quantity, required this.price, required this.date, this.comments, @JsonKey(name: 'quantity_ext') this.quantityExt, @JsonKey(name: 'asset_name') required this.assetName, @JsonKey(name: 'asset_ticker') required this.assetTicker});
  factory _TransactionListItemModel.fromJson(Map<String, dynamic> json) => _$TransactionListItemModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'asset_id') final  int assetId;
@override final  String type;
@override final  double quantity;
@override final  double price;
@override final  String date;
@override final  String? comments;
@override@JsonKey(name: 'quantity_ext') final  double? quantityExt;
@override@JsonKey(name: 'asset_name') final  String assetName;
@override@JsonKey(name: 'asset_ticker') final  String assetTicker;

/// Create a copy of TransactionListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListItemModelCopyWith<_TransactionListItemModel> get copyWith => __$TransactionListItemModelCopyWithImpl<_TransactionListItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionListItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.quantityExt, quantityExt) || other.quantityExt == quantityExt)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetTicker, assetTicker) || other.assetTicker == assetTicker));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assetId,type,quantity,price,date,comments,quantityExt,assetName,assetTicker);

@override
String toString() {
  return 'TransactionListItemModel(id: $id, assetId: $assetId, type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments, quantityExt: $quantityExt, assetName: $assetName, assetTicker: $assetTicker)';
}


}

/// @nodoc
abstract mixin class _$TransactionListItemModelCopyWith<$Res> implements $TransactionListItemModelCopyWith<$Res> {
  factory _$TransactionListItemModelCopyWith(_TransactionListItemModel value, $Res Function(_TransactionListItemModel) _then) = __$TransactionListItemModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'asset_id') int assetId, String type, double quantity, double price, String date, String? comments,@JsonKey(name: 'quantity_ext') double? quantityExt,@JsonKey(name: 'asset_name') String assetName,@JsonKey(name: 'asset_ticker') String assetTicker
});




}
/// @nodoc
class __$TransactionListItemModelCopyWithImpl<$Res>
    implements _$TransactionListItemModelCopyWith<$Res> {
  __$TransactionListItemModelCopyWithImpl(this._self, this._then);

  final _TransactionListItemModel _self;
  final $Res Function(_TransactionListItemModel) _then;

/// Create a copy of TransactionListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,Object? quantityExt = freezed,Object? assetName = null,Object? assetTicker = null,}) {
  return _then(_TransactionListItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,quantityExt: freezed == quantityExt ? _self.quantityExt : quantityExt // ignore: cast_nullable_to_non_nullable
as double?,assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String,assetTicker: null == assetTicker ? _self.assetTicker : assetTicker // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreateTransactionRequestModel {

 String get type; double get quantity; double get price; String get date; String? get comments;
/// Create a copy of CreateTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransactionRequestModelCopyWith<CreateTransactionRequestModel> get copyWith => _$CreateTransactionRequestModelCopyWithImpl<CreateTransactionRequestModel>(this as CreateTransactionRequestModel, _$identity);

  /// Serializes this CreateTransactionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransactionRequestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,quantity,price,date,comments);

@override
String toString() {
  return 'CreateTransactionRequestModel(type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $CreateTransactionRequestModelCopyWith<$Res>  {
  factory $CreateTransactionRequestModelCopyWith(CreateTransactionRequestModel value, $Res Function(CreateTransactionRequestModel) _then) = _$CreateTransactionRequestModelCopyWithImpl;
@useResult
$Res call({
 String type, double quantity, double price, String date, String? comments
});




}
/// @nodoc
class _$CreateTransactionRequestModelCopyWithImpl<$Res>
    implements $CreateTransactionRequestModelCopyWith<$Res> {
  _$CreateTransactionRequestModelCopyWithImpl(this._self, this._then);

  final CreateTransactionRequestModel _self;
  final $Res Function(CreateTransactionRequestModel) _then;

/// Create a copy of CreateTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTransactionRequestModel].
extension CreateTransactionRequestModelPatterns on CreateTransactionRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTransactionRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTransactionRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTransactionRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTransactionRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  double quantity,  double price,  String date,  String? comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTransactionRequestModel() when $default != null:
return $default(_that.type,_that.quantity,_that.price,_that.date,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  double quantity,  double price,  String date,  String? comments)  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionRequestModel():
return $default(_that.type,_that.quantity,_that.price,_that.date,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  double quantity,  double price,  String date,  String? comments)?  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionRequestModel() when $default != null:
return $default(_that.type,_that.quantity,_that.price,_that.date,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTransactionRequestModel implements CreateTransactionRequestModel {
  const _CreateTransactionRequestModel({required this.type, required this.quantity, required this.price, required this.date, this.comments});
  factory _CreateTransactionRequestModel.fromJson(Map<String, dynamic> json) => _$CreateTransactionRequestModelFromJson(json);

@override final  String type;
@override final  double quantity;
@override final  double price;
@override final  String date;
@override final  String? comments;

/// Create a copy of CreateTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTransactionRequestModelCopyWith<_CreateTransactionRequestModel> get copyWith => __$CreateTransactionRequestModelCopyWithImpl<_CreateTransactionRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTransactionRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTransactionRequestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,quantity,price,date,comments);

@override
String toString() {
  return 'CreateTransactionRequestModel(type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$CreateTransactionRequestModelCopyWith<$Res> implements $CreateTransactionRequestModelCopyWith<$Res> {
  factory _$CreateTransactionRequestModelCopyWith(_CreateTransactionRequestModel value, $Res Function(_CreateTransactionRequestModel) _then) = __$CreateTransactionRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String type, double quantity, double price, String date, String? comments
});




}
/// @nodoc
class __$CreateTransactionRequestModelCopyWithImpl<$Res>
    implements _$CreateTransactionRequestModelCopyWith<$Res> {
  __$CreateTransactionRequestModelCopyWithImpl(this._self, this._then);

  final _CreateTransactionRequestModel _self;
  final $Res Function(_CreateTransactionRequestModel) _then;

/// Create a copy of CreateTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,}) {
  return _then(_CreateTransactionRequestModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UpdateTransactionRequestModel {

 String get type; double get quantity; double get price; String get date; String? get comments;
/// Create a copy of UpdateTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTransactionRequestModelCopyWith<UpdateTransactionRequestModel> get copyWith => _$UpdateTransactionRequestModelCopyWithImpl<UpdateTransactionRequestModel>(this as UpdateTransactionRequestModel, _$identity);

  /// Serializes this UpdateTransactionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTransactionRequestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,quantity,price,date,comments);

@override
String toString() {
  return 'UpdateTransactionRequestModel(type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $UpdateTransactionRequestModelCopyWith<$Res>  {
  factory $UpdateTransactionRequestModelCopyWith(UpdateTransactionRequestModel value, $Res Function(UpdateTransactionRequestModel) _then) = _$UpdateTransactionRequestModelCopyWithImpl;
@useResult
$Res call({
 String type, double quantity, double price, String date, String? comments
});




}
/// @nodoc
class _$UpdateTransactionRequestModelCopyWithImpl<$Res>
    implements $UpdateTransactionRequestModelCopyWith<$Res> {
  _$UpdateTransactionRequestModelCopyWithImpl(this._self, this._then);

  final UpdateTransactionRequestModel _self;
  final $Res Function(UpdateTransactionRequestModel) _then;

/// Create a copy of UpdateTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateTransactionRequestModel].
extension UpdateTransactionRequestModelPatterns on UpdateTransactionRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTransactionRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTransactionRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTransactionRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTransactionRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  double quantity,  double price,  String date,  String? comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTransactionRequestModel() when $default != null:
return $default(_that.type,_that.quantity,_that.price,_that.date,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  double quantity,  double price,  String date,  String? comments)  $default,) {final _that = this;
switch (_that) {
case _UpdateTransactionRequestModel():
return $default(_that.type,_that.quantity,_that.price,_that.date,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  double quantity,  double price,  String date,  String? comments)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTransactionRequestModel() when $default != null:
return $default(_that.type,_that.quantity,_that.price,_that.date,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateTransactionRequestModel implements UpdateTransactionRequestModel {
  const _UpdateTransactionRequestModel({required this.type, required this.quantity, required this.price, required this.date, this.comments});
  factory _UpdateTransactionRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateTransactionRequestModelFromJson(json);

@override final  String type;
@override final  double quantity;
@override final  double price;
@override final  String date;
@override final  String? comments;

/// Create a copy of UpdateTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTransactionRequestModelCopyWith<_UpdateTransactionRequestModel> get copyWith => __$UpdateTransactionRequestModelCopyWithImpl<_UpdateTransactionRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateTransactionRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTransactionRequestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.date, date) || other.date == date)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,quantity,price,date,comments);

@override
String toString() {
  return 'UpdateTransactionRequestModel(type: $type, quantity: $quantity, price: $price, date: $date, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$UpdateTransactionRequestModelCopyWith<$Res> implements $UpdateTransactionRequestModelCopyWith<$Res> {
  factory _$UpdateTransactionRequestModelCopyWith(_UpdateTransactionRequestModel value, $Res Function(_UpdateTransactionRequestModel) _then) = __$UpdateTransactionRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String type, double quantity, double price, String date, String? comments
});




}
/// @nodoc
class __$UpdateTransactionRequestModelCopyWithImpl<$Res>
    implements _$UpdateTransactionRequestModelCopyWith<$Res> {
  __$UpdateTransactionRequestModelCopyWithImpl(this._self, this._then);

  final _UpdateTransactionRequestModel _self;
  final $Res Function(_UpdateTransactionRequestModel) _then;

/// Create a copy of UpdateTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? quantity = null,Object? price = null,Object? date = null,Object? comments = freezed,}) {
  return _then(_UpdateTransactionRequestModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BulkTransactionRequestModel {

 bool get replace; List<CreateTransactionRequestModel> get txs;
/// Create a copy of BulkTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BulkTransactionRequestModelCopyWith<BulkTransactionRequestModel> get copyWith => _$BulkTransactionRequestModelCopyWithImpl<BulkTransactionRequestModel>(this as BulkTransactionRequestModel, _$identity);

  /// Serializes this BulkTransactionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BulkTransactionRequestModel&&(identical(other.replace, replace) || other.replace == replace)&&const DeepCollectionEquality().equals(other.txs, txs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,replace,const DeepCollectionEquality().hash(txs));

@override
String toString() {
  return 'BulkTransactionRequestModel(replace: $replace, txs: $txs)';
}


}

/// @nodoc
abstract mixin class $BulkTransactionRequestModelCopyWith<$Res>  {
  factory $BulkTransactionRequestModelCopyWith(BulkTransactionRequestModel value, $Res Function(BulkTransactionRequestModel) _then) = _$BulkTransactionRequestModelCopyWithImpl;
@useResult
$Res call({
 bool replace, List<CreateTransactionRequestModel> txs
});




}
/// @nodoc
class _$BulkTransactionRequestModelCopyWithImpl<$Res>
    implements $BulkTransactionRequestModelCopyWith<$Res> {
  _$BulkTransactionRequestModelCopyWithImpl(this._self, this._then);

  final BulkTransactionRequestModel _self;
  final $Res Function(BulkTransactionRequestModel) _then;

/// Create a copy of BulkTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? replace = null,Object? txs = null,}) {
  return _then(_self.copyWith(
replace: null == replace ? _self.replace : replace // ignore: cast_nullable_to_non_nullable
as bool,txs: null == txs ? _self.txs : txs // ignore: cast_nullable_to_non_nullable
as List<CreateTransactionRequestModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BulkTransactionRequestModel].
extension BulkTransactionRequestModelPatterns on BulkTransactionRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BulkTransactionRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BulkTransactionRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BulkTransactionRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _BulkTransactionRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BulkTransactionRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _BulkTransactionRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool replace,  List<CreateTransactionRequestModel> txs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BulkTransactionRequestModel() when $default != null:
return $default(_that.replace,_that.txs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool replace,  List<CreateTransactionRequestModel> txs)  $default,) {final _that = this;
switch (_that) {
case _BulkTransactionRequestModel():
return $default(_that.replace,_that.txs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool replace,  List<CreateTransactionRequestModel> txs)?  $default,) {final _that = this;
switch (_that) {
case _BulkTransactionRequestModel() when $default != null:
return $default(_that.replace,_that.txs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BulkTransactionRequestModel implements BulkTransactionRequestModel {
  const _BulkTransactionRequestModel({required this.replace, required final  List<CreateTransactionRequestModel> txs}): _txs = txs;
  factory _BulkTransactionRequestModel.fromJson(Map<String, dynamic> json) => _$BulkTransactionRequestModelFromJson(json);

@override final  bool replace;
 final  List<CreateTransactionRequestModel> _txs;
@override List<CreateTransactionRequestModel> get txs {
  if (_txs is EqualUnmodifiableListView) return _txs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_txs);
}


/// Create a copy of BulkTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BulkTransactionRequestModelCopyWith<_BulkTransactionRequestModel> get copyWith => __$BulkTransactionRequestModelCopyWithImpl<_BulkTransactionRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BulkTransactionRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BulkTransactionRequestModel&&(identical(other.replace, replace) || other.replace == replace)&&const DeepCollectionEquality().equals(other._txs, _txs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,replace,const DeepCollectionEquality().hash(_txs));

@override
String toString() {
  return 'BulkTransactionRequestModel(replace: $replace, txs: $txs)';
}


}

/// @nodoc
abstract mixin class _$BulkTransactionRequestModelCopyWith<$Res> implements $BulkTransactionRequestModelCopyWith<$Res> {
  factory _$BulkTransactionRequestModelCopyWith(_BulkTransactionRequestModel value, $Res Function(_BulkTransactionRequestModel) _then) = __$BulkTransactionRequestModelCopyWithImpl;
@override @useResult
$Res call({
 bool replace, List<CreateTransactionRequestModel> txs
});




}
/// @nodoc
class __$BulkTransactionRequestModelCopyWithImpl<$Res>
    implements _$BulkTransactionRequestModelCopyWith<$Res> {
  __$BulkTransactionRequestModelCopyWithImpl(this._self, this._then);

  final _BulkTransactionRequestModel _self;
  final $Res Function(_BulkTransactionRequestModel) _then;

/// Create a copy of BulkTransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? replace = null,Object? txs = null,}) {
  return _then(_BulkTransactionRequestModel(
replace: null == replace ? _self.replace : replace // ignore: cast_nullable_to_non_nullable
as bool,txs: null == txs ? _self._txs : txs // ignore: cast_nullable_to_non_nullable
as List<CreateTransactionRequestModel>,
  ));
}


}


/// @nodoc
mixin _$BulkTransactionResponseModel {

 int get id;
/// Create a copy of BulkTransactionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BulkTransactionResponseModelCopyWith<BulkTransactionResponseModel> get copyWith => _$BulkTransactionResponseModelCopyWithImpl<BulkTransactionResponseModel>(this as BulkTransactionResponseModel, _$identity);

  /// Serializes this BulkTransactionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BulkTransactionResponseModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'BulkTransactionResponseModel(id: $id)';
}


}

/// @nodoc
abstract mixin class $BulkTransactionResponseModelCopyWith<$Res>  {
  factory $BulkTransactionResponseModelCopyWith(BulkTransactionResponseModel value, $Res Function(BulkTransactionResponseModel) _then) = _$BulkTransactionResponseModelCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$BulkTransactionResponseModelCopyWithImpl<$Res>
    implements $BulkTransactionResponseModelCopyWith<$Res> {
  _$BulkTransactionResponseModelCopyWithImpl(this._self, this._then);

  final BulkTransactionResponseModel _self;
  final $Res Function(BulkTransactionResponseModel) _then;

/// Create a copy of BulkTransactionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BulkTransactionResponseModel].
extension BulkTransactionResponseModelPatterns on BulkTransactionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BulkTransactionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BulkTransactionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BulkTransactionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _BulkTransactionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BulkTransactionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _BulkTransactionResponseModel() when $default != null:
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
case _BulkTransactionResponseModel() when $default != null:
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
case _BulkTransactionResponseModel():
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
case _BulkTransactionResponseModel() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BulkTransactionResponseModel implements BulkTransactionResponseModel {
  const _BulkTransactionResponseModel({required this.id});
  factory _BulkTransactionResponseModel.fromJson(Map<String, dynamic> json) => _$BulkTransactionResponseModelFromJson(json);

@override final  int id;

/// Create a copy of BulkTransactionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BulkTransactionResponseModelCopyWith<_BulkTransactionResponseModel> get copyWith => __$BulkTransactionResponseModelCopyWithImpl<_BulkTransactionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BulkTransactionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BulkTransactionResponseModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'BulkTransactionResponseModel(id: $id)';
}


}

/// @nodoc
abstract mixin class _$BulkTransactionResponseModelCopyWith<$Res> implements $BulkTransactionResponseModelCopyWith<$Res> {
  factory _$BulkTransactionResponseModelCopyWith(_BulkTransactionResponseModel value, $Res Function(_BulkTransactionResponseModel) _then) = __$BulkTransactionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$BulkTransactionResponseModelCopyWithImpl<$Res>
    implements _$BulkTransactionResponseModelCopyWith<$Res> {
  __$BulkTransactionResponseModelCopyWithImpl(this._self, this._then);

  final _BulkTransactionResponseModel _self;
  final $Res Function(_BulkTransactionResponseModel) _then;

/// Create a copy of BulkTransactionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_BulkTransactionResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
