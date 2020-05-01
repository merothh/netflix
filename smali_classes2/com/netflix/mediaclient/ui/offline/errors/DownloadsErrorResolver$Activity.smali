.class Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

.field private final c:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

.field private final e:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/nS;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    const-string v1, "BehaviorSubject.create<A\u2026          .toSerialized()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->e:Lio/reactivex/subjects/Subject;

    .line 98
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->c:Lio/reactivex/subjects/Subject;

    return-void
.end method


# virtual methods
.method public a(Lo/Rq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 1

    const-string v0, "uiList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playableId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-interface {p1, p2}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->g()Lio/reactivex/subjects/Subject;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->d:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    return-void
.end method

.method public a(Lo/nS;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->j:Lo/nS;

    return-void
.end method

.method public declared-synchronized b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->i()Lio/reactivex/subjects/Subject;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 4

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->g()Lio/reactivex/subjects/Subject;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->last(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 173
    monitor-exit p0

    return v0

    .line 176
    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v0, Lo/MessagePdu;

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->g()Lio/reactivex/subjects/Subject;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 178
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;-><init>()V

    .line 179
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->d(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V

    .line 181
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$StateListAnimator;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V

    check-cast v2, Lio/reactivex/CompletableOnSubscribe;

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    .line 189
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$Application;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$Application;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V

    check-cast v3, Lio/reactivex/CompletableSource;

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    .line 207
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 208
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v2, "Completable.create {\n   \u2026dSchedulers.mainThread())"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$deleteAllDownloadsWithErrors$disposable$3;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$deleteAllDownloadsWithErrors$disposable$3;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V

    check-cast v2, Lo/alB;

    .line 214
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$deleteAllDownloadsWithErrors$disposable$4;

    invoke-direct {v3, p0, v1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$deleteAllDownloadsWithErrors$disposable$4;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V

    check-cast v3, Lo/alA;

    .line 209
    invoke-static {v0, v3, v2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Completable;Lo/alA;Lo/alB;)Lio/reactivex/disposables/Disposable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 221
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    return-void
.end method

.method public declared-synchronized d()Z
    .locals 4

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->i()Lio/reactivex/subjects/Subject;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->last(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 112
    monitor-exit p0

    return v0

    .line 115
    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v0, Lo/MessagePdu;

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->i()Lio/reactivex/subjects/Subject;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;-><init>()V

    .line 118
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->a(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V

    .line 120
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V

    check-cast v2, Lio/reactivex/CompletableOnSubscribe;

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    .line 128
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$TaskDescription;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V

    check-cast v3, Lio/reactivex/CompletableSource;

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    .line 148
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 149
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v2, "Completable.create {\n   \u2026dSchedulers.mainThread())"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V

    check-cast v2, Lo/alB;

    .line 155
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;

    invoke-direct {v3, p0, v1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V

    check-cast v3, Lo/alA;

    .line 150
    invoke-static {v0, v3, v2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Completable;Lo/alA;Lo/alB;)Lio/reactivex/disposables/Disposable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 162
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    const-string v1, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-interface {v0}, Lo/Rq;->f()Ljava/util/List;

    move-result-object v1

    const-string v2, "uiList.listOfAdapterData"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 359
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it.videoAndProfileData.video"

    const-string v5, "it"

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 228
    invoke-static {v6, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v5

    iget-object v5, v5, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.videoAndProfileData.video.playableId"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->a(Lo/Rq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->c()Z

    move-result v4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_2
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 362
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 363
    check-cast v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 230
    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 364
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public f()Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    return-object v0
.end method

.method public g()Lio/reactivex/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->c:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public h()Lo/nS;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->j:Lo/nS;

    return-object v0
.end method

.method public i()Lio/reactivex/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->e:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public j()Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->d:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    return-object v0
.end method
