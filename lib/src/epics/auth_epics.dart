import 'package:andrei_hodis/src/actions/auth/index.dart';
import 'package:andrei_hodis/src/actions/index.dart';
import 'package:andrei_hodis/src/data/auth_api.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, LoginWithGoogle$>(_loginWithGoogle),
      TypedEpic<AppState, SignUp$>(_signUp),
      TypedEpic<AppState, Logout$>(_logout),
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
      TypedEpic<AppState, ResetPassword$>(_resetPassword),
    ]);
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action) //
            .asyncMap((Login$ action) => _authApi.login(email: action.email, password: action.password))
            .map((AppUser user) => Login.successful(user))
            .onErrorReturnWith((dynamic error) => Login.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _loginWithGoogle(Stream<LoginWithGoogle$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LoginWithGoogle$ action) => Stream<LoginWithGoogle$>.value(action)
            .asyncMap((LoginWithGoogle$ action) => _authApi.loginWithGoogle())
            .map((AppUser user) => LoginWithGoogle.successful(user))
            .onErrorReturnWith((dynamic error) => LoginWithGoogle.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _signUp(Stream<SignUp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUp$ action) => Stream<SignUp$>.value(action) //
            .asyncMap((SignUp$ action) => _authApi.signUp(
                  email: action.email,
                  password: action.password,
                  displayName: action.displayName,
                  phoneNumber: action.phoneNumber,
                ))
            .map((AppUser user) => SignUp.successful(user))
            .onErrorReturnWith((dynamic error) => SignUp.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _logout(Stream<Logout$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Logout$ action) => Stream<Logout$>.value(action)
            .asyncMap((Logout$ action) => _authApi.logout())
            .map((_) => const Logout.successful())
            .onErrorReturnWith((dynamic error) => Logout.error(error)));
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp$ action) => Stream<InitializeApp$>.value(action)
            .asyncMap((InitializeApp$ action) => _authApi.initializeApp())
            .map((AppUser user) => InitializeApp.successful(user))
            .onErrorReturnWith((dynamic error) => InitializeApp.error(error)));
  }

  Stream<AppAction> _resetPassword(Stream<ResetPassword$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ResetPassword$ action) => Stream<ResetPassword$>.value(action)
            .asyncMap((ResetPassword$ action) => _authApi.resetPassword(email: action.email))
            .map((_) => const ResetPassword.successful())
            .onErrorReturnWith((dynamic error) => ResetPassword.error(error)));
  }
}
