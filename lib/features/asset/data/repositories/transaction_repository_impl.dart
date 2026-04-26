import 'package:assets_client/features/asset/data/datasources/transaction_remote_data_source.dart';
import 'package:assets_client/features/asset/data/models/transaction_model.dart';
import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';
import 'package:assets_client/features/asset/domain/repositories/transaction_repository.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionRemoteDataSource remoteDataSource;

  TransactionRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<TransactionEntity>> getTransactions(
    int portfolioId,
    int assetId,
  ) async {
    final models = await remoteDataSource.getTransactions(portfolioId, assetId);
    return models
        .map(
          (m) => TransactionEntity(
            id: m.id,
            assetId: m.assetId,
            type: m.type,
            quantity: m.quantity,
            price: m.price,
            date: m.date,
            comments: m.comments,
            realizedPnl: 0,
            cost: m.price * m.quantity,
            costBasis: m.price * m.quantity,
            contribution: 0,
            runningHolding: 0,
            runningCost: 0,
            runningAveragePrice: 0,
            runningBreakEven: 0,
            runningContribution: 0,
            assetName: m.assetName,
            assetTicker: m.assetTicker,
            portfolioName: '',
            timestamp: 0,
            created: '',
            modified: '',
          ),
        )
        .toList();
  }

  @override
  Future<TransactionEntity> getTransaction(
    int portfolioId,
    int assetId,
    int txId,
  ) async {
    final model = await remoteDataSource.getTransaction(
      portfolioId,
      assetId,
      txId,
    );
    return TransactionEntity(
      id: model.id,
      assetId: model.assetId,
      type: model.type,
      quantity: model.quantity,
      price: model.price,
      date: model.date,
      comments: model.comments,
      realizedPnl: model.realizedPnl,
      cost: model.cost,
      costBasis: model.costBasis,
      contribution: model.contribution,
      runningHolding: model.runningHolding,
      runningCost: model.runningCost,
      runningAveragePrice: model.runningAveragePrice,
      runningBreakEven: model.runningBreakEven,
      runningContribution: model.runningContribution,
      assetName: model.assetName,
      assetTicker: model.assetTicker,
      portfolioName: model.portfolioName,
      timestamp: model.timestamp,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<TransactionEntity> createTransaction(
    int portfolioId,
    int assetId,
    String type,
    double quantity,
    double price,
    String date,
    String? comments,
  ) async {
    final model = await remoteDataSource.createTransaction(
      portfolioId,
      assetId,
      type,
      quantity,
      price,
      date,
      comments,
    );
    return TransactionEntity(
      id: model.id,
      assetId: model.assetId,
      type: model.type,
      quantity: model.quantity,
      price: model.price,
      date: model.date,
      comments: model.comments,
      realizedPnl: model.realizedPnl,
      cost: model.cost,
      costBasis: model.costBasis,
      contribution: model.contribution,
      runningHolding: model.runningHolding,
      runningCost: model.runningCost,
      runningAveragePrice: model.runningAveragePrice,
      runningBreakEven: model.runningBreakEven,
      runningContribution: model.runningContribution,
      assetName: model.assetName,
      assetTicker: model.assetTicker,
      portfolioName: model.portfolioName,
      timestamp: model.timestamp,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<TransactionEntity> updateTransaction(
    int portfolioId,
    int assetId,
    int txId,
    String type,
    double quantity,
    double price,
    String date,
    String? comments,
  ) async {
    final model = await remoteDataSource.updateTransaction(
      portfolioId,
      assetId,
      txId,
      type,
      quantity,
      price,
      date,
      comments,
    );
    return TransactionEntity(
      id: model.id,
      assetId: model.assetId,
      type: model.type,
      quantity: model.quantity,
      price: model.price,
      date: model.date,
      comments: model.comments,
      realizedPnl: model.realizedPnl,
      cost: model.cost,
      costBasis: model.costBasis,
      contribution: model.contribution,
      runningHolding: model.runningHolding,
      runningCost: model.runningCost,
      runningAveragePrice: model.runningAveragePrice,
      runningBreakEven: model.runningBreakEven,
      runningContribution: model.runningContribution,
      assetName: model.assetName,
      assetTicker: model.assetTicker,
      portfolioName: model.portfolioName,
      timestamp: model.timestamp,
      created: model.created,
      modified: model.modified,
    );
  }

  @override
  Future<void> deleteTransaction(int portfolioId, int assetId, int txId) =>
      remoteDataSource.deleteTransaction(portfolioId, assetId, txId);

  @override
  Future<List<int>> bulkUploadTransactions(
    int portfolioId,
    int assetId,
    bool replace,
    List<Map<String, dynamic>> txs,
  ) async {
    final requests = txs
        .map(
          (tx) => CreateTransactionRequestModel(
            type: tx['type'] as String,
            quantity: tx['quantity'] as double,
            price: tx['price'] as double,
            date: tx['date'] as String,
            comments: tx['comments'] as String?,
          ),
        )
        .toList();
    final responses = await remoteDataSource.bulkUploadTransactions(
      portfolioId,
      assetId,
      replace,
      requests,
    );
    return responses.map((r) => r.id).toList();
  }

  @override
  Future<void> deleteAllTransactions(int portfolioId, int assetId) =>
      remoteDataSource.deleteAllTransactions(portfolioId, assetId);
}
