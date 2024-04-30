part of check_in_application;

@freezed
class CommunityManagerWatcherEvent with _$CommunityManagerWatcherEvent {

  const factory CommunityManagerWatcherEvent.watchReservationLinkedCommunity(UniqueId reservationId) = _WatchReservationLinkedCommunity;
  const factory CommunityManagerWatcherEvent.reservationLinkedCommunitiesReceived(Either<ProfileValueFailure, List<UniqueId>> failedItems) = _ReservationLinkedCommunitiesReceived;

}