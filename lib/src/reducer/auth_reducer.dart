import 'package:andrei_hodis/src/actions/auth/index.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, LoginWithGoogleSuccessful>(_loginWithGoogleSuccessful),
  TypedReducer<AuthState, SignUpSuccessful>(_signUpSuccessful),
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _loginWithGoogleSuccessful(AuthState state, LoginWithGoogleSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _signUpSuccessful(AuthState state, SignUpSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}
