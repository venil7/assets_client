// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      id: (json['id'] as num).toInt(),
      assetId: (json['asset_id'] as num).toInt(),
      type: json['type'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      date: json['date'] as String,
      comments: json['comments'] as String?,
      quantityExt: (json['quantity_ext'] as num?)?.toDouble(),
      stretch: (json['stretch'] as num?)?.toDouble(),
      finalStretch: json['final_stretch'] as bool?,
      value: (json['value'] as num?)?.toDouble(),
      pnl: (json['pnl'] as num?)?.toDouble(),
      pnlPct: (json['pnl_pct'] as num?)?.toDouble(),
      realizedPnl: (json['realized_pnl'] as num).toDouble(),
      cost: (json['cost'] as num).toDouble(),
      costBasis: (json['cost_basis'] as num).toDouble(),
      contribution: (json['contribution'] as num).toDouble(),
      runningHolding: (json['running_holding'] as num).toDouble(),
      runningCost: (json['running_cost'] as num).toDouble(),
      runningAveragePrice: (json['running_average_price'] as num).toDouble(),
      runningBreakEven: (json['running_break_even'] as num).toDouble(),
      runningContribution: (json['running_contribution'] as num).toDouble(),
      assetName: json['asset_name'] as String,
      assetTicker: json['asset_ticker'] as String,
      portfolioName: json['portfolio_name'] as String,
      portfolioDescription: json['portfolio_description'] as String,
      userId: (json['user_id'] as num).toInt(),
      userBaseCcy: json['user_base_ccy'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      created: json['created'] as String,
      modified: json['modified'] as String,
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'asset_id': instance.assetId,
      'type': instance.type,
      'quantity': instance.quantity,
      'price': instance.price,
      'date': instance.date,
      'comments': instance.comments,
      'quantity_ext': instance.quantityExt,
      'stretch': instance.stretch,
      'final_stretch': instance.finalStretch,
      'value': instance.value,
      'pnl': instance.pnl,
      'pnl_pct': instance.pnlPct,
      'realized_pnl': instance.realizedPnl,
      'cost': instance.cost,
      'cost_basis': instance.costBasis,
      'contribution': instance.contribution,
      'running_holding': instance.runningHolding,
      'running_cost': instance.runningCost,
      'running_average_price': instance.runningAveragePrice,
      'running_break_even': instance.runningBreakEven,
      'running_contribution': instance.runningContribution,
      'asset_name': instance.assetName,
      'asset_ticker': instance.assetTicker,
      'portfolio_name': instance.portfolioName,
      'portfolio_description': instance.portfolioDescription,
      'user_id': instance.userId,
      'user_base_ccy': instance.userBaseCcy,
      'timestamp': instance.timestamp,
      'created': instance.created,
      'modified': instance.modified,
    };

_TransactionListItemModel _$TransactionListItemModelFromJson(
  Map<String, dynamic> json,
) => _TransactionListItemModel(
  id: (json['id'] as num).toInt(),
  assetId: (json['asset_id'] as num).toInt(),
  type: json['type'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  date: json['date'] as String,
  comments: json['comments'] as String?,
  quantityExt: (json['quantity_ext'] as num?)?.toDouble(),
  assetName: json['asset_name'] as String,
  assetTicker: json['asset_ticker'] as String,
);

Map<String, dynamic> _$TransactionListItemModelToJson(
  _TransactionListItemModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'asset_id': instance.assetId,
  'type': instance.type,
  'quantity': instance.quantity,
  'price': instance.price,
  'date': instance.date,
  'comments': instance.comments,
  'quantity_ext': instance.quantityExt,
  'asset_name': instance.assetName,
  'asset_ticker': instance.assetTicker,
};

_CreateTransactionRequestModel _$CreateTransactionRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateTransactionRequestModel(
  type: json['type'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  date: json['date'] as String,
  comments: json['comments'] as String?,
);

Map<String, dynamic> _$CreateTransactionRequestModelToJson(
  _CreateTransactionRequestModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'quantity': instance.quantity,
  'price': instance.price,
  'date': instance.date,
  'comments': instance.comments,
};

_UpdateTransactionRequestModel _$UpdateTransactionRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateTransactionRequestModel(
  type: json['type'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  date: json['date'] as String,
  comments: json['comments'] as String?,
);

Map<String, dynamic> _$UpdateTransactionRequestModelToJson(
  _UpdateTransactionRequestModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'quantity': instance.quantity,
  'price': instance.price,
  'date': instance.date,
  'comments': instance.comments,
};

_BulkTransactionRequestModel _$BulkTransactionRequestModelFromJson(
  Map<String, dynamic> json,
) => _BulkTransactionRequestModel(
  replace: json['replace'] as bool,
  txs: (json['txs'] as List<dynamic>)
      .map(
        (e) =>
            CreateTransactionRequestModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$BulkTransactionRequestModelToJson(
  _BulkTransactionRequestModel instance,
) => <String, dynamic>{'replace': instance.replace, 'txs': instance.txs};

_BulkTransactionResponseModel _$BulkTransactionResponseModelFromJson(
  Map<String, dynamic> json,
) => _BulkTransactionResponseModel(id: (json['id'] as num).toInt());

Map<String, dynamic> _$BulkTransactionResponseModelToJson(
  _BulkTransactionResponseModel instance,
) => <String, dynamic>{'id': instance.id};
