import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';

abstract class TransactionRepository {
  Future<List<TransactionEntity>> getTransactions(int portfolioId, int assetId);
  Future<TransactionEntity> getTransaction(int portfolioId, int assetId, int txId);
  Future<TransactionEntity> createTransaction(
    int portfolioId,
    int assetId,
    String type,
    double quantity,
    double price,
    String date,
    String? comments,
  );
  Future<TransactionEntity> updateTransaction(
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
  Future<List<int>> bulkUploadTransactions(
    int portfolioId,
    int assetId,
    bool replace,
    List<Map<String, dynamic>> txs,
  );
  Future<void> deleteAllTransactions(int portfolioId, int assetId);
}
