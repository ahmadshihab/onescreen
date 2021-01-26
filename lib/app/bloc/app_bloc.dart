import 'package:bloc/bloc.dart';
import 'package:rjs/data/repository/irepository.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {

  IRepository _repository;

  AppBloc(this._repository);

  AppState get initialState => AppState.init();

  @override
  Stream<AppState> mapEventToState(
      AppEvent event,
      ) async* {
    if (event is ClearError) {

    } 
  }
}