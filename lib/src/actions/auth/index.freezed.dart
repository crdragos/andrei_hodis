// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

// ignore: unused_element
  Login$ call({@required String email, @required String password, @required void Function(AppAction) response}) {
    return Login$(
      email: email,
      password: password,
      response: response,
    );
  }

// ignore: unused_element
  LoginSuccessful successful(AppUser user) {
    return LoginSuccessful(
      user,
    );
  }

// ignore: unused_element
  LoginError error(Object error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) = _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) = _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) response});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res> implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then) : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object response = freezed,
  }) {
    return _then(Login$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      response: response == freezed ? _value.response : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Login$ implements Login$ {
  const _$Login$({@required this.email, @required this.password, @required this.response})
      : assert(email != null),
        assert(password != null),
        assert(response != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) || const DeepCollectionEquality().equals(other.password, password)) &&
            (identical(other.response, response) || const DeepCollectionEquality().equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(response);

  @override
  $Login$CopyWith<Login$> get copyWith => _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  const factory Login$(
      {@required String email, @required String password, @required void Function(AppAction) response}) = _$Login$;

  String get email;
  String get password;
  void Function(AppAction) get response;
  $Login$CopyWith<Login$> get copyWith;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res> implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(AppUser user) = _$LoginSuccessful;

  AppUser get user;
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(LoginError value, $Res Function(LoginError) then) = _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res> implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LoginError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LoginErrorCopyWith<LoginError> get copyWith => _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(Object error) = _$LoginError;

  Object get error;
  $LoginErrorCopyWith<LoginError> get copyWith;
}

/// @nodoc
class _$SignUpTearOff {
  const _$SignUpTearOff();

// ignore: unused_element
  SignUp$ call(
      {@required String email,
      @required String password,
      @required String displayName,
      @required String phoneNumber,
      @required void Function(AppAction) response}) {
    return SignUp$(
      email: email,
      password: password,
      displayName: displayName,
      phoneNumber: phoneNumber,
      response: response,
    );
  }

// ignore: unused_element
  SignUpSuccessful successful(AppUser user) {
    return SignUpSuccessful(
      user,
    );
  }

// ignore: unused_element
  SignUpError error(Object error) {
    return SignUpError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUp = _$SignUpTearOff();

/// @nodoc
mixin _$SignUp {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, String displayName, String phoneNumber, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, String displayName, String phoneNumber, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) = _$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._value, this._then);

  final SignUp _value;
  // ignore: unused_field
  final $Res Function(SignUp) _then;
}

/// @nodoc
abstract class $SignUp$CopyWith<$Res> {
  factory $SignUp$CopyWith(SignUp$ value, $Res Function(SignUp$) then) = _$SignUp$CopyWithImpl<$Res>;
  $Res call({String email, String password, String displayName, String phoneNumber, void Function(AppAction) response});
}

/// @nodoc
class _$SignUp$CopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res> implements $SignUp$CopyWith<$Res> {
  _$SignUp$CopyWithImpl(SignUp$ _value, $Res Function(SignUp$) _then) : super(_value, (v) => _then(v as SignUp$));

  @override
  SignUp$ get _value => super._value as SignUp$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object displayName = freezed,
    Object phoneNumber = freezed,
    Object response = freezed,
  }) {
    return _then(SignUp$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      displayName: displayName == freezed ? _value.displayName : displayName as String,
      phoneNumber: phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      response: response == freezed ? _value.response : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$SignUp$ implements SignUp$ {
  const _$SignUp$(
      {@required this.email,
      @required this.password,
      @required this.displayName,
      @required this.phoneNumber,
      @required this.response})
      : assert(email != null),
        assert(password != null),
        assert(displayName != null),
        assert(phoneNumber != null),
        assert(response != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final String displayName;
  @override
  final String phoneNumber;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'SignUp(email: $email, password: $password, displayName: $displayName, phoneNumber: $phoneNumber, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUp$ &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) || const DeepCollectionEquality().equals(other.password, password)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality().equals(other.displayName, displayName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.response, response) || const DeepCollectionEquality().equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(response);

  @override
  $SignUp$CopyWith<SignUp$> get copyWith => _$SignUp$CopyWithImpl<SignUp$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, String displayName, String phoneNumber, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email, password, displayName, phoneNumber, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, String displayName, String phoneNumber, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email, password, displayName, phoneNumber, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignUp$ implements SignUp {
  const factory SignUp$(
      {@required String email,
      @required String password,
      @required String displayName,
      @required String phoneNumber,
      @required void Function(AppAction) response}) = _$SignUp$;

  String get email;
  String get password;
  String get displayName;
  String get phoneNumber;
  void Function(AppAction) get response;
  $SignUp$CopyWith<SignUp$> get copyWith;
}

/// @nodoc
abstract class $SignUpSuccessfulCopyWith<$Res> {
  factory $SignUpSuccessfulCopyWith(SignUpSuccessful value, $Res Function(SignUpSuccessful) then) =
      _$SignUpSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$SignUpSuccessfulCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpSuccessfulCopyWith<$Res> {
  _$SignUpSuccessfulCopyWithImpl(SignUpSuccessful _value, $Res Function(SignUpSuccessful) _then)
      : super(_value, (v) => _then(v as SignUpSuccessful));

  @override
  SignUpSuccessful get _value => super._value as SignUpSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignUpSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$SignUpSuccessful implements SignUpSuccessful {
  const _$SignUpSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignUp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpSuccessful &&
            (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith =>
      _$SignUpSuccessfulCopyWithImpl<SignUpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, String displayName, String phoneNumber, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, String displayName, String phoneNumber, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessful implements SignUp {
  const factory SignUpSuccessful(AppUser user) = _$SignUpSuccessful;

  AppUser get user;
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith;
}

/// @nodoc
abstract class $SignUpErrorCopyWith<$Res> {
  factory $SignUpErrorCopyWith(SignUpError value, $Res Function(SignUpError) then) = _$SignUpErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res> implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignUpError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignUpError implements SignUpError {
  const _$SignUpError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignUp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith => _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, String displayName, String phoneNumber, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, String displayName, String phoneNumber, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUp, ErrorAction {
  const factory SignUpError(Object error) = _$SignUpError;

  Object get error;
  $SignUpErrorCopyWith<SignUpError> get copyWith;
}

/// @nodoc
class _$LogoutTearOff {
  const _$LogoutTearOff();

// ignore: unused_element
  Logout$ call() {
    return const Logout$();
  }

// ignore: unused_element
  LogoutSuccessful successful() {
    return const LogoutSuccessful();
  }

// ignore: unused_element
  LogoutError error(Object error) {
    return LogoutError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Logout = _$LogoutTearOff();

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) = _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  final Logout _value;
  // ignore: unused_field
  final $Res Function(Logout) _then;
}

/// @nodoc
abstract class $Logout$CopyWith<$Res> {
  factory $Logout$CopyWith(Logout$ value, $Res Function(Logout$) then) = _$Logout$CopyWithImpl<$Res>;
}

/// @nodoc
class _$Logout$CopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res> implements $Logout$CopyWith<$Res> {
  _$Logout$CopyWithImpl(Logout$ _value, $Res Function(Logout$) _then) : super(_value, (v) => _then(v as Logout$));

  @override
  Logout$ get _value => super._value as Logout$;
}

/// @nodoc
class _$Logout$ implements Logout$ {
  const _$Logout$();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logout$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Logout$ implements Logout {
  const factory Logout$() = _$Logout$;
}

/// @nodoc
abstract class $LogoutSuccessfulCopyWith<$Res> {
  factory $LogoutSuccessfulCopyWith(LogoutSuccessful value, $Res Function(LogoutSuccessful) then) =
      _$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutSuccessfulCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutSuccessfulCopyWith<$Res> {
  _$LogoutSuccessfulCopyWithImpl(LogoutSuccessful _value, $Res Function(LogoutSuccessful) _then)
      : super(_value, (v) => _then(v as LogoutSuccessful));

  @override
  LogoutSuccessful get _value => super._value as LogoutSuccessful;
}

/// @nodoc
class _$LogoutSuccessful implements LogoutSuccessful {
  const _$LogoutSuccessful();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessful;
}

/// @nodoc
abstract class $LogoutErrorCopyWith<$Res> {
  factory $LogoutErrorCopyWith(LogoutError value, $Res Function(LogoutError) then) = _$LogoutErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LogoutErrorCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res> implements $LogoutErrorCopyWith<$Res> {
  _$LogoutErrorCopyWithImpl(LogoutError _value, $Res Function(LogoutError) _then)
      : super(_value, (v) => _then(v as LogoutError));

  @override
  LogoutError get _value => super._value as LogoutError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LogoutError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LogoutError implements LogoutError {
  const _$LogoutError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Logout.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogoutError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LogoutErrorCopyWith<LogoutError> get copyWith => _$LogoutErrorCopyWithImpl<LogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout, ErrorAction {
  const factory LogoutError(Object error) = _$LogoutError;

  Object get error;
  $LogoutErrorCopyWith<LogoutError> get copyWith;
}

/// @nodoc
class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

// ignore: unused_element
  InitializeApp$ call() {
    return const InitializeApp$();
  }

// ignore: unused_element
  InitializeAppSuccessful successful(AppUser user) {
    return InitializeAppSuccessful(
      user,
    );
  }

// ignore: unused_element
  InitializeAppError error(Object error) {
    return InitializeAppError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeApp = _$InitializeAppTearOff();

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res> implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;
}

/// @nodoc
abstract class $InitializeApp$CopyWith<$Res> {
  factory $InitializeApp$CopyWith(InitializeApp$ value, $Res Function(InitializeApp$) then) =
      _$InitializeApp$CopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeApp$CopyWithImpl<$Res> extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeApp$CopyWith<$Res> {
  _$InitializeApp$CopyWithImpl(InitializeApp$ _value, $Res Function(InitializeApp$) _then)
      : super(_value, (v) => _then(v as InitializeApp$));

  @override
  InitializeApp$ get _value => super._value as InitializeApp$;
}

/// @nodoc
class _$InitializeApp$ implements InitializeApp$ {
  const _$InitializeApp$();

  @override
  String toString() {
    return 'InitializeApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeApp$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeApp$ implements InitializeApp {
  const factory InitializeApp$() = _$InitializeApp$;
}

/// @nodoc
abstract class $InitializeAppSuccessfulCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value, $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$InitializeAppSuccessfulCopyWithImpl<$Res> extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value, $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(AppUser user) = _$InitializeAppSuccessful;

  AppUser get user;
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith;
}

/// @nodoc
abstract class $InitializeAppErrorCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$InitializeAppErrorCopyWithImpl<$Res> extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(InitializeAppError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp, ErrorAction {
  const factory InitializeAppError(Object error) = _$InitializeAppError;

  Object get error;
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith;
}

/// @nodoc
class _$ResetPasswordTearOff {
  const _$ResetPasswordTearOff();

// ignore: unused_element
  ResetPassword$ call({@required String email}) {
    return ResetPassword$(
      email: email,
    );
  }

// ignore: unused_element
  ResetPasswordSuccessful successful() {
    return const ResetPasswordSuccessful();
  }

// ignore: unused_element
  ResetPasswordError error(Object error) {
    return ResetPasswordError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResetPassword = _$ResetPasswordTearOff();

/// @nodoc
mixin _$ResetPassword {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res> implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(this._value, this._then);

  final ResetPassword _value;
  // ignore: unused_field
  final $Res Function(ResetPassword) _then;
}

/// @nodoc
abstract class $ResetPassword$CopyWith<$Res> {
  factory $ResetPassword$CopyWith(ResetPassword$ value, $Res Function(ResetPassword$) then) =
      _$ResetPassword$CopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ResetPassword$CopyWithImpl<$Res> extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPassword$CopyWith<$Res> {
  _$ResetPassword$CopyWithImpl(ResetPassword$ _value, $Res Function(ResetPassword$) _then)
      : super(_value, (v) => _then(v as ResetPassword$));

  @override
  ResetPassword$ get _value => super._value as ResetPassword$;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ResetPassword$(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ResetPassword$ implements ResetPassword$ {
  const _$ResetPassword$({@required this.email}) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPassword$ &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $ResetPassword$CopyWith<ResetPassword$> get copyWith =>
      _$ResetPassword$CopyWithImpl<ResetPassword$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ResetPassword$ implements ResetPassword {
  const factory ResetPassword$({@required String email}) = _$ResetPassword$;

  String get email;
  $ResetPassword$CopyWith<ResetPassword$> get copyWith;
}

/// @nodoc
abstract class $ResetPasswordSuccessfulCopyWith<$Res> {
  factory $ResetPasswordSuccessfulCopyWith(ResetPasswordSuccessful value, $Res Function(ResetPasswordSuccessful) then) =
      _$ResetPasswordSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordSuccessfulCopyWithImpl<$Res> extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordSuccessfulCopyWith<$Res> {
  _$ResetPasswordSuccessfulCopyWithImpl(ResetPasswordSuccessful _value, $Res Function(ResetPasswordSuccessful) _then)
      : super(_value, (v) => _then(v as ResetPasswordSuccessful));

  @override
  ResetPasswordSuccessful get _value => super._value as ResetPasswordSuccessful;
}

/// @nodoc
class _$ResetPasswordSuccessful implements ResetPasswordSuccessful {
  const _$ResetPasswordSuccessful();

  @override
  String toString() {
    return 'ResetPassword.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetPasswordSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccessful implements ResetPassword {
  const factory ResetPasswordSuccessful() = _$ResetPasswordSuccessful;
}

/// @nodoc
abstract class $ResetPasswordErrorCopyWith<$Res> {
  factory $ResetPasswordErrorCopyWith(ResetPasswordError value, $Res Function(ResetPasswordError) then) =
      _$ResetPasswordErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ResetPasswordErrorCopyWithImpl<$Res> extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordErrorCopyWith<$Res> {
  _$ResetPasswordErrorCopyWithImpl(ResetPasswordError _value, $Res Function(ResetPasswordError) _then)
      : super(_value, (v) => _then(v as ResetPasswordError));

  @override
  ResetPasswordError get _value => super._value as ResetPasswordError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ResetPasswordError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ResetPasswordError implements ResetPasswordError {
  const _$ResetPasswordError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ResetPassword.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPasswordError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith =>
      _$ResetPasswordErrorCopyWithImpl<ResetPasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordError implements ResetPassword, ErrorAction {
  const factory ResetPasswordError(Object error) = _$ResetPasswordError;

  Object get error;
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith;
}

/// @nodoc
class _$LoginWithGoogleTearOff {
  const _$LoginWithGoogleTearOff();

// ignore: unused_element
  LoginWithGoogle$ call(void Function(AppAction) response) {
    return LoginWithGoogle$(
      response,
    );
  }

// ignore: unused_element
  LoginWithGoogleSuccessful successful(AppUser user) {
    return LoginWithGoogleSuccessful(
      user,
    );
  }

// ignore: unused_element
  LoginWithGoogleError error(Object error) {
    return LoginWithGoogleError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginWithGoogle = _$LoginWithGoogleTearOff();

/// @nodoc
mixin _$LoginWithGoogle {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(LoginWithGoogle$ value), {
    @required Result successful(LoginWithGoogleSuccessful value),
    @required Result error(LoginWithGoogleError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(LoginWithGoogle$ value), {
    Result successful(LoginWithGoogleSuccessful value),
    Result error(LoginWithGoogleError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginWithGoogleCopyWith<$Res> {
  factory $LoginWithGoogleCopyWith(LoginWithGoogle value, $Res Function(LoginWithGoogle) then) =
      _$LoginWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginWithGoogleCopyWithImpl<$Res> implements $LoginWithGoogleCopyWith<$Res> {
  _$LoginWithGoogleCopyWithImpl(this._value, this._then);

  final LoginWithGoogle _value;
  // ignore: unused_field
  final $Res Function(LoginWithGoogle) _then;
}

/// @nodoc
abstract class $LoginWithGoogle$CopyWith<$Res> {
  factory $LoginWithGoogle$CopyWith(LoginWithGoogle$ value, $Res Function(LoginWithGoogle$) then) =
      _$LoginWithGoogle$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$LoginWithGoogle$CopyWithImpl<$Res> extends _$LoginWithGoogleCopyWithImpl<$Res>
    implements $LoginWithGoogle$CopyWith<$Res> {
  _$LoginWithGoogle$CopyWithImpl(LoginWithGoogle$ _value, $Res Function(LoginWithGoogle$) _then)
      : super(_value, (v) => _then(v as LoginWithGoogle$));

  @override
  LoginWithGoogle$ get _value => super._value as LoginWithGoogle$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(LoginWithGoogle$(
      response == freezed ? _value.response : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$LoginWithGoogle$ implements LoginWithGoogle$ {
  const _$LoginWithGoogle$(this.response) : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'LoginWithGoogle(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithGoogle$ &&
            (identical(other.response, response) || const DeepCollectionEquality().equals(other.response, response)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $LoginWithGoogle$CopyWith<LoginWithGoogle$> get copyWith =>
      _$LoginWithGoogle$CopyWithImpl<LoginWithGoogle$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(LoginWithGoogle$ value), {
    @required Result successful(LoginWithGoogleSuccessful value),
    @required Result error(LoginWithGoogleError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(LoginWithGoogle$ value), {
    Result successful(LoginWithGoogleSuccessful value),
    Result error(LoginWithGoogleError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoginWithGoogle$ implements LoginWithGoogle {
  const factory LoginWithGoogle$(void Function(AppAction) response) = _$LoginWithGoogle$;

  void Function(AppAction) get response;
  $LoginWithGoogle$CopyWith<LoginWithGoogle$> get copyWith;
}

/// @nodoc
abstract class $LoginWithGoogleSuccessfulCopyWith<$Res> {
  factory $LoginWithGoogleSuccessfulCopyWith(
          LoginWithGoogleSuccessful value, $Res Function(LoginWithGoogleSuccessful) then) =
      _$LoginWithGoogleSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$LoginWithGoogleSuccessfulCopyWithImpl<$Res> extends _$LoginWithGoogleCopyWithImpl<$Res>
    implements $LoginWithGoogleSuccessfulCopyWith<$Res> {
  _$LoginWithGoogleSuccessfulCopyWithImpl(
      LoginWithGoogleSuccessful _value, $Res Function(LoginWithGoogleSuccessful) _then)
      : super(_value, (v) => _then(v as LoginWithGoogleSuccessful));

  @override
  LoginWithGoogleSuccessful get _value => super._value as LoginWithGoogleSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginWithGoogleSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$LoginWithGoogleSuccessful implements LoginWithGoogleSuccessful {
  const _$LoginWithGoogleSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'LoginWithGoogle.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithGoogleSuccessful &&
            (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginWithGoogleSuccessfulCopyWith<LoginWithGoogleSuccessful> get copyWith =>
      _$LoginWithGoogleSuccessfulCopyWithImpl<LoginWithGoogleSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(LoginWithGoogle$ value), {
    @required Result successful(LoginWithGoogleSuccessful value),
    @required Result error(LoginWithGoogleError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(LoginWithGoogle$ value), {
    Result successful(LoginWithGoogleSuccessful value),
    Result error(LoginWithGoogleError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginWithGoogleSuccessful implements LoginWithGoogle {
  const factory LoginWithGoogleSuccessful(AppUser user) = _$LoginWithGoogleSuccessful;

  AppUser get user;
  $LoginWithGoogleSuccessfulCopyWith<LoginWithGoogleSuccessful> get copyWith;
}

/// @nodoc
abstract class $LoginWithGoogleErrorCopyWith<$Res> {
  factory $LoginWithGoogleErrorCopyWith(LoginWithGoogleError value, $Res Function(LoginWithGoogleError) then) =
      _$LoginWithGoogleErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginWithGoogleErrorCopyWithImpl<$Res> extends _$LoginWithGoogleCopyWithImpl<$Res>
    implements $LoginWithGoogleErrorCopyWith<$Res> {
  _$LoginWithGoogleErrorCopyWithImpl(LoginWithGoogleError _value, $Res Function(LoginWithGoogleError) _then)
      : super(_value, (v) => _then(v as LoginWithGoogleError));

  @override
  LoginWithGoogleError get _value => super._value as LoginWithGoogleError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LoginWithGoogleError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginWithGoogleError implements LoginWithGoogleError {
  const _$LoginWithGoogleError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'LoginWithGoogle.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithGoogleError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LoginWithGoogleErrorCopyWith<LoginWithGoogleError> get copyWith =>
      _$LoginWithGoogleErrorCopyWithImpl<LoginWithGoogleError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(LoginWithGoogle$ value), {
    @required Result successful(LoginWithGoogleSuccessful value),
    @required Result error(LoginWithGoogleError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(LoginWithGoogle$ value), {
    Result successful(LoginWithGoogleSuccessful value),
    Result error(LoginWithGoogleError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginWithGoogleError implements LoginWithGoogle, ErrorAction {
  const factory LoginWithGoogleError(Object error) = _$LoginWithGoogleError;

  Object get error;
  $LoginWithGoogleErrorCopyWith<LoginWithGoogleError> get copyWith;
}
