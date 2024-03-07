part of check_in_application;

@freezed
class CommunityManagerWatcherState with _$CommunityManagerWatcherState {

  const factory CommunityManagerWatcherState.communityInitial() = _CommunityWInitial;
  const factory CommunityManagerWatcherState.communityLoadInProgress() = _CommunityWLoadInProgress;

  const factory CommunityManagerWatcherState.loadReservationLinkedCommunitiesSuccess(List<UniqueId> communityIds) = _LoadReservationLinkedCommunitiesSuccess;
  const factory CommunityManagerWatcherState.loadReservationLinkedCommunitiesFailure(CommunityProfileFailure failure) = _LoadReservationLinkedCommunitiesFailure;
}