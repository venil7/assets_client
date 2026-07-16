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

class CreatePortfolioEvent extends HomeEvent {
  final String name;
  final String description;
  const CreatePortfolioEvent({required this.name, required this.description});
  @override
  List<Object?> get props => [name, description];
}

class UpdatePortfolioEvent extends HomeEvent {
  final int id;
  final String name;
  final String description;
  const UpdatePortfolioEvent({
    required this.id,
    required this.name,
    required this.description,
  });
  @override
  List<Object?> get props => [id, name, description];
}

class DeletePortfolioEvent extends HomeEvent {
  final int id;
  const DeletePortfolioEvent(this.id);
  @override
  List<Object?> get props => [id];
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
  String? _currentRange;

  HomeBloc({required this.repository}) : super(HomeInitial()) {
    on<LoadHomeEvent>(_onLoadHome);
    on<ChangeRangeEvent>(_onChangeRange);
    on<CreatePortfolioEvent>(_onCreatePortfolio);
    on<UpdatePortfolioEvent>(_onUpdatePortfolio);
    on<DeletePortfolioEvent>(_onDeletePortfolio);
  }

  Future<void> _onLoadHome(LoadHomeEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final summary = await repository.getSummary(range: event.range);
      final portfolios = await repository.getPortfolios(range: event.range);
      _currentRange = summary.meta.range;
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

  Future<void> _onCreatePortfolio(
    CreatePortfolioEvent event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! HomeLoaded) return;
    try {
      await repository.createPortfolio(event.name, event.description);
    } catch (e) {
      emit(HomeError('Failed to create portfolio: $e'));
      return;
    }
    add(LoadHomeEvent(range: _currentRange));
  }

  Future<void> _onUpdatePortfolio(
    UpdatePortfolioEvent event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! HomeLoaded) return;
    try {
      await repository.updatePortfolio(event.id, event.name, event.description);
    } catch (e) {
      emit(HomeError('Failed to update portfolio: $e'));
      return;
    }
    add(LoadHomeEvent(range: _currentRange));
  }

  Future<void> _onDeletePortfolio(
    DeletePortfolioEvent event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! HomeLoaded) return;
    try {
      await repository.deletePortfolio(event.id);
    } catch (e) {
      emit(HomeError('Failed to delete portfolio: $e'));
      return;
    }
    add(LoadHomeEvent(range: _currentRange));
  }
}
