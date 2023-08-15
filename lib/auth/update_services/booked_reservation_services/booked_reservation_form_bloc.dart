import 'package:check_in_domain/check_in_domain.dart';
import 'package:check_in_domain/domain/auth/reservation_manager/post.dart';
import 'package:check_in_domain/domain/auth/reservation_manager/reservation_post/audio_post.dart';
import 'package:check_in_domain/domain/auth/reservation_manager/reservation_post/image_post.dart';
import 'package:check_in_domain/domain/auth/reservation_manager/reservation_post/text_post.dart';
import 'package:check_in_domain/domain/auth/reservation_manager/reservation_post/video_post.dart';
import 'package:check_in_facade/check_in_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'booked_reservation_form_state.dart';
part 'booked_reservation_form_event.dart';

part 'booked_reservation_form_bloc.freezed.dart';

@injectable
class BookedReservationFormBloc extends Bloc<BookedReservationFormEvent, BookedReservationFormState> {

  final RUpdaterFacade _resFacade;

  BookedReservationFormBloc(this._resFacade) : super(BookedReservationFormState.initial());

  @override
  Stream<BookedReservationFormState> mapEventToState(
      BookedReservationFormEvent event) async* {

    yield* event.map(
        initializedPostForm: (e) async* {
          yield e.initialPost.fold(
                  () => state,
                  (post) => state.copyWith(
                      reservationPost: post,
            ),
          );
        },

        textPostChanged: (e) async* {
          yield state.copyWith(
            reservationPost: state.reservationPost.copyWith(
              textPost: e.textPost
            )
          );
        },

        audioPostChanged: (e) async* {
          yield state.copyWith(
              reservationPost: state.reservationPost.copyWith(
                  audioPost: e.audioPost
            )
          );
        },

        imagesChanged: (e) async* {
          yield state.copyWith(
              reservationPost: state.reservationPost.copyWith(
                  imagePost: e.videoPosts
            )
          );
        },

        videosChanged: (e) async* {
          yield state.copyWith(
              reservationPost: state.reservationPost.copyWith(
                  videoPost: e.videos
            )
          );
        },

        didFinishLikePost: (e) async* {
          Either<ReservationFormFailure, Unit> failureOrSuccess;

          yield state.copyWith(
            authFailureOrSuccess: none()
          );

          failureOrSuccess = await _resFacade.likeReservationPost(reservationPost: e.selectedPost);

          yield state.copyWith(
            authFailureOrSuccess: optionOf(failureOrSuccess)
          );
        },

        didFinishBookmarkPost: (e) async* {

        },

        didFinishFlaggingPost: (e) async* {

        },

        didFinishSubmittingReply: (e) async* {

          Either<ReservationFormFailure, Unit> failureOrSuccess;

          final textIsValid = state.reservationPost.textPost != null;
          if (textIsValid) {
            yield state.copyWith(
                reservationPost: state.reservationPost.copyWith(
                    id: UniqueId().getOrCrash(),
                    repliedPost: e.replyingPost
                ),
                isSubmitting: true,
                authFailureOrSuccess: none()
            );

            failureOrSuccess = state.isSubmitting ? await _resFacade.createReservationPost(reservationPost: state.reservationPost) : left(const ReservationFormFailure.reservationServerError());

            yield state.copyWith(
                authFailureOrSuccess: optionOf(failureOrSuccess)
            );
          }

          yield state.copyWith(
              isSubmitting: false
          );

        },

        didFinishSubmittingPost: (e) async* {

          Either<ReservationFormFailure, Unit> failureOrSuccess;

          final textIsValid = state.reservationPost.textPost != null;

          if (textIsValid) {
            yield state.copyWith(
              reservationPost: state.reservationPost.copyWith(
                id: UniqueId().getOrCrash()
              ),
              isSubmitting: true,
              authFailureOrSuccess: none()
            );

            failureOrSuccess = state.isSubmitting ? await _resFacade.createReservationPost(reservationPost: state.reservationPost) : left(const ReservationFormFailure.reservationServerError());

            yield state.copyWith(
              authFailureOrSuccess: optionOf(failureOrSuccess)
            );
          }

          yield state.copyWith(
              isSubmitting: false
          );
        },

        didFinishCreateNewInviteLink: (e) async* {

          Either<ReservationFormFailure, Uri> authFailureOrSuccessInviteLink;

          yield state.copyWith(
            isCreatingLink: true,
            authFailureOrSuccessInviteLink: none()
          );

          authFailureOrSuccessInviteLink = state.isCreatingLink ? await _resFacade.createShareLink(reservationItem: e.reservation) : left(const ReservationFormFailure.reservationServerError());

          yield state.copyWith(
            isCreatingLink: false,
           authFailureOrSuccessInviteLink: optionOf(authFailureOrSuccessInviteLink)
          );

        },


        didLeaveBookedReservation: (e) async* {

          // Either<ReservationFormFailure, Unit> authFailureOrSuccess;
          //
          // yield state.copyWith(
          //     isSubmitting: true,
          //     authFailureOrSuccess: none()
          // );
          //
          // authFailureOrSuccess = state.isSubmitting ? await _resFacade.updateReservationAffiliatesList(reservationId: e.reservation.reservationId.getOrCrash(), updatedAffiliatesList: e.affiliates) : left(const ReservationFormFailure.reservationServerError());
          //
          // yield state.copyWith(
          //     isSubmitting: false,
          //     authFailureOrSuccess: optionOf(authFailureOrSuccess)
          // );

        },

        didRemoveAffiliate: (e) async* {
          // Either<ReservationFormFailure, Unit> authFailureOrSuccess;
          //
          // yield state.copyWith(
          //     isSubmitting: true,
          //     authFailureOrSuccess: none()
          // );
          //
          // authFailureOrSuccess = state.isSubmitting ? await _resFacade.updateReservationAffiliatesList(reservationId: e.reservation.reservationId.getOrCrash(), updatedAffiliatesList: e.affiliates) : left(const ReservationFormFailure.reservationServerError());
          //
          // yield state.copyWith(
          //     isSubmitting: false,
          //     authFailureOrSuccess: optionOf(authFailureOrSuccess)
          // );

        },

        didJoinBookedReservation: (e) async* {
          // Either<ReservationFormFailure, Unit> authFailureOrSuccess;
          //
          // yield state.copyWith(
          //   isSubmitting: true,
          //   authFailureOrSuccess: none()
          // );
          //
          // authFailureOrSuccess = state.isSubmitting ? await _resFacade.updateReservationAffiliatesList(reservationId: e.reservation.reservationId.getOrCrash(), updatedAffiliatesList: e.affiliates) : left(const ReservationFormFailure.reservationServerError());
          //
          // yield state.copyWith(
          //   isSubmitting: false,
          //   authFailureOrSuccess: optionOf(authFailureOrSuccess)
          // );
        },

        didRequestRefundCancellation: (e) async* {

        },

        didRequestReservationChange: (e) async* {

        },

    );
  }
}
