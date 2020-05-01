.class public Lo/UF;
.super Lo/UG;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/UG;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lcom/netflix/model/leafs/PostPlayExperience;",
            ">;>;"
        }
    .end annotation

    .line 120
    new-instance p1, Lo/UF$Activity;

    invoke-direct {p1, p0}, Lo/UF$Activity;-><init>(Lo/UF;)V

    check-cast p1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026OR, subscriber)\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lio/reactivex/ObservableEmitter<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lcom/netflix/model/leafs/PostPlayExperience;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 61
    move-object v2, v1

    check-cast v2, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;

    .line 62
    sget-object v3, Lo/gy;->a:Lo/gy$Activity;

    invoke-virtual {v3}, Lo/gy$Activity;->c()Z

    move-result v3

    const-string v4, "PlayContextImp.DFLT_NEXT_EPISODE_POST_PLAY_CONTEXT"

    const-string v5, "PlayContextImp.OFFLINE_A\u2026EPISODE_POST_PLAY_CONTEXT"

    const-string v6, "PlayContextImp.OFFLINE_U\u2026EPISODE_POST_PLAY_CONTEXT"

    if-eqz v3, :cond_6

    .line 63
    invoke-static/range {p1 .. p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v3

    .line 64
    sget-object v7, Lo/Rs;->e:Lo/Rs;

    invoke-virtual {v7, v0}, Lo/Rs;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 65
    invoke-virtual {v7}, Lo/Tf;->bb()Lo/AK;

    move-result-object v8

    const-string v9, "it.playable"

    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 66
    invoke-virtual {v7}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v1

    :goto_0
    invoke-static {v2, v8}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    const-string v9, "it.playableId"

    if-eqz v2, :cond_3

    .line 67
    new-instance v2, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;

    .line 68
    invoke-virtual {v7}, Lo/Tf;->bb()Lo/AK;

    move-result-object v11

    .line 69
    invoke-virtual {v7}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object v12

    .line 70
    invoke-virtual {v7}, Lo/Tf;->t()Ljava/lang/String;

    move-result-object v13

    .line 72
    sget-object v10, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->o:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v10, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v15

    .line 73
    sget-object v6, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->p:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v6, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v16

    .line 74
    sget-object v5, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v17

    .line 75
    invoke-virtual {v7}, Lo/Tf;->S()I

    move-result v18

    .line 76
    invoke-virtual {v7}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v19

    .line 77
    sget-object v4, Lo/Rs;->e:Lo/Rs;

    invoke-virtual {v7}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lo/Rs;->c(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x0

    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {v3}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_2

    const/16 v22, 0x0

    goto :goto_1

    :cond_2
    sget-object v1, Lo/Rs;->e:Lo/Rs;

    invoke-virtual {v1, v0, v7}, Lo/Rs;->d(Ljava/lang/String;Lo/Tf;)Z

    move-result v8

    move/from16 v22, v8

    :goto_1
    move-object v10, v2

    move/from16 v14, p2

    .line 67
    invoke-direct/range {v10 .. v22}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;-><init>(Lo/AK;Ljava/lang/String;Ljava/lang/String;ZIIIILcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZZ)V

    goto/16 :goto_3

    .line 82
    :cond_3
    new-instance v2, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;

    .line 83
    invoke-virtual {v7}, Lo/Tf;->bb()Lo/AK;

    move-result-object v24

    .line 84
    invoke-virtual {v7}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object v25

    .line 85
    invoke-virtual {v7}, Lo/Tf;->t()Ljava/lang/String;

    move-result-object v26

    .line 87
    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->t:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v5, "PlayContextImp.OFFLINE_N\u2026T_TITLE_POST_PLAY_CONTEXT"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v28

    .line 88
    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->t:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v29

    .line 89
    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->t:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v30

    .line 90
    invoke-virtual {v7}, Lo/Tf;->S()I

    move-result v31

    .line 91
    invoke-virtual {v7}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v32

    .line 92
    sget-object v4, Lo/Rs;->e:Lo/Rs;

    invoke-virtual {v7}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lo/Rs;->c(Ljava/lang/String;)I

    move-result v33

    const/16 v34, 0x1

    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {v3}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    :cond_4
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_5

    const/16 v35, 0x0

    goto :goto_2

    :cond_5
    sget-object v1, Lo/Rs;->e:Lo/Rs;

    invoke-virtual {v1, v0, v7}, Lo/Rs;->d(Ljava/lang/String;Lo/Tf;)Z

    move-result v8

    move/from16 v35, v8

    :goto_2
    move-object/from16 v23, v2

    move/from16 v27, p2

    .line 82
    invoke-direct/range {v23 .. v35}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;-><init>(Lo/AK;Ljava/lang/String;Ljava/lang/String;ZIIIILcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZZ)V

    goto :goto_3

    .line 100
    :cond_6
    invoke-static/range {p1 .. p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lo/Tf;->au()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 101
    invoke-static {v0}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 102
    invoke-virtual {v0}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    const-string v3, "nextVideoDetails.playable"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 103
    new-instance v1, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;

    .line 104
    invoke-virtual {v0}, Lo/Tf;->bb()Lo/AK;

    move-result-object v8

    .line 105
    invoke-virtual {v0}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v0}, Lo/Tf;->t()Ljava/lang/String;

    move-result-object v10

    .line 108
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->o:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v12

    .line 109
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->p:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v0, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v13

    .line 110
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v14

    move-object v7, v1

    move/from16 v11, p2

    .line 103
    invoke-direct/range {v7 .. v14}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;-><init>(Lo/AK;Ljava/lang/String;Ljava/lang/String;ZIII)V

    move-object v2, v1

    .line 115
    :cond_7
    :goto_3
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 116
    invoke-interface/range {p3 .. p3}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public static final synthetic e(Lo/UF;Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lo/UF;->e(Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;ZZ)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Lcom/netflix/mediaclient/servicemgr/PlayLocationType;",
            "ZZ)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lcom/netflix/model/leafs/PostPlayExperience;",
            ">;>;"
        }
    .end annotation

    const-string p5, "playableId"

    invoke-static {p1, p5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "playableType"

    invoke-static {p2, p5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "playLocationType"

    invoke-static {p3, p5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object p3, Lo/gy;->a:Lo/gy$Activity;

    invoke-virtual {p3}, Lo/gy$Activity;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 26
    new-instance p2, Lo/UF$TaskDescription;

    invoke-direct {p2, p0, p1, p4}, Lo/UF$TaskDescription;-><init>(Lo/UF;Ljava/lang/String;Z)V

    check-cast p2, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {p2}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026subscriber)\n            }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 31
    :cond_0
    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p2, p3, :cond_1

    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 33
    invoke-virtual {p2}, Lo/Tf;->au()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 35
    invoke-static {p2}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lo/Tf;->bb()Lo/AK;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 37
    new-instance p2, Lo/UF$StateListAnimator;

    invoke-direct {p2, p0, p1, p4}, Lo/UF$StateListAnimator;-><init>(Lo/UF;Ljava/lang/String;Z)V

    check-cast p2, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {p2}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026criber)\n                }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 40
    :cond_2
    move-object p1, p0

    check-cast p1, Lo/UF;

    const-string p2, "The NEXT videoDetails or playableId was null for PostPlayOfflineRepository#fetchPostPlayExperience"

    .line 41
    invoke-direct {p1, p2}, Lo/UF;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 46
    :cond_3
    move-object p1, p0

    check-cast p1, Lo/UF;

    const-string p2, "The videoDetails or nextEpisodeId was null for PostPlayOfflineRepository#fetchPostPlayExperience"

    .line 50
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    .line 51
    invoke-interface {p3, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 52
    invoke-direct {p1, p2}, Lo/UF;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
