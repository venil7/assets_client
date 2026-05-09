import 'package:assets_client/features/portfolio/domain/entities/asset_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:flutter/material.dart';

class AssetList extends StatelessWidget {
  final List<AssetEntity> assets;
  final void Function(int portfolioId, int assetId)? onAssetTap;

  const AssetList({super.key, required this.assets, this.onAssetTap});

  @override
  Widget build(BuildContext context) {
    if (assets.isEmpty) {
      return const Center(child: Text('No assets found'));
    }

    final sorted = List<AssetEntity>.of(assets)
      ..sort((a, b) => (b.returnPct ?? 0).compareTo(a.returnPct ?? 0));

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: sorted.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final asset = sorted[index];
        final periodPos = (asset.returnPct ?? 0) >= 0;
        final totalPos = (asset.totalReturnPct ?? 0) >= 0;
        final periodColor = periodPos ? Colors.green : Colors.red;
        final totalColor = totalPos ? Colors.green : Colors.red;

        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onAssetTap != null
                ? () => onAssetTap!(asset.portfolioId, asset.id)
                : null,
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
                            Text(
                              asset.ticker,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              asset.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
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
                                formatPct(asset.returnPct ?? 0),
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
                                formatPct(asset.totalReturnPct ?? 0),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _infoSmall('Holdings', asset.holdings.toStringAsFixed(2)),
                      _infoSmall('Avg Price', _formatCurrency(asset.avgPrice)),
                      _infoSmall(
                        'Weight',
                        formatPct(asset.weight ?? 0, showSign: false),
                      ),
                      _infoSmall('Tx Count', '${asset.numTxs}'),
                      _infoSmall('Invested', _formatCurrency(asset.invested)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _infoSmall(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
        Text(label, style: TextStyle(fontSize: 10, color: Colors.grey[600])),
      ],
    );
  }

  String _formatCurrency(double value) => formatCurrency(value);
}
