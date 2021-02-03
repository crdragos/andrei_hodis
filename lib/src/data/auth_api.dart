import 'package:andrei_hodis/src/models/auth/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class AuthApi {
  const AuthApi({@required FirebaseAuth auth, @required FirebaseFirestore firestore})
      : assert(auth != null),
        assert(firestore != null),
        _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> initializeApp() async {
    final User user = _auth.currentUser;
    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final DocumentSnapshot snapshot = await _firestore.doc('users/${result.user.uid}').get();

    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> signUp({
    @required String email,
    @required String password,
    @required String displayName,
    @required String phoneNumber,
  }) async {
    final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = result.user.uid
        ..email = result.user.email
        ..displayName = displayName
        ..phoneNumber = phoneNumber;
    });

    await _firestore.doc('users/${result.user.uid}').set(appUser.json);
    return appUser;
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> resetPassword({@required String email}) async {
    _auth.sendPasswordResetEmail(email: email);
  }
}
