part of check_in_application;

@freezed
class NotificationWatcherEvent with _$NotificationWatcherEvent {

  const factory NotificationWatcherEvent.watchAllAccountNotificationAmountByType(List<AccountNotificationType> type, UniqueId? reservationId) = _WatchAllAccountNotificationAmountByType;
  const factory NotificationWatcherEvent.allAccountNotificationAmountReceived(Either<NotificationValueFailure, List<AccountNotificationItem>> failedItems) = _AllAccountNotificationAmountReceived;

}