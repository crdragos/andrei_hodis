import 'package:andrei_hodis/src/actions/auth/index.dart';
import 'package:andrei_hodis/src/data/auth_api.dart';
import 'package:andrei_hodis/src/epics/app_epics.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:andrei_hodis/src/reducer/reducer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final GoogleSignIn google = GoogleSignIn();

  final AuthApi authApi = AuthApi(auth: auth, firestore: firestore, google: google);

  final AppEpics epics = AppEpics(authApi: authApi);
  final AppState initialState = AppState.initialState();

  return Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  )..dispatch(const InitializeApp());
}
