part of auth_actions;

@freezed
abstract class SignUp with _$SignUp implements AppAction {
  const factory SignUp({
    @required String email,
    @required String password,
    @required String displayName,
    @required String phoneNumber,
    @required ActionResponse response,
  }) = SignUp$;

  const factory SignUp.successful(AppUser user) = SignUpSuccessful;

  @Implements(ErrorAction)
  const factory SignUp.error(Object error) = SignUpError;
}
