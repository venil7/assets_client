import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/features/asset/data/models/transaction_model.dart';

abstract class TransactionRemoteDataSource {
  Future<List<TransactionListItemModel>> getTransactions(int portfolioId, int assetId);
  Future<TransactionModel> getTransaction(int portfolioId, int assetId, int txId);
  Future<TransactionModel> createTransaction(
    int portfolioId,
    int assetId,
    String type,
    double quantity,
    double price,
    String date,
    String? comments,
  );
  Future<TransactionModel> updateTransaction(
    int portfolioId,
    int assetId,
    int txId,
    String type,
    double quantity,
    double price,
    String date,
    String? comments,
  );
  Future<void> deleteTransaction(int portfolioId, int assetId, int txId);
  Future<List<BulkTransactionResponseModel>> bulkUploadTransactions(
    int portfolioId,
    int assetId,
    bool replace,
    List<CreateTransactionRequestModel> txs,
  );
  Future<void> deleteAllTransactions(int portfolioId, int assetId);
}

class TransactionRemoteDataSourceImpl implements TransactionRemoteDataSource {
  final ApiClient apiClient;

  TransactionRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<List<TransactionListItemModel>> getTransactions(int portfolioId, int assetId) =>
      apiClient.getTransactions(portfolioId, assetId);

  @override
  Future<TransactionModel> getTransaction(int portfolioId, int assetId, int txId) =>
      apiClient.getTransaction(portfolioId, assetId, txId);

  @override
  Future<TransactionModel> createTransaction(
    int portfolioId,
    int assetId,
    String type,
    double quantity,
    double price,
    String date,
    String? comments,
  ) {
    final request = CreateTransactionRequestModel(
      type: type,
      quantity: quantity,
      price: price,
      date: date,
      comments: comments,
    );
    return apiClient.createTransaction(portfolioId, assetId, request);
  }

  @override
  Future<TransactionModel> updateTransaction(
    int portfolioId,
    int assetId,
    int txId,
    String type,
    double quantity,
    double price,
    String date,
    String? comments,
  ) {
    final request = UpdateTransactionRequestModel(
      type: type,
      quantity: quantity,
      price: price,
      date: date,
      comments: comments,
    );
    return apiClient.updateTransaction(portfolioId, assetId, txId, request);
  }

  @override
  Future<void> deleteTransaction(int portfolioId, int assetId, int txId) async {
    await apiClient.deleteTransaction(portfolioId, assetId, txId);
  }

  @override
  Future<List<BulkTransactionResponseModel>> bulkUploadTransactions(
    int portfolioId,
    int assetId,
    bool replace,
    List<CreateTransactionRequestModel> txs,
  ) {
    final request = BulkTransactionRequestModel(replace: replace, txs: txs);
    return apiClient.bulkUploadTransactions(portfolioId, assetId, request);
  }

  @override
  Future<void> deleteAllTransactions(int portfolioId, int assetId) async {
    await apiClient.deleteAllTransactions(portfolioId, assetId);
  }
}
