part of auth_actions;

@freezed
abstract class UpdateUserInfo with _$UpdateUserInfo implements AppAction {
  const factory UpdateUserInfo({@required AppUser user, String displayName, String phoneNumber}) = UpdateUserInfo$;

  const factory UpdateUserInfo.successful(AppUser user) = UpdateUserInfoSuccessful;

  @Implements(ErrorAction)
  const factory UpdateUserInfo.error(Object error) = UpdateUserInfoError;
}
