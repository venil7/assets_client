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
              backgroundColor: Colors.blue.shade200,
              foregroundColor: Colors.blue.shade900,
              icon: Icons.edit,
              label: 'Edit',
              borderRadius: BorderRadius.circular(12),
            ),
          if (onAssetDelete != null)
            SlidableAction(
              onPressed: (_) => onAssetDelete?.call(asset.id),
              backgroundColor: Colors.red.shade200,
              foregroundColor: Colors.red.shade900,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: BorderRadius.circular(12),
            ),
        ],
      ),
      child: _buildCard(context, asset),
    );
  }

  Widget _buildCard(BuildContext context, AssetEntity asset) {
    final periodPct = asset.returnPct ?? 0;
    final totalPct = asset.totalReturnPct ?? 0;
    final periodPos = periodPct >= 0;
    final totalPos = totalPct >= 0;
    final periodColor = periodPos ? Colors.green : Colors.red;
    final totalColor = totalPos ? Colors.green : Colors.red;
    final currentPrice = asset.endPrice ?? asset.holdings * asset.avgPrice;

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                asset.name,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              formatCurrency(currentPrice),
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            asset.ticker,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            formatPct(periodPct),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: periodColor,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            formatCurrency(
                              asset.returnValue ?? 0,
                              showSign: true,
                            ),
                            style: TextStyle(
                              fontSize: 18,
                              color: periodColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            formatPct(totalPct),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: totalColor,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            formatCurrency(
                              asset.totalReturnValue ?? 0,
                              showSign: true,
                            ),
                            style: TextStyle(
                              fontSize: 14,
                              color: totalColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _buildBottomRow(asset),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomRow(AssetEntity asset) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _infoColumn('Holdings', asset.holdings.toStringAsFixed(2)),
        asset.weight == null
            ? _infoColumn('Weight', '—')
            : _infoColumn('Weight', formatPct(asset.weight!, showSign: false)),
        _infoColumn('Invested', formatCurrency(asset.invested)),
        _infoColumn('Avg Price', formatCurrency(asset.avgPrice)),
      ],
    );
  }

  Widget _infoColumn(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }

}
