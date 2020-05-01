.class public final Lo/UK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UK$TaskDescription;,
        Lo/UK$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserManager<",
        "Lo/UK$TaskDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/UK$Application;


# instance fields
.field private final a:Lo/Wn;

.field private final c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/UK$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/Zx;

.field private final e:Lo/Wo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/UK$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/UK$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/UK;->b:Lo/UK$Application;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "destroyObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Pl\u2026rRepository.PlayerData>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/UK;->c:Lio/reactivex/subjects/PublishSubject;

    .line 35
    new-instance v0, Lo/Wo;

    invoke-direct {v0}, Lo/Wo;-><init>()V

    iput-object v0, p0, Lo/UK;->e:Lo/Wo;

    .line 36
    new-instance v0, Lo/Wn;

    invoke-direct {v0, p1}, Lo/Wn;-><init>(Lio/reactivex/Observable;)V

    iput-object v0, p0, Lo/UK;->a:Lo/Wn;

    .line 38
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    iput-object v0, p0, Lo/UK;->d:Lo/Zx;

    .line 45
    iget-object v0, p0, Lo/UK;->e:Lo/Wo;

    invoke-virtual {v0}, Lo/Wo;->d()Lio/reactivex/Observable;

    move-result-object v0

    check-cast p1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "interactiveMomentsPlayer\u2026eUntil(destroyObservable)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lo/UK;->a:Lo/Wn;

    invoke-virtual {v0}, Lo/Wn;->d()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-static {p1, v0}, Lio/reactivex/rxkotlin/ObservablesKt;->zipWith(Lio/reactivex/Observable;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 48
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$1;-><init>(Lo/UK;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    .line 53
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;->e:Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 47
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 11

    .line 157
    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    .line 158
    iget-object p3, p0, Lo/UK;->c:Lio/reactivex/subjects/PublishSubject;

    .line 159
    new-instance v10, Lo/UK$TaskDescription;

    .line 160
    move-object v1, p1

    check-cast v1, Lo/Bc;

    if-eqz p1, :cond_0

    .line 161
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/LegacyErrorStrings;->af:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    const-string v0, "if (videoDetails != null\u2026NT_ERR_REALM_DETAILS_NULL"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    .line 162
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const/4 v9, 0x0

    move-object v0, v10

    move-object v4, p2

    .line 159
    invoke-direct/range {v0 .. v9}, Lo/UK$TaskDescription;-><init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;ILo/amc;)V

    .line 158
    invoke-virtual {p3, v10}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableSource;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
            "I",
            "Lcom/netflix/mediaclient/ui/player/PlayerExtras;",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Lio/reactivex/ObservableSource<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v2, p6

    move-object/from16 v0, p7

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestStreamingDetails "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "PlayerRepository"

    invoke-static {v9, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v1, Lo/UR;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v10

    aget v1, v1, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eq v1, v10, :cond_2

    const/4 v10, 0x2

    if-eq v1, v10, :cond_1

    const/4 v10, 0x3

    if-eq v1, v10, :cond_0

    .line 148
    iget-object v0, v8, Lo/UK;->c:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Lo/UK$TaskDescription;

    const/4 v11, 0x0

    .line 149
    sget-object v2, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v3, "CommonStatus.INTERNAL_ERROR"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v2

    check-cast v12, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v13, 0x0

    .line 150
    new-instance v2, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v3, -0x14a

    invoke-direct {v2, v9, v3}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    move-object v14, v2

    check-cast v14, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x75

    const/16 v19, 0x0

    move-object v10, v1

    .line 148
    invoke-direct/range {v10 .. v19}, Lo/UK$TaskDescription;-><init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;ILo/amc;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 133
    :cond_0
    iget-object v1, v8, Lo/UK;->d:Lo/Zx;

    invoke-virtual {v1, v3, v12, v11, v2}, Lo/Zx;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v9

    const-string v0, "browseRepo.fetchEpisodeD\u2026eUntil(destroyObservable)"

    invoke-static {v9, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 135
    new-instance v12, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;-><init>(Lo/UK;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    move-object v0, v12

    check-cast v0, Lo/alA;

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v10

    move-object/from16 p3, v11

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, v8, Lo/UK;->d:Lo/Zx;

    invoke-virtual {v1, v3, v12, v2}, Lo/Zx;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "browseRepo.fetchShowDeta\u2026eUntil(destroyObservable)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    new-instance v3, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$2;

    invoke-direct {v3, v8, v5, v6, v7}, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$2;-><init>(Lo/UK;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    check-cast v3, Lo/alA;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, v8, Lo/UK;->d:Lo/Zx;

    invoke-virtual {v1, v3, v12, v11, v2}, Lo/Zx;->d(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "browseRepo.fetchMovieDet\u2026eUntil(destroyObservable)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 120
    new-instance v3, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;

    invoke-direct {v3, v8, v5, v6, v7}, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;-><init>(Lo/UK;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    check-cast v3, Lo/alA;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lo/UK;Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lo/UK;->d(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public static final synthetic d(Lo/UK;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/UK;->c:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private final d(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 12

    move-object v0, p0

    .line 175
    new-instance v11, Lo/UK$TaskDescription;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x64

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lo/UK$TaskDescription;-><init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;ILo/amc;)V

    .line 181
    iget-object v1, v0, Lo/UK;->d:Lo/Zx;

    invoke-virtual {v1}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/hW;

    if-eqz v1, :cond_0

    .line 182
    iget-object v2, v0, Lo/UK;->e:Lo/Wo;

    move-object/from16 v3, p5

    invoke-virtual {v2, v1, v11, v3}, Lo/Wo;->e(Lo/hW;Lo/UK$TaskDescription;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    .line 183
    iget-object v2, v0, Lo/UK;->a:Lo/Wn;

    invoke-virtual {v2, v1, v11}, Lo/Wn;->e(Lo/hW;Lo/UK$TaskDescription;)V

    return-void

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
            "Lcom/netflix/mediaclient/ui/player/PlayerExtras;",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Lio/reactivex/ObservableSource<",
            "Lo/akj;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lo/UK$TaskDescription;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    move-object v1, p1

    move-object v3, p3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    move-object v2, p2

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskMode"

    move-object v6, p5

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lo/RL;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz p4, :cond_0

    .line 78
    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 83
    sget-object v5, Lo/fg;->d:Lo/fg$Application;

    invoke-virtual {v5}, Lo/fg$Application;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o()Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a()Z

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    .line 91
    invoke-direct {p0, p1, p3, v4}, Lo/UK;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 93
    invoke-direct/range {v0 .. v7}, Lo/UK;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableSource;)V

    .line 103
    :goto_1
    iget-object v0, v8, Lo/UK;->c:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public d()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/UK$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lo/UK;->c:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method
