import 'package:assets_client/features/home/domain/entities/summary_entity.dart';
import 'package:assets_client/features/home/domain/repositories/home_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// == Events ==
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class LoadHomeEvent extends HomeEvent {
  final String? range;
  const LoadHomeEvent({this.range});

  @override
  List<Object?> get props => [range];
}

class ChangeRangeEvent extends HomeEvent {
  final String range;
  const ChangeRangeEvent(this.range);
}

// == States ==
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final SummaryEntity summary;
  final List<PortfolioEntity> portfolios;
  final String currentRange;
  final List<String> validRanges;

  const HomeLoaded({
    required this.summary,
    required this.portfolios,
    required this.currentRange,
    required this.validRanges,
  });

  @override
  List<Object?> get props => [summary, portfolios, currentRange, validRanges];
}

class HomeError extends HomeState {
  final String message;
  const HomeError(this.message);

  @override
  List<Object?> get props => [message];
}

// == Bloc ==
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc({required this.repository}) : super(HomeInitial()) {
    on<LoadHomeEvent>(_onLoadHome);
    on<ChangeRangeEvent>(_onChangeRange);
  }

  Future<void> _onLoadHome(LoadHomeEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final summary = await repository.getSummary(range: event.range);
      final portfolios = await repository.getPortfolios(range: event.range);
      emit(
        HomeLoaded(
          summary: summary,
          portfolios: portfolios,
          currentRange: summary.meta.range,
          validRanges: summary.meta.validRanges,
        ),
      );
    } catch (e) {
      emit(HomeError('Failed to load data: $e'));
    }
  }

  Future<void> _onChangeRange(
    ChangeRangeEvent event,
    Emitter<HomeState> emit,
  ) async {
    add(LoadHomeEvent(range: event.range));
  }
}
