import 'package:assets_client/features/asset/domain/entities/asset_detail_entity.dart';
import 'package:assets_client/features/asset/domain/entities/asset_entity.dart';
import 'package:assets_client/features/asset/domain/repositories/asset_detail_repository.dart';
import 'package:assets_client/features/asset/domain/repositories/transaction_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AssetDetailEvent extends Equatable {
  const AssetDetailEvent();

  @override
  List<Object?> get props => [];
}

class LoadAssetDetailEvent extends AssetDetailEvent {
  final int portfolioId;
  final int assetId;
  final String? range;

  const LoadAssetDetailEvent({
    required this.portfolioId,
    required this.assetId,
    this.range,
  });

  @override
  List<Object?> get props => [portfolioId, assetId, range];
}

class ChangeRangeEvent extends AssetDetailEvent {
  final String range;

  const ChangeRangeEvent(this.range);
}

abstract class AssetDetailState extends Equatable {
  const AssetDetailState();

  @override
  List<Object?> get props => [];
}

class AssetDetailInitial extends AssetDetailState {}

class AssetDetailLoading extends AssetDetailState {}

class AssetDetailLoaded extends AssetDetailState {
  final AssetDetailEntity detail;
  final List<TransactionEntity> transactions;
  final String currentRange;
  final List<String> validRanges;

  const AssetDetailLoaded({
    required this.detail,
    required this.transactions,
    required this.currentRange,
    required this.validRanges,
  });

  @override
  List<Object?> get props => [detail, transactions, currentRange, validRanges];
}

class AssetDetailError extends AssetDetailState {
  final String message;

  const AssetDetailError(this.message);

  @override
  List<Object?> get props => [message];
}

class AssetDetailBloc extends Bloc<AssetDetailEvent, AssetDetailState> {
  final AssetDetailRepository assetDetailRepository;
  final TransactionRepository transactionRepository;
  int? _currentPortfolioId;
  int? _currentAssetId;
  String? _currentRange;

  AssetDetailBloc({
    required this.assetDetailRepository,
    required this.transactionRepository,
  }) : super(AssetDetailInitial()) {
    on<LoadAssetDetailEvent>(_onLoadAssetDetail);
    on<ChangeRangeEvent>(_onChangeRange);
  }

  Future<void> _onLoadAssetDetail(
    LoadAssetDetailEvent event,
    Emitter<AssetDetailState> emit,
  ) async {
    _currentPortfolioId = event.portfolioId;
    _currentAssetId = event.assetId;
    emit(AssetDetailLoading());
    try {
      final range = event.range ?? _currentRange ?? '1d';

      final results = await Future.wait([
        assetDetailRepository.getAssetDetail(
          event.portfolioId,
          event.assetId,
          range,
        ),
        transactionRepository.getTransactions(event.portfolioId, event.assetId),
      ]);

      final detail = results[0] as AssetDetailEntity;
      final txs = results[1] as List<TransactionEntity>;

      _currentRange = range;

      emit(
        AssetDetailLoaded(
          detail: detail,
          transactions: txs,
          currentRange: detail.meta.range,
          validRanges: detail.meta.validRanges,
        ),
      );
    } catch (e) {
      emit(AssetDetailError('Failed to load data: $e'));
    }
  }

  Future<void> _onChangeRange(
    ChangeRangeEvent event,
    Emitter<AssetDetailState> emit,
  ) async {
    if (_currentPortfolioId == null || _currentAssetId == null) return;
    add(
      LoadAssetDetailEvent(
        portfolioId: _currentPortfolioId!,
        assetId: _currentAssetId!,
        range: event.range,
      ),
    );
  }
}
