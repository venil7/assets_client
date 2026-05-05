import 'package:assets_client/features/portfolio/domain/entities/asset_entity.dart';
import 'package:assets_client/shared/utils/format_utils.dart';
import 'package:flutter/material.dart';

class AssetList extends StatelessWidget {
  final List<AssetEntity> assets;

  const AssetList({super.key, required this.assets});

  @override
  Widget build(BuildContext context) {
    if (assets.isEmpty) {
      return const Center(child: Text('No assets found'));
    }

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: assets.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final asset = assets[index];
        final isPositive = (asset.returnPct ?? 0) >= 0;

        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${((asset.returnPct ?? 0) * 100).toStringAsFixed(2)}%',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isPositive ? Colors.green : Colors.red,
                          ),
                        ),
                        Text(
                          '${_formatCurrency(asset.invested)} invested',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _infoColumn('Holdings', asset.holdings.toStringAsFixed(2)),
                    _infoColumn('Avg Price', _formatCurrency(asset.avgPrice)),
                    _infoColumn(
                      'Weight',
                      '${(asset.weight ?? 0 * 100).toStringAsFixed(1)}%',
                    ),
                    _infoColumn('Tx Count', '${asset.numTxs}'),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _infoColumn(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }

  String _formatCurrency(double value) => formatCurrency(value);
}
