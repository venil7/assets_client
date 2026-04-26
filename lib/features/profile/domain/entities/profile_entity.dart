import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';

@freezed
abstract class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required int id,
    required String username,
    required bool admin,
    required int loginAttempts,
    required bool locked,
    required String created,
    required String modified,
  }) = _ProfileEntity;
}

@freezed
abstract class UserPreferencesEntity with _$UserPreferencesEntity {
  const factory UserPreferencesEntity({
    required int id,
    required String baseCcy,
    Map<String, dynamic>? additional,
  }) = _UserPreferencesEntity;
}

@freezed
abstract class SummaryEntity with _$SummaryEntity {
  const factory SummaryEntity({
    required int numPortfolios,
    required double invested,
    required double realizedPnl,
    required double breakEven,
    required double fxImpact,
  }) = _SummaryEntity;
}

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String username,
    required bool admin,
    required int loginAttempts,
    required bool locked,
    required String created,
    required String modified,
  }) = _UserEntity;
}
