.class public final Lo/TS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Wd;
.implements Lo/Wf;
.implements Lo/Wj;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TS$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/TS$Activity;


# instance fields
.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;

.field private f:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Long;

.field private i:Z

.field private j:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

.field private m:Lo/Am;

.field private o:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/TS$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/TS$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/TS;->a:Lo/TS$Activity;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    iput-object v0, p0, Lo/TS;->j:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    .line 69
    invoke-virtual {p0, p1}, Lo/TS;->a_(Lio/reactivex/Observable;)V

    .line 70
    invoke-virtual {p0, p1}, Lo/TS;->e(Lio/reactivex/Observable;)V

    .line 73
    invoke-virtual {p0, p1}, Lo/TS;->a(Lio/reactivex/Observable;)V

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;-><init>(Lo/TS;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 99
    new-instance v0, Lo/TS$1;

    invoke-direct {v0, p0}, Lo/TS$1;-><init>(Lo/TS;)V

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "safeManagedStateObservab\u2026filter { isInteractive  }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;-><init>(Lo/TS;)V

    check-cast v0, Lo/alA;

    .line 185
    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$4;-><init>(Lo/TS;)V

    check-cast v1, Lo/alB;

    .line 190
    new-instance v2, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$5;-><init>(Lo/TS;)V

    check-cast v2, Lo/alA;

    .line 100
    invoke-static {p1, v2, v1, v0}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "J)V"
        }
    .end annotation

    .line 261
    sget-object p4, Lo/TS;->a:Lo/TS$Activity;

    check-cast p4, Lo/MessagePdu;

    .line 262
    sget-object p4, Lo/TW;->b:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->ordinal()I

    move-result p1

    aget p1, p4, p1

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eq p1, p4, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_10

    const/4 p2, 0x3

    if-eq p1, p2, :cond_10

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto/16 :goto_9

    .line 325
    :cond_0
    iget-object p1, p0, Lo/TS;->d:Ljava/lang/Long;

    if-nez p1, :cond_1

    .line 327
    sget-object p1, Lo/TS;->a:Lo/TS$Activity;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 329
    :cond_1
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 331
    :goto_0
    check-cast p5, Ljava/lang/Long;

    iput-object p5, p0, Lo/TS;->d:Ljava/lang/Long;

    .line 332
    iget-object p1, p0, Lo/TS;->b:Ljava/lang/Long;

    if-nez p1, :cond_2

    .line 334
    sget-object p1, Lo/TS;->a:Lo/TS$Activity;

    check-cast p1, Lo/MessagePdu;

    goto :goto_1

    .line 336
    :cond_2
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lo/TS;->b:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 338
    :goto_1
    iput-object p5, p0, Lo/TS;->b:Ljava/lang/Long;

    goto/16 :goto_9

    .line 264
    :cond_3
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Moment;->trackingInfo()Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;->getTrackingInfo()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    const-string p4, "moment.trackingInfo()?.trackingInfo?:JSONObject()"

    invoke-static {p1, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object p4, p0, Lo/TS;->o:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    const-string v0, "viewableId"

    if-eqz p4, :cond_5

    invoke-interface {p4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p4

    if-eqz p4, :cond_5

    iget-object p4, p4, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    if-eqz p4, :cond_5

    :try_start_0
    const-string v1, "playListId"

    .line 267
    invoke-static {p4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 269
    :catch_0
    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    :cond_5
    :goto_3
    move-object p4, p5

    check-cast p4, Ljava/lang/String;

    .line 273
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 274
    check-cast p2, Ljava/lang/Iterable;

    .line 409
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-eqz v2, :cond_6

    .line 276
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->trackingInfo()Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;->getTrackingInfo()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_5
    const-string v4, "choice.trackingInfo()?.t\u2026ckingInfo ?: JSONObject()"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "segmentId"

    .line 277
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 278
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_9
    iget-boolean v4, v2, Lcom/netflix/model/leafs/originals/interactive/Choice;->isDefaultChoice:Z

    const-string v5, "default"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 283
    iget-object v4, p0, Lo/TS;->f:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->segmentHistory()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_7

    :cond_a
    move-object v4, p5

    :goto_7
    const-string v5, "hasWatched"

    .line 281
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->videoId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 287
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :cond_b
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->code()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object p4, v2

    .line 292
    :cond_c
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_d
    if-eqz p4, :cond_e

    const-string p2, "code"

    .line 296
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    const-string p2, "choices"

    .line 298
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Moment;->uiDisplayMS()Ljava/lang/Long;

    move-result-object p2

    const-string p4, "moment.uiDisplayMS()"

    invoke-static {p2, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    const-string p2, "uiDisplayMs"

    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 301
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 302
    new-instance p4, Lcom/netflix/cl/model/event/session/Presentation;

    .line 303
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isInterstitialPostPlay()Z

    move-result p5

    if-eqz p5, :cond_f

    sget-object p5, Lcom/netflix/cl/model/AppView;->ikoInterstitialPostPlay:Lcom/netflix/cl/model/AppView;

    goto :goto_8

    :cond_f
    sget-object p5, Lcom/netflix/cl/model/AppView;->ikoChoicePoint:Lcom/netflix/cl/model/AppView;

    .line 304
    :goto_8
    new-instance v0, Lo/TS$TaskDescription;

    invoke-direct {v0, p1}, Lo/TS$TaskDescription;-><init>(Lorg/json/JSONObject;)V

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    .line 302
    invoke-direct {p4, p5, v0}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast p4, Lcom/netflix/cl/model/event/session/Session;

    .line 301
    invoke-virtual {p2, p4}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/TS;->b:Ljava/lang/Long;

    .line 309
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/Countdown;

    sget-object p4, Lo/Vq;->b:Lo/Vq;

    iget-object p5, p0, Lo/TS;->o:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-virtual {p4, p5, p3}, Lo/Vq;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;Lcom/netflix/model/leafs/originals/interactive/Moment;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/netflix/cl/model/event/session/Countdown;-><init>(Ljava/lang/Long;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/TS;->e:Ljava/lang/Long;

    .line 311
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 312
    new-instance p2, Lcom/netflix/cl/model/event/session/Presentation;

    .line 313
    sget-object p3, Lcom/netflix/cl/model/AppView;->ikoChoicePointOverlay:Lcom/netflix/cl/model/AppView;

    .line 314
    sget-object p4, Lo/TS$StateListAnimator;->e:Lo/TS$StateListAnimator;

    check-cast p4, Lcom/netflix/cl/model/TrackingInfo;

    .line 312
    invoke-direct {p2, p3, p4}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    .line 311
    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/TS;->d:Ljava/lang/Long;

    :cond_10
    :goto_9
    return-void
.end method

.method public static final synthetic a(Lo/TS;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/TS;->h()V

    return-void
.end method

.method private final b()V
    .locals 3

    .line 227
    iget-object v0, p0, Lo/TS;->e:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lo/TS;->a:Lo/TS$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 229
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lo/TS;->e:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 230
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/TS;->e:Ljava/lang/Long;

    .line 232
    :cond_0
    iget-object v0, p0, Lo/TS;->d:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lo/TS;->a:Lo/TS$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 234
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lo/TS;->d:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 235
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/TS;->d:Ljava/lang/Long;

    .line 237
    :cond_1
    iget-object v0, p0, Lo/TS;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 238
    sget-object v0, Lo/TS;->a:Lo/TS$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 239
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lo/TS;->b:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 240
    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lo/TS;->b:Ljava/lang/Long;

    .line 242
    :cond_2
    iget-object v0, p0, Lo/TS;->c:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 243
    invoke-direct {p0}, Lo/TS;->h()V

    :cond_3
    return-void
.end method

.method public static final synthetic b(Lo/TS;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/TS;->j()V

    return-void
.end method

.method public static final synthetic b(Lo/TS;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lo/TS;->o:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    return-void
.end method

.method public static final synthetic b(Lo/TS;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/TS;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-void
.end method

.method private final c()V
    .locals 2

    .line 198
    iget-object v0, p0, Lo/TS;->o:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 199
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/TS;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lo/TS;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/TS;->c()V

    return-void
.end method

.method public static final synthetic d(Lo/TS;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/TS;->f:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-object p0
.end method

.method public static final synthetic d(Lo/TS;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lo/TS;->f:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 4

    const-string v0, "viewableId"

    .line 207
    invoke-direct {p0}, Lo/TS;->b()V

    .line 208
    sget-object v1, Lo/TS;->a:Lo/TS$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 210
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    const-string v3, "segmentId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    :try_start_0
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    const-string v3, "playlistTimestamp.playlistId"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :goto_0
    iget-object v0, p0, Lo/TS;->f:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->segmentHistory()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/iko/VideoSegment;

    new-instance v3, Lo/TS$ActionBar;

    invoke-direct {v3, v1}, Lo/TS$ActionBar;-><init>(Lorg/json/JSONObject;)V

    check-cast v3, Lcom/netflix/cl/model/TrackingInfo;

    invoke-direct {v2, v3}, Lcom/netflix/cl/model/event/session/iko/VideoSegment;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/TS;->c:Ljava/lang/Long;

    .line 218
    iget-object v0, p0, Lo/TS;->m:Lo/Am;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v1, Lo/ImageTransformation;

    .line 220
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    .line 222
    iget-object p1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    const-string v3, "segment"

    .line 219
    invoke-direct {v1, v2, v3, p1}, Lo/ImageTransformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lo/ConfirmationCallback;

    .line 223
    new-instance p1, Lo/TS$Application;

    invoke-direct {p1}, Lo/TS$Application;-><init>()V

    check-cast p1, Lo/zU;

    .line 218
    invoke-interface {v0, v1, p1}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    :cond_1
    return-void
.end method

.method public static final synthetic e(Lo/TS;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/TS;->g()V

    return-void
.end method

.method public static final synthetic e(Lo/TS;Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lo/TS;->a(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V

    return-void
.end method

.method public static final synthetic e(Lo/TS;Ljava/lang/Long;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lo/TS;->e:Ljava/lang/Long;

    return-void
.end method

.method private final g()V
    .locals 3

    .line 370
    iget-object v0, p0, Lo/TS;->h:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 371
    sget-object v2, Lo/TS;->a:Lo/TS$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 372
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 373
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/TS;->h:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private final h()V
    .locals 3

    .line 248
    iget-object v0, p0, Lo/TS;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 249
    sget-object v2, Lo/TS;->a:Lo/TS$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 250
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 251
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/TS;->c:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public static final synthetic h(Lo/TS;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/TS;->b()V

    return-void
.end method

.method public static final synthetic i(Lo/TS;)Ljava/lang/Long;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/TS;->e:Ljava/lang/Long;

    return-object p0
.end method

.method private final j()V
    .locals 5

    .line 345
    iget-object v0, p0, Lo/TS;->f:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lo/TS;->o:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 347
    sget-object v1, Lo/TS;->a:Lo/TS$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 348
    iget-object v1, p0, Lo/TS;->h:Ljava/lang/Long;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 349
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 351
    :cond_1
    iget-object v1, v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "logShowNavigationControlsPreview invalid segment id"

    .line 353
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 356
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 357
    iget-object v2, v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    const-string v3, "segmentId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    const-string v2, "viewableId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 360
    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    .line 361
    sget-object v3, Lcom/netflix/cl/model/AppView;->ikoChoicePointNavigatorPreview:Lcom/netflix/cl/model/AppView;

    .line 362
    new-instance v4, Lo/TS$FragmentManager;

    invoke-direct {v4, v1}, Lo/TS$FragmentManager;-><init>(Lorg/json/JSONObject;)V

    check-cast v4, Lcom/netflix/cl/model/TrackingInfo;

    .line 360
    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    .line 359
    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/TS;->h:Ljava/lang/Long;

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/TS;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p1}, Lo/Wd$TaskDescription;->e(Lo/Wd;Lio/reactivex/Observable;)V

    return-void
.end method

.method public a_(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p1}, Lo/Wf$Activity;->a(Lo/Wf;Lio/reactivex/Observable;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lo/TS;->j:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-void
.end method

.method public final b(Lo/Am;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/TS;->m:Lo/Am;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/TS;->g:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lo/TS;->i:Z

    return v0
.end method

.method public d_(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lo/TS;->i:Z

    return-void
.end method

.method public e()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/TS;->j:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-object v0
.end method

.method public e(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p1}, Lo/Wj$StateListAnimator;->d(Lo/Wj;Lio/reactivex/Observable;)V

    return-void
.end method
