part of check_in_application;

@freezed
class NotificationWatcherState with _$NotificationWatcherState {

  const factory NotificationWatcherState.notificationInitial() = _NotificationInitial;

  const factory NotificationWatcherState.loadAllAccountNotificationByTypeSuccess(List<AccountNotificationItem> notifications) = _LoadAllAccountNotificationByTypeSuccess;
  const factory NotificationWatcherState.loadAllAccountNotificationByTypeFailure(NotificationValueFailure failure) = _LoadAllAccountNotificationByTypeFailure;

}