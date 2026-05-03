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
}
