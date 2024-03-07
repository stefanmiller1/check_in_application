part of "booked_reservation_form_bloc.dart";

@freezed
class BookedReservationFormEvent with _$BookedReservationFormEvent {

  const factory BookedReservationFormEvent.initializedPostForm(Option<Post> initialPost) = _InitializedPostForm;

  const factory BookedReservationFormEvent.postIsSaving(bool save) = _PostIsSaving;
  const factory BookedReservationFormEvent.textPostChanged(TextPost textPost) = _TextPostChanged;
  const factory BookedReservationFormEvent.audioPostChanged(AudioPost audioPost) = _AudioPostChanged;
  const factory BookedReservationFormEvent.imagesChanged(List<ImagePost> videoPosts) = _ImagesChanged;
  const factory BookedReservationFormEvent.videosChanged(List<VideoPost> videos) = _VideosChanged;

  const factory BookedReservationFormEvent.didFinishLikePost(Post selectedPost) = _DidFinishLikePost;
  const factory BookedReservationFormEvent.didFinishBookmarkPost(Post selectedPost) = _DidFinishBookmarkPost;
  const factory BookedReservationFormEvent.didFinishFlaggingPost(Post selectedPost) = _DidFinishFlaggingPost;

  const factory BookedReservationFormEvent.didLeaveBookedReservation(ReservationItem reservation, List<ContactDetails> affiliates) = _DidLeaveBookedReservation;
  const factory BookedReservationFormEvent.didJoinBookedReservation(ReservationItem reservation, List<ContactDetails> affiliates) = _DidJoinBookedReservation;
  const factory BookedReservationFormEvent.didRemoveAffiliate(ReservationItem reservation, List<ContactDetails> affiliates) = _DidRemoveAffiliate;
  const factory BookedReservationFormEvent.didRequestRefundCancellation() = _DidRequestRefundCancellation;
  const factory BookedReservationFormEvent.didRequestReservationChange() = _DidRequestReservationChange;

  const factory BookedReservationFormEvent.didFinishSubmittingReply(Post replyingPost, List<AttendeeItem> attendees) = _DidFinishSubmittingReply;
  const factory BookedReservationFormEvent.didFinishSubmittingPost(List<AttendeeItem> attendees) = _DidFinishSubmittingPost;
  const factory BookedReservationFormEvent.didFinishCreateNewInviteLink(ReservationItem reservation) = _DidFinishCreateNewInviteLink;


}