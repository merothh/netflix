.class public Lo/FI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FI$FragmentManager;,
        Lo/FI$ActionBar;,
        Lo/FI$LoaderManager;,
        Lo/FI$TaskDescription;,
        Lo/FI$StateListAnimator;,
        Lo/FI$Activity;,
        Lo/FI$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/FI$Application;


# instance fields
.field private final c:Lo/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/FI$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FI$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/FI;->e:Lo/FI$Application;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 1
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

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$netflixRepository$2;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$netflixRepository$2;-><init>(Lio/reactivex/Observable;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/FI;->c:Lo/aka;

    return-void
.end method

.method public static synthetic a(Lo/FI;Ljava/lang/String;ZZZZZILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 7

    if-nez p8, :cond_5

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    move-object v0, p0

    move-object v1, p1

    .line 647
    invoke-virtual/range {v0 .. v6}, Lo/FI;->e(Ljava/lang/String;ZZZZZ)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 0
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getFullVideoDetailsInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b()Lo/bs;
    .locals 1

    iget-object v0, p0, Lo/FI;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bs;

    return-object v0
.end method

.method public static final synthetic e(Lo/FI;)Lo/bs;
    .locals 0

    .line 98
    invoke-direct {p0}, Lo/FI;->b()Lo/bs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Lo/Bc;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDetails"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    new-instance p3, Lo/FC$Application;

    invoke-direct {p3, p2}, Lo/FC$Application;-><init>(Lo/Bc;)V

    invoke-interface {p1, p3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "episodeId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lo/FI$Fragment;

    invoke-direct {v0, p0, p1}, Lo/FI$Fragment;-><init>(Lo/FI;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026              )\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lo/Am;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lo/FI$PendingIntent;

    invoke-direct {v0, p0, p1, p2}, Lo/FI$PendingIntent;-><init>(Lo/FI;Lo/Am;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026ck(subscriber))\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lo/Am;Ljava/lang/String;JII)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            "JII)",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seasonId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lo/FI$AssistContent;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move v6, p6

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lo/FI$AssistContent;-><init>(Lo/FI;Lo/Am;Ljava/lang/String;IIJ)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026isodeEndIndex))\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected final c(Lio/reactivex/ObservableEmitter;Lo/Am;Lo/Bc;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Lo/Am;",
            "Lo/Bc;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "publisher"

    move-object/from16 v5, p1

    invoke-static {v5, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "serviceManager"

    move-object/from16 v15, p2

    invoke-static {v15, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "details"

    invoke-static {v0, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoId"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-interface/range {p3 .. p3}, Lo/Bc;->aS()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lo/Am;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 421
    invoke-interface/range {p3 .. p3}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 422
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_0

    .line 423
    new-instance v2, Lo/FI$LoaderManager;

    .line 426
    invoke-interface/range {p3 .. p3}, Lo/Bc;->getUserThumbRating()I

    move-result v7

    .line 427
    invoke-interface/range {p3 .. p3}, Lo/Bc;->getMatchPercentage()I

    move-result v8

    .line 428
    invoke-interface/range {p3 .. p3}, Lo/Bc;->aW()Z

    move-result v9

    .line 429
    invoke-interface/range {p3 .. p3}, Lo/Bc;->aP()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc0

    const/4 v14, 0x0

    move-object v3, v2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 423
    invoke-direct/range {v3 .. v14}, Lo/FI$LoaderManager;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;IIZLjava/lang/String;ILjava/lang/Integer;ILo/amc;)V

    move-object v13, v2

    goto :goto_1

    .line 432
    :cond_0
    move-object v2, v0

    check-cast v2, Lo/Bb;

    .line 433
    new-instance v13, Lo/FI$LoaderManager;

    .line 436
    invoke-interface {v2}, Lo/Bb;->getUserThumbRating()I

    move-result v7

    .line 437
    invoke-interface {v2}, Lo/Bb;->getMatchPercentage()I

    move-result v8

    .line 438
    invoke-interface {v2}, Lo/Bb;->aW()Z

    move-result v9

    .line 439
    invoke-interface {v2}, Lo/Bb;->aP()Ljava/lang/String;

    move-result-object v10

    .line 440
    invoke-interface {v2}, Lo/Bb;->aw()I

    move-result v11

    .line 441
    invoke-interface {v2}, Lo/Bb;->aF()Lo/Ba;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lo/Ba;->as()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v12, v2

    move-object v3, v13

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 433
    invoke-direct/range {v3 .. v12}, Lo/FI$LoaderManager;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;IIZLjava/lang/String;ILjava/lang/Integer;)V

    .line 444
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    .line 445
    new-instance v3, Lo/CustomDescription;

    invoke-interface/range {p3 .. p3}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-direct {v3, v1, v0}, Lo/CustomDescription;-><init>(Ljava/lang/String;Z)V

    check-cast v3, Lo/ConfirmationCallback;

    .line 446
    check-cast v13, Lo/zU;

    .line 444
    invoke-interface {v2, v3, v13}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    goto :goto_3

    .line 449
    :cond_3
    invoke-interface/range {p1 .. p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_3
    return-void
.end method

.method public final d(Lo/Am;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "characterId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v0, Lo/FI$SharedElementCallback;

    invoke-direct {v0, p0, p1, p2}, Lo/FI$SharedElementCallback;-><init>(Lo/FI;Lo/Am;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026ck(subscriber))\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lo/FI$Dialog;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lo/FI$Dialog;-><init>(Lo/FI;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Am;Ljava/lang/String;ZLjava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026videoId), null)\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;JII)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JII)",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "seasonId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lo/FI$PictureInPictureParams;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lo/FI$PictureInPictureParams;-><init>(Lo/FI;Ljava/lang/String;IIJ)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026              )\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;ZZZZZ)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZZ)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lo/agg;",
            ">;>;"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    new-instance v0, Lo/FI$VoiceInteractor;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lo/FI$VoiceInteractor;-><init>(Ljava/lang/String;ZZZZZ)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { emit\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
