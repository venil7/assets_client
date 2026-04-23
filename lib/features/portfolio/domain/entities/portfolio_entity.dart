import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_entity.freezed.dart';

@freezed
class PortfolioEntity with _$PortfolioEntity {
  const factory PortfolioEntity({
    required int id,
    required int userId,
    required String name,
    required String description,
    required int numAssets,
    required String created,
    required String modified,
    required double invested,
    required double realizedPnl,
    required double breakEven,
    required double fxImpact,
  }) = _PortfolioEntity;
}
