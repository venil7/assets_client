import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required int id,
    @JsonKey(name: 'asset_id') required int assetId,
    required String type,
    required double quantity,
    required double price,
    required String date,
    String? comments,
    @JsonKey(name: 'quantity_ext') double? quantityExt,
    double? stretch,
    @JsonKey(name: 'final_stretch') bool? finalStretch,
    double? value,
    double? pnl,
    @JsonKey(name: 'pnl_pct') double? pnlPct,
    @JsonKey(name: 'realized_pnl') required double realizedPnl,
    required double cost,
    @JsonKey(name: 'cost_basis') required double costBasis,
    required double contribution,
    @JsonKey(name: 'running_holding') required double runningHolding,
    @JsonKey(name: 'running_cost') required double runningCost,
    @JsonKey(name: 'running_average_price')
    required double runningAveragePrice,
    @JsonKey(name: 'running_break_even') required double runningBreakEven,
    @JsonKey(name: 'running_contribution') required double runningContribution,
    @JsonKey(name: 'asset_name') required String assetName,
    @JsonKey(name: 'asset_ticker') required String assetTicker,
    @JsonKey(name: 'portfolio_name') required String portfolioName,
    @JsonKey(name: 'portfolio_description')
    required String portfolioDescription,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'user_base_ccy') required String userBaseCcy,
    required int timestamp,
    required String created,
    required String modified,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, Object?> json) =>
      _$TransactionModelFromJson(json);
}

@freezed
class TransactionListItemModel with _$TransactionListItemModel {
  const factory TransactionListItemModel({
    required int id,
    @JsonKey(name: 'asset_id') required int assetId,
    required String type,
    required double quantity,
    required double price,
    required String date,
    String? comments,
    @JsonKey(name: 'quantity_ext') double? quantityExt,
    @JsonKey(name: 'asset_name') required String assetName,
    @JsonKey(name: 'asset_ticker') required String assetTicker,
  }) = _TransactionListItemModel;

  factory TransactionListItemModel.fromJson(Map<String, Object?> json) =>
      _$TransactionListItemModelFromJson(json);
}

@freezed
class CreateTransactionRequestModel with _$CreateTransactionRequestModel {
  const factory CreateTransactionRequestModel({
    required String type,
    required double quantity,
    required double price,
    required String date,
    String? comments,
  }) = _CreateTransactionRequestModel;

  factory CreateTransactionRequestModel.fromJson(Map<String, Object?> json) =>
      _$CreateTransactionRequestModelFromJson(json);
}

@freezed
class UpdateTransactionRequestModel with _$UpdateTransactionRequestModel {
  const factory UpdateTransactionRequestModel({
    required String type,
    required double quantity,
    required double price,
    required String date,
    String? comments,
  }) = _UpdateTransactionRequestModel;

  factory UpdateTransactionRequestModel.fromJson(Map<String, Object?> json) =>
      _$UpdateTransactionRequestModelFromJson(json);
}

@freezed
class BulkTransactionRequestModel with _$BulkTransactionRequestModel {
  const factory BulkTransactionRequestModel({
    required bool replace,
    required List<CreateTransactionRequestModel> txs,
  }) = _BulkTransactionRequestModel;

  factory BulkTransactionRequestModel.fromJson(Map<String, Object?> json) =>
      _$BulkTransactionRequestModelFromJson(json);
}

@freezed
class BulkTransactionResponseModel with _$BulkTransactionResponseModel {
  const factory BulkTransactionResponseModel({
    required int id,
  }) = _BulkTransactionResponseModel;

  factory BulkTransactionResponseModel.fromJson(Map<String, Object?> json) =>
      _$BulkTransactionResponseModelFromJson(json);
}
