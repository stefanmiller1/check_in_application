part of check_in_application;

@injectable
class NewsUpdatesWatcherBloc extends Bloc<NewsUpdatesWatcherEvent, NewsUpdatesWatcherState> {

  final facade.MMiscFacade _miscFacade;

  NewsUpdatesWatcherBloc(this._miscFacade) : super(const NewsUpdatesWatcherState.initial());

  StreamSubscription<Either<AuthFailure, NewsUpdateModel>>? _newsUpdateStreamSubscription;

  @override
  Stream<NewsUpdatesWatcherState> mapEventToState(NewsUpdatesWatcherEvent event) async* {

    yield* event.map(
        watchNewsUpdatesStarted: (e) async* {
          yield const NewsUpdatesWatcherState.loadInProgress();
          await _newsUpdateStreamSubscription?.cancel();
          _newsUpdateStreamSubscription = _miscFacade.watchNewsUpdates().listen((news) {
            return add(NewsUpdatesWatcherEvent.newsReceived(news));
          });
        },


        newsReceived: (e) async* {
          yield e.failedNews.fold(
            (l) => NewsUpdatesWatcherState.loadFailure(l),
            (news) => NewsUpdatesWatcherState.loadNewsUpdateSuccess(news)
        );
      }
    );
  }
}