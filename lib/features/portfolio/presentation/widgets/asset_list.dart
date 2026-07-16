import 'package:assets_client/features/portfolio/domain/entities/asset_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AssetList extends StatelessWidget {
  final List<AssetEntity> assets;
  final void Function(int assetId)? onAssetTap;
  final void Function(int assetId)? onAssetEdit;
  final void Function(int assetId)? onAssetDelete;

  const AssetList({
    super.key,
    required this.assets,
    this.onAssetTap,
    this.onAssetEdit,
    this.onAssetDelete,
  });

  @override
  Widget build(BuildContext context) {
    if (assets.isEmpty) {
      return const Center(child: Text('No assets in this portfolio'));
    }

    final hasActions = onAssetEdit != null || onAssetDelete != null;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: assets.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final asset = assets[index];
        return hasActions
            ? _buildSlidable(context, asset)
            : _buildCard(context, asset);
      },
    );
  }

  Widget _buildSlidable(BuildContext context, AssetEntity asset) {
    return Slidable(
      key: ValueKey('asset_${asset.id}'),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.45,
        children: [
          if (onAssetEdit != null)
            SlidableAction(
              onPressed: (_) => onAssetEdit?.call(asset.id),
              backgroundColor: Colors.blue.shade600,
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
            ),
          if (onAssetDelete != null)
            SlidableAction(
              onPressed: (_) => onAssetDelete?.call(asset.id),
              backgroundColor: Colors.red.shade600,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
        ],
      ),
      child: _buildCard(context, asset),
    );
  }

  Widget _buildCard(BuildContext context, AssetEntity asset) {
    final periodPos = (asset.totalReturnPct ?? 0) >= 0;
    final color = periodPos ? Colors.green : Colors.red;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onAssetTap?.call(asset.id),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      asset.ticker,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      asset.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    formatCurrency(
                      asset.totalReturnValue ?? asset.invested,
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        formatPct(asset.totalReturnPct ?? 0),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '${formatCurrency(asset.invested)} invested',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
