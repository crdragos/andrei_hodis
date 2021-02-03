import 'package:andrei_hodis/src/actions/auth/index.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:andrei_hodis/src/reducer/auth_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    b.auth = authReducer(state.auth, action).toBuilder();
  });
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return AppState.initialState();
}
