import 'package:assets_client/features/portfolio/domain/entities/asset_entity.dart';
import 'package:assets_client/features/portfolio/domain/entities/portfolio_detail_entity.dart';
import 'package:assets_client/features/portfolio/domain/repositories/portfolio_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// == Events ==
abstract class PortfolioEvent extends Equatable {
  const PortfolioEvent();

  @override
  List<Object?> get props => [];
}

class LoadPortfolioEvent extends PortfolioEvent {
  final int portfolioId;
  final String? range;

  const LoadPortfolioEvent({required this.portfolioId, this.range});

  @override
  List<Object?> get props => [portfolioId, range];
}

class ChangeRangeEvent extends PortfolioEvent {
  final String range;

  const ChangeRangeEvent(this.range);
}

class CreateAssetEvent extends PortfolioEvent {
  final int portfolioId;
  final String ticker;
  final String name;

  const CreateAssetEvent({
    required this.portfolioId,
    required this.ticker,
    required this.name,
  });

  @override
  List<Object?> get props => [portfolioId, ticker, name];
}

class UpdateAssetEvent extends PortfolioEvent {
  final int portfolioId;
  final int assetId;
  final String ticker;
  final String name;

  const UpdateAssetEvent({
    required this.portfolioId,
    required this.assetId,
    required this.ticker,
    required this.name,
  });

  @override
  List<Object?> get props => [portfolioId, assetId, ticker, name];
}

class DeleteAssetEvent extends PortfolioEvent {
  final int portfolioId;
  final int assetId;

  const DeleteAssetEvent({
    required this.portfolioId,
    required this.assetId,
  });

  @override
  List<Object?> get props => [portfolioId, assetId];
}

// == States ==
abstract class PortfolioState extends Equatable {
  const PortfolioState();

  @override
  List<Object?> get props => [];
}

class PortfolioInitial extends PortfolioState {}

class PortfolioLoading extends PortfolioState {}

class PortfolioLoaded extends PortfolioState {
  final PortfolioDetailEntity portfolio;
  final List<AssetEntity> assets;
  final String currentRange;
  final List<String> validRanges;

  const PortfolioLoaded({
    required this.portfolio,
    required this.assets,
    required this.currentRange,
    required this.validRanges,
  });

  @override
  List<Object?> get props => [portfolio, assets, currentRange, validRanges];
}

class PortfolioError extends PortfolioState {
  final String message;

  const PortfolioError(this.message);

  @override
  List<Object?> get props => [message];
}

// == Bloc ==
class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final PortfolioRepository repository;
  int? _currentPortfolioId;
  String? _currentRange;

  PortfolioBloc({required this.repository}) : super(PortfolioInitial()) {
    on<LoadPortfolioEvent>(_onLoadPortfolio);
    on<ChangeRangeEvent>(_onChangeRange);
    on<CreateAssetEvent>(_onCreateAsset);
    on<UpdateAssetEvent>(_onUpdateAsset);
    on<DeleteAssetEvent>(_onDeleteAsset);
  }

  Future<void> _onLoadPortfolio(
    LoadPortfolioEvent event,
    Emitter<PortfolioState> emit,
  ) async {
    _currentPortfolioId = event.portfolioId;
    emit(PortfolioLoading());
    try {
      final range = event.range ?? _currentRange ?? '1d';

      final portfolio = await repository.getPortfolioDetail(
        event.portfolioId,
        range,
      );
      final assets = await repository.getAssetsForPortfolio(
        event.portfolioId,
        range,
      );

      _currentRange = range;

      emit(
        PortfolioLoaded(
          portfolio: portfolio,
          assets: assets,
          currentRange: portfolio.meta.range,
          validRanges: portfolio.meta.validRanges,
        ),
      );
    } catch (e) {
      emit(PortfolioError('Failed to load data: $e'));
    }
  }

  Future<void> _onChangeRange(
    ChangeRangeEvent event,
    Emitter<PortfolioState> emit,
  ) async {
    if (_currentPortfolioId == null) return;
    add(
      LoadPortfolioEvent(portfolioId: _currentPortfolioId!, range: event.range),
    );
  }

  Future<void> _onCreateAsset(
    CreateAssetEvent event,
    Emitter<PortfolioState> emit,
  ) async {
    if (state is! PortfolioLoaded) return;
    try {
      await repository.createAsset(
        event.portfolioId,
        event.ticker,
        event.name,
      );
    } catch (e) {
      emit(PortfolioError('Failed to create asset: $e'));
      return;
    }
    add(LoadPortfolioEvent(portfolioId: event.portfolioId));
  }

  Future<void> _onUpdateAsset(
    UpdateAssetEvent event,
    Emitter<PortfolioState> emit,
  ) async {
    if (state is! PortfolioLoaded) return;
    try {
      await repository.updateAsset(
        event.portfolioId,
        event.assetId,
        event.ticker,
        event.name,
      );
    } catch (e) {
      emit(PortfolioError('Failed to update asset: $e'));
      return;
    }
    add(LoadPortfolioEvent(portfolioId: event.portfolioId));
  }

  Future<void> _onDeleteAsset(
    DeleteAssetEvent event,
    Emitter<PortfolioState> emit,
  ) async {
    if (state is! PortfolioLoaded) return;
    try {
      await repository.deleteAsset(event.portfolioId, event.assetId);
    } catch (e) {
      emit(PortfolioError('Failed to delete asset: $e'));
      return;
    }
    add(LoadPortfolioEvent(portfolioId: event.portfolioId));
  }
}
