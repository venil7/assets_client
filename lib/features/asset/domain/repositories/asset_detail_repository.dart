import 'package:assets_client/features/asset/domain/entities/asset_detail_entity.dart';

abstract class AssetDetailRepository {
  Future<AssetDetailEntity> getAssetDetail(
    int portfolioId,
    int assetId,
    String? range,
  );
}
