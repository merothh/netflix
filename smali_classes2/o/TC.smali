.class public final Lo/TC;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""

# interfaces
.implements Lo/CY;
.implements Lo/DatePickerCalendarDelegate$Activity;
.implements Lcom/netflix/mediaclient/ui/player/IPlayerFragment;
.implements Lo/Bq;
.implements Lo/UI;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TC$ActionBar;
    }
.end annotation


# static fields
.field private static X:Lo/TX;

.field static final b:I

.field private static final q:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:J

.field private static final w:I

.field private static final x:I

.field private static final y:J


# instance fields
.field private A:J

.field private final B:Landroid/os/Handler;

.field private C:I

.field private D:Lo/cz;

.field private E:Landroid/view/ViewGroup;

.field private F:Z

.field private G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

.field private H:Lo/WebChromeClient;

.field private I:Z

.field private J:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field private K:Lo/Tv;

.field private L:Landroid/content/BroadcastReceiver;

.field private M:I

.field private N:Lo/TS;

.field private O:Lo/Ah;

.field private final P:Lo/UK;

.field private Q:Lo/Ab;

.field private final R:Lo/Ws;

.field private final S:Lio/reactivex/disposables/CompositeDisposable;

.field private T:Lo/pz;

.field private U:Lo/agg;

.field private V:Lo/zN;

.field private W:Lo/CameraPrewarmService;

.field private Y:Lo/zF;

.field private Z:Lo/Dd;

.field private final aA:Ljava/lang/Runnable;

.field private final aB:Landroid/content/BroadcastReceiver;

.field private final aC:Lo/Du$TaskDescription;

.field private final aD:Landroid/content/BroadcastReceiver;

.field private final aF:Ljava/lang/Runnable;

.field private final aG:Landroid/content/BroadcastReceiver;

.field private aa:Landroid/view/accessibility/AccessibilityManager;

.field private ab:Lo/hW;

.field private ac:Z

.field private ad:J

.field private ae:Lcom/netflix/cl/model/AppView;

.field private af:J

.field private ag:F

.field private ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

.field private ai:Lo/Bm;

.field private aj:Z

.field private ak:Lo/Ug;

.field private al:Z

.field private am:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

.field private final an:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

.field private final ao:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

.field private ap:Z

.field private aq:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final ar:Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

.field private final as:Landroid/view/View$OnClickListener;

.field private final at:Lo/SimpleMonthView$ActionBar;

.field private final au:Lo/CT$TaskDescription;

.field private final av:Ljava/lang/Runnable;

.field private final aw:Ljava/lang/Runnable;

.field private final ax:Ljava/lang/Runnable;

.field private final ay:Landroid/content/BroadcastReceiver;

.field private final az:Landroid/content/BroadcastReceiver;

.field public f:Lo/CT;

.field public h:Lo/Tv;

.field public i:Lo/Tv;

.field public final j:Lo/Uc;

.field public k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field public l:Lo/Tv;

.field public m:Ljava/lang/Long;

.field public n:Lo/Me;

.field public o:Lo/UpdateEngine;

.field public p:Ljava/lang/Long;

.field public r:Ljava/lang/Long;

.field private z:Lo/TY;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 269
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->c()I

    move-result v0

    sput v0, Lo/TC;->t:I

    .line 274
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->e()I

    move-result v0

    sput v0, Lo/TC;->q:I

    .line 276
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->a()I

    move-result v0

    sput v0, Lo/TC;->s:I

    .line 283
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->d()I

    move-result v0

    sput v0, Lo/TC;->u:I

    .line 288
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->b()I

    move-result v0

    sput v0, Lo/TC;->x:I

    .line 295
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->i()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/TC;->v:J

    .line 297
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->g()I

    move-result v0

    sput v0, Lo/TC;->b:I

    .line 303
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->j()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/TC;->y:J

    .line 305
    sget-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    invoke-virtual {v0}, Lo/gQ$Activity;->f()I

    move-result v0

    sput v0, Lo/TC;->w:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 255
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 311
    sget v0, Lo/TC;->w:I

    iput v0, p0, Lo/TC;->C:I

    const-wide/16 v0, 0x0

    .line 314
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-wide v0, p0, Lo/TC;->A:J

    .line 319
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    .line 324
    new-instance v0, Lo/Uc;

    invoke-direct {v0}, Lo/Uc;-><init>()V

    iput-object v0, p0, Lo/TC;->j:Lo/Uc;

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lo/TC;->I:Z

    .line 351
    sget v1, Lo/TC;->q:I

    iput v1, p0, Lo/TC;->M:I

    .line 377
    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v1

    iput-object v1, p0, Lo/TC;->o:Lo/UpdateEngine;

    .line 379
    new-instance v1, Lo/TS;

    iget-object v3, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v4, Lo/UP;

    .line 380
    invoke-virtual {v3, v4}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v3

    invoke-direct {v1, v3}, Lo/TS;-><init>(Lio/reactivex/Observable;)V

    iput-object v1, p0, Lo/TC;->N:Lo/TS;

    .line 385
    new-instance v1, Lo/UK;

    iget-object v3, p0, Lo/TC;->o:Lo/UpdateEngine;

    .line 386
    invoke-virtual {v3}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v3

    invoke-direct {v1, v3}, Lo/UK;-><init>(Lio/reactivex/Observable;)V

    iput-object v1, p0, Lo/TC;->P:Lo/UK;

    .line 388
    new-instance v1, Lo/Ws;

    invoke-direct {v1}, Lo/Ws;-><init>()V

    iput-object v1, p0, Lo/TC;->R:Lo/Ws;

    .line 391
    new-instance v1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v1, p0, Lo/TC;->S:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v1, 0x0

    .line 398
    iput-object v1, p0, Lo/TC;->U:Lo/agg;

    .line 405
    iput-object v2, p0, Lo/TC;->m:Ljava/lang/Long;

    .line 407
    iput-object v2, p0, Lo/TC;->r:Ljava/lang/Long;

    .line 408
    iput-object v2, p0, Lo/TC;->p:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 414
    iput-boolean v1, p0, Lo/TC;->ac:Z

    .line 420
    sget-object v1, Lcom/netflix/cl/model/AppView;->playback:Lcom/netflix/cl/model/AppView;

    iput-object v1, p0, Lo/TC;->ae:Lcom/netflix/cl/model/AppView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 422
    iput v1, p0, Lo/TC;->ag:F

    .line 423
    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->e:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    iput-object v1, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    .line 442
    new-instance v1, Lo/TC$3;

    invoke-direct {v1, p0}, Lo/TC$3;-><init>(Lo/TC;)V

    iput-object v1, p0, Lo/TC;->an:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    .line 465
    new-instance v1, Lo/TC$12;

    invoke-direct {v1, p0}, Lo/TC$12;-><init>(Lo/TC;)V

    iput-object v1, p0, Lo/TC;->ar:Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

    .line 472
    new-instance v1, Lo/TC$20;

    invoke-direct {v1, p0}, Lo/TC$20;-><init>(Lo/TC;)V

    iput-object v1, p0, Lo/TC;->ao:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    .line 479
    iput-boolean v0, p0, Lo/TC;->ap:Z

    .line 579
    new-instance v0, Lo/TD;

    invoke-direct {v0, p0}, Lo/TD;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->av:Ljava/lang/Runnable;

    .line 1449
    new-instance v0, Lo/TC$4;

    invoke-direct {v0, p0}, Lo/TC$4;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->aw:Ljava/lang/Runnable;

    .line 2238
    new-instance v0, Lo/TC$2;

    invoke-direct {v0, p0}, Lo/TC$2;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->as:Landroid/view/View$OnClickListener;

    .line 2290
    new-instance v0, Lo/TC$10;

    invoke-direct {v0, p0}, Lo/TC$10;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->au:Lo/CT$TaskDescription;

    .line 2317
    new-instance v0, Lo/TB;

    invoke-direct {v0, p0}, Lo/TB;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->at:Lo/SimpleMonthView$ActionBar;

    .line 2570
    new-instance v0, Lo/TC$9;

    invoke-direct {v0, p0}, Lo/TC$9;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->ax:Ljava/lang/Runnable;

    .line 2630
    new-instance v0, Lo/TC$8;

    invoke-direct {v0, p0}, Lo/TC$8;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->az:Landroid/content/BroadcastReceiver;

    .line 2640
    new-instance v0, Lo/TC$6;

    invoke-direct {v0, p0}, Lo/TC$6;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->aB:Landroid/content/BroadcastReceiver;

    .line 2653
    new-instance v0, Lo/TC$7;

    invoke-direct {v0, p0}, Lo/TC$7;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->ay:Landroid/content/BroadcastReceiver;

    .line 2907
    new-instance v0, Lo/TC$15;

    invoke-direct {v0, p0}, Lo/TC$15;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->aA:Ljava/lang/Runnable;

    .line 2973
    new-instance v0, Lo/TC$11;

    invoke-direct {v0, p0}, Lo/TC$11;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->aF:Ljava/lang/Runnable;

    .line 3047
    new-instance v0, Lo/TC$13;

    invoke-direct {v0, p0}, Lo/TC$13;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->aD:Landroid/content/BroadcastReceiver;

    .line 3054
    new-instance v0, Lo/TC$14;

    invoke-direct {v0, p0}, Lo/TC$14;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->aG:Landroid/content/BroadcastReceiver;

    .line 3435
    new-instance v0, Lo/TC$17;

    invoke-direct {v0, p0}, Lo/TC$17;-><init>(Lo/TC;)V

    iput-object v0, p0, Lo/TC;->aC:Lo/Du$TaskDescription;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;JLcom/netflix/mediaclient/ui/player/PlayerExtras;)Landroid/os/Bundle;
    .locals 2

    .line 505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_video_id"

    .line 506
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "extra_video_type_string_value"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_play_context"

    .line 508
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CL_START_PLAY_SESSION_ID"

    .line 509
    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "player_extras"

    .line 510
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method private a([Landroid/util/Pair;Ljava/lang/String;Lo/cz;)Lo/Me;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/cz;",
            ")",
            "Lo/Me;"
        }
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2969
    :cond_0
    iget-object p3, p0, Lo/TC;->D:Lo/cz;

    :goto_0
    invoke-interface {p3}, Lo/cz;->u()Lo/cR;

    move-result-object p3

    .line 2970
    new-instance v0, Lo/Me;

    invoke-interface {p3}, Lo/cR;->a()Z

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lo/Me;-><init>([Landroid/util/Pair;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .line 1083
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    .line 1092
    invoke-virtual {p0}, Lo/TC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v0, :cond_1

    .line 1093
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1094
    invoke-static {}, Lo/Kl$ActionBar;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lo/TC;->ac:Z

    if-nez v2, :cond_1

    if-eq v1, p1, :cond_1

    .line 1097
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method

.method private a(IZ)V
    .locals 8

    .line 1503
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1505
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1507
    invoke-virtual {p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1509
    invoke-virtual {v0}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1511
    sget-object v3, Lo/Vq;->b:Lo/Vq;

    invoke-virtual {v3, v1}, Lo/Vq;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1512
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1513
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v4

    if-eqz p2, :cond_0

    .line 1515
    sget-object v0, Lo/Vq;->b:Lo/Vq;

    .line 1516
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p2

    .line 1517
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v3

    int-to-long v4, p1

    .line 1519
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->momentsBySegment()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lo/TC;->o:Lo/UpdateEngine;

    move-object v2, p2

    .line 1515
    invoke-virtual/range {v0 .. v7}, Lo/Vq;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;JLjava/util/Map;Lo/UpdateEngine;)Z

    move-result p1

    .line 1521
    iget-object p2, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {p2, p1}, Lo/Uc;->h(Z)V

    goto :goto_0

    .line 1522
    :cond_0
    instance-of p1, v1, Lo/XO;

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    .line 1523
    check-cast v1, Lo/XO;

    .line 1524
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    invoke-virtual {v0}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    invoke-direct {p1, v2, v3, v5, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;-><init>(JJ)V

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1526
    invoke-virtual {p0}, Lo/TC;->j()V

    .line 1527
    invoke-virtual {v1, p1}, Lo/XO;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1535
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v2

    int-to-long p1, p1

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(J)V

    goto :goto_0

    :cond_2
    int-to-long p1, p1

    .line 1537
    invoke-virtual {v1, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 2

    .line 1737
    iget-object v0, p0, Lo/TC;->z:Lo/TY;

    if-eqz v0, :cond_0

    .line 1738
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/TY;->c(Landroid/graphics/Bitmap;)V

    .line 1740
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1742
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_1
    return-void
.end method

.method private a(Lcom/netflix/mediaclient/media/Language;)V
    .locals 6

    .line 2326
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2330
    :cond_0
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0, p1}, Lo/afA;->e(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    .line 2331
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 2332
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "PlayerFragment"

    if-nez v1, :cond_1

    const-string v2, "Selected subtitle is NONE"

    .line 2335
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 2345
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v0

    .line 2346
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentNccpAudioIndex()I

    move-result v5

    if-eq v0, v5, :cond_2

    const-string v0, "Start change language, get awake clock"

    .line 2352
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "No need to change audio."

    .line 2354
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_4

    .line 2358
    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getNccpOrderNumber()I

    move-result v0

    .line 2359
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentNccpSubtitleIndex()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "No need to change subtitle."

    .line 2366
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_1

    :cond_4
    const-string v0, "Subtitle is off"

    .line 2369
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v3, :cond_5

    const-string v0, "Reloading tracks"

    .line 2374
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    invoke-virtual {p0, p1}, Lo/TC;->e(Lcom/netflix/mediaclient/media/Language;)V

    goto :goto_2

    :cond_5
    const-string p1, "No need to switch tracks"

    .line 2377
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    invoke-virtual {p0}, Lo/TC;->j()V

    .line 2379
    invoke-virtual {p0}, Lo/TC;->R()V

    :goto_2
    return-void
.end method

.method private a(Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 0

    .line 3646
    iput-object p1, p0, Lo/TC;->am:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lo/TC;->m()Lo/AK;

    move-result-object v1

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lo/TC;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    .line 1219
    invoke-direct/range {p0 .. p0}, Lo/TC;->bv()I

    move-result v3

    int-to-long v3, v3

    .line 1220
    invoke-direct/range {p0 .. p0}, Lo/TC;->aV()Z

    move-result v5

    if-eqz v5, :cond_11

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1223
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 1224
    invoke-virtual {v5}, Lo/Tv;->i()Lo/AK;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_3

    .line 1230
    :cond_1
    invoke-virtual {v5}, Lo/Tv;->i()Lo/AK;

    move-result-object v6

    invoke-interface {v6}, Lo/AK;->aa()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p1, :cond_2

    .line 1231
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "Got to loadVideoAndChangeState for content preview with no pin supplied!"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lo/TC;->v()V

    return-void

    .line 1237
    :cond_2
    invoke-virtual {v5}, Lo/Tv;->n()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v6

    .line 1239
    invoke-direct/range {p0 .. p0}, Lo/TC;->bh()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    .line 1241
    iget-object v8, v0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v8}, Lo/Uc;->h()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lo/TC;->h:Lo/Tv;

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lo/TC;->c()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1242
    iget-object v1, v0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v1}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    .line 1243
    iget-object v2, v0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v2}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 1245
    iget-object v6, v0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v6}, Lo/Tv;->n()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v6

    .line 1246
    sget-object v7, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 1247
    invoke-direct/range {p0 .. p0}, Lo/TC;->ba()V

    goto :goto_0

    .line 1249
    :cond_3
    iget-object v8, v0, Lo/TC;->j:Lo/Uc;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lo/Uc;->d(Z)V

    :goto_0
    move-object v14, v2

    move-object v13, v6

    move-object v12, v7

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 1255
    invoke-static {}, Lo/fg;->j()Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_8

    .line 1259
    invoke-direct/range {p0 .. p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v2

    const/4 v8, 0x0

    if-eqz v2, :cond_7

    .line 1260
    invoke-direct/range {p0 .. p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o()Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    move-result-object v2

    .line 1261
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    .line 1262
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1264
    :cond_4
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d()Ljava/lang/String;

    move-result-object v9

    .line 1265
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c()Ljava/lang/String;

    move-result-object v10

    .line 1266
    new-instance v11, Lcom/netflix/mediaclient/media/PreferredLanguageData;

    if-eqz v9, :cond_5

    .line 1268
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->b()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_1

    :cond_5
    move-object v15, v8

    :goto_1
    if-eqz v10, :cond_6

    .line 1270
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_6
    invoke-direct {v11, v9, v15, v10, v8}, Lcom/netflix/mediaclient/media/PreferredLanguageData;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object v8, v11

    .line 1274
    :cond_7
    invoke-virtual {v7, v8}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPreferredLanguage(Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    .line 1277
    :cond_8
    iget-object v2, v0, Lo/TC;->an:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    invoke-virtual {v7, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V

    .line 1278
    iget-object v2, v0, Lo/TC;->ar:Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

    invoke-virtual {v7, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayProgressListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;)V

    .line 1279
    iget-object v2, v0, Lo/TC;->ao:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    invoke-virtual {v7, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setErrorListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V

    .line 1280
    invoke-virtual {v7, v6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setViewInFocus(Z)V

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lo/TC;->ac()Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlaybackBackgroundable(Z)V

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lo/TC;->q()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1285
    invoke-virtual {v0, v6}, Lo/TC;->e(Z)V

    .line 1289
    :cond_9
    invoke-static {}, Lo/fg;->j()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v2

    invoke-virtual {v2}, Lo/Tv;->d()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v2

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v2, v8, :cond_a

    .line 1290
    invoke-virtual {v7, v6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setForceStreamingEnabled(Z)V

    .line 1292
    :cond_a
    instance-of v2, v7, Lo/XO;

    if-eqz v2, :cond_b

    .line 1293
    move-object v2, v7

    check-cast v2, Lo/XO;

    invoke-virtual {v2, v0}, Lo/XO;->setTransitionEndListener(Lo/Bq;)V

    .line 1294
    new-instance v13, Lo/zy;

    invoke-direct {v13}, Lo/zy;-><init>()V

    .line 1295
    new-instance v15, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    .line 1296
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1297
    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {v15, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;-><init>(JJ)V

    .line 1299
    invoke-direct/range {p0 .. p0}, Lo/TC;->bE()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lo/TC;->aS()Lo/Ab;

    move-result-object v10

    iget-object v11, v15, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v17, p1

    invoke-virtual/range {v7 .. v17}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    goto/16 :goto_2

    .line 1300
    :cond_b
    instance-of v2, v7, Lo/XT;

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v6

    invoke-virtual {v6}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 1301
    check-cast v7, Lo/XT;

    invoke-virtual {v7, v0}, Lo/XT;->setTransitionEndListener(Lo/Bq;)V

    .line 1302
    new-instance v15, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    .line 1303
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1304
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v15, v8, v9, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;-><init>(JJ)V

    .line 1306
    sget-object v2, Lo/Vq;->b:Lo/Vq;

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v4

    invoke-virtual {v4}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v4

    invoke-interface {v1}, Lo/AK;->S()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v8, v1

    invoke-virtual {v2, v3, v4, v8, v9}, Lo/Vq;->c(Ljava/lang/Long;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;J)Lo/Bm;

    move-result-object v11

    .line 1307
    invoke-direct/range {p0 .. p0}, Lo/TC;->bE()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lo/TC;->aS()Lo/Ab;

    move-result-object v10

    const/16 v16, 0x1

    move-object/from16 v17, p1

    invoke-virtual/range {v7 .. v17}, Lo/XT;->a(JLo/Ab;Lo/Bm;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    goto/16 :goto_2

    :cond_c
    if-eqz v2, :cond_e

    .line 1309
    check-cast v7, Lo/XT;

    invoke-virtual {v7, v0}, Lo/XT;->setTransitionEndListener(Lo/Bq;)V

    .line 1310
    new-instance v15, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    .line 1311
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    .line 1312
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1313
    invoke-virtual {v8, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {v15, v2, v6, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1316
    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v2

    instance-of v2, v2, Lo/Bm;

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lo/TC;->aj:Z

    if-eqz v2, :cond_d

    .line 1317
    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v1

    check-cast v1, Lo/Bm;

    iput-object v1, v0, Lo/TC;->ai:Lo/Bm;

    goto :goto_2

    .line 1319
    :cond_d
    new-instance v2, Lo/Bm$ActionBar;

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/Bm$ActionBar;-><init>(Ljava/lang/String;)V

    .line 1320
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/Bl$Activity;

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Lo/Bl$Activity;-><init>(J)V

    invoke-virtual {v4}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    move-result-object v2

    .line 1321
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/Bm$ActionBar;->c(Ljava/lang/String;)Lo/Bm$ActionBar;

    move-result-object v1

    .line 1322
    invoke-virtual {v1}, Lo/Bm$ActionBar;->b()Lo/Bm;

    move-result-object v1

    iput-object v1, v0, Lo/TC;->ai:Lo/Bm;

    .line 1323
    invoke-direct/range {p0 .. p0}, Lo/TC;->bE()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lo/TC;->aS()Lo/Ab;

    move-result-object v10

    iget-object v11, v0, Lo/TC;->ai:Lo/Bm;

    const/16 v16, 0x1

    move-object/from16 v17, p1

    invoke-virtual/range {v7 .. v17}, Lo/XT;->a(JLo/Ab;Lo/Bm;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    goto :goto_2

    .line 1328
    :cond_e
    new-instance v15, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    .line 1329
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v15, v8, v9, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;-><init>(JJ)V

    .line 1332
    invoke-direct/range {p0 .. p0}, Lo/TC;->bE()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lo/TC;->aS()Lo/Ab;

    move-result-object v10

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x1

    move-object/from16 v17, p1

    invoke-virtual/range {v7 .. v17}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    .line 1334
    :goto_2
    invoke-direct/range {p0 .. p0}, Lo/TC;->bD()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1335
    sget-object v1, Lo/gV;->d:Lo/gV$StateListAnimator;

    invoke-virtual {v1}, Lo/gV$StateListAnimator;->e()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1336
    iget-object v1, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$Theme;

    .line 1339
    invoke-direct/range {p0 .. p0}, Lo/TC;->bF()Lo/Ug;

    move-result-object v4

    .line 1341
    invoke-direct/range {p0 .. p0}, Lo/TC;->bH()Z

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lo/UP$Theme;-><init>(Lo/Ug;Lo/Tv;Z)V

    .line 1336
    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_3

    .line 1345
    :cond_f
    iget-object v1, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$Resources;

    .line 1348
    invoke-direct/range {p0 .. p0}, Lo/TC;->bF()Lo/Ug;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lo/UP$Resources;-><init>(Lo/Ug;Lo/Tv;)V

    .line 1345
    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_3

    .line 1355
    :cond_10
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "No Videoview to start with"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lo/TC;->v()V

    :cond_11
    :goto_3
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lo/TC;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/ref/WeakReference;Lo/UP;)V
    .locals 2

    .line 3581
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ti;

    if-eqz p1, :cond_2

    .line 3583
    instance-of v0, p2, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 3584
    sget-object p2, Lo/Tk$Activity;->a:Lo/Tk$Activity;

    invoke-virtual {p1, p2}, Lo/Ti;->a(Lo/Tk;)V

    goto :goto_0

    .line 3585
    :cond_0
    instance-of v0, p2, Lo/UP$ActionBar;

    if-eqz v0, :cond_1

    .line 3586
    invoke-virtual {p0}, Lo/TC;->X()V

    .line 3587
    new-instance v0, Lo/Tk$TaskDescription;

    check-cast p2, Lo/UP$ActionBar;

    invoke-virtual {p2}, Lo/UP$ActionBar;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lo/Tk$TaskDescription;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lo/Ti;->a(Lo/Tk;)V

    goto :goto_0

    .line 3589
    :cond_1
    new-instance p2, Lo/Tk$TaskDescription;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p2, v1, v0}, Lo/Tk$TaskDescription;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Lo/Ti;->a(Lo/Tk;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZZILcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    .line 3346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playable to play next: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayerFragment"

    invoke-static {v3, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    invoke-interface/range {p1 .. p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "PlayableId is null - skip playback"

    .line 3350
    invoke-static {v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 3356
    iget-object v2, v7, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v2}, Lo/Uc;->f()V

    .line 3359
    :cond_1
    iget-object v2, v7, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v2}, Lo/Uc;->i()I

    move-result v13

    .line 3361
    invoke-virtual/range {p0 .. p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 3362
    iput-boolean v2, v7, Lo/TC;->ac:Z

    .line 3363
    iget-object v3, v7, Lo/TC;->o:Lo/UpdateEngine;

    const-class v4, Lo/UP;

    sget-object v5, Lo/UP$Matrix;->e:Lo/UP$Matrix;

    invoke-virtual {v3, v4, v5}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    const-string v3, ""

    .line 3364
    invoke-interface {v8, v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->c(Ljava/lang/String;)V

    .line 3365
    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 3371
    invoke-interface/range {p1 .. p1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface/range {p1 .. p1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_0
    const/16 v18, 0x0

    iget-object v2, v7, Lo/TC;->ae:Lcom/netflix/cl/model/AppView;

    .line 3375
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aw()J

    move-result-wide v20

    iget v4, v7, Lo/TC;->ag:F

    iget-object v6, v7, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-object v9, v3

    move/from16 v10, p6

    move-object/from16 v17, p7

    move-object/from16 v19, v2

    move/from16 v22, v4

    move-object/from16 v23, v6

    invoke-direct/range {v9 .. v23}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;)V

    .line 3379
    invoke-direct/range {p0 .. p0}, Lo/TC;->bx()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3380
    iget-object v2, v7, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v2, v5}, Lo/Uc;->a(Z)V

    .line 3381
    iget-object v2, v7, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v2, v5}, Lo/Uc;->e(Z)V

    .line 3382
    iget-object v2, v7, Lo/TC;->j:Lo/Uc;

    sget-object v4, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->a:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    iput-object v4, v2, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 3384
    iget-object v2, v7, Lo/TC;->l:Lo/Tv;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lo/Tv;->i()Lo/AK;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3385
    iget-object v2, v7, Lo/TC;->l:Lo/Tv;

    invoke-virtual {v2}, Lo/Tv;->i()Lo/AK;

    move-result-object v2

    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3387
    :cond_3
    invoke-direct {v7, v3}, Lo/TC;->a(Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    .line 3388
    invoke-interface/range {p1 .. p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v7, Lo/TC;->l:Lo/Tv;

    if-eqz v2, :cond_4

    iget-object v4, v7, Lo/TC;->J:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 3389
    iget-object v0, v7, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    new-instance v3, Lo/UP$BroadcastReceiver;

    invoke-direct {v3, v2}, Lo/UP$BroadcastReceiver;-><init>(Lo/Tv;)V

    invoke-virtual {v0, v1, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 3390
    iget-object v0, v7, Lo/TC;->l:Lo/Tv;

    invoke-virtual {v0}, Lo/Tv;->k()Lo/Bc;

    move-result-object v1

    iget-object v2, v7, Lo/TC;->J:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iget-object v0, v7, Lo/TC;->l:Lo/Tv;

    .line 3392
    invoke-virtual {v0}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    iget-object v0, v7, Lo/TC;->l:Lo/Tv;

    .line 3393
    invoke-virtual {v0}, Lo/Tv;->b()I

    move-result v4

    iget-object v0, v7, Lo/TC;->l:Lo/Tv;

    .line 3394
    invoke-virtual {v0}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v5

    iget-object v6, v7, Lo/TC;->K:Lo/Tv;

    move-object/from16 v0, p0

    .line 3390
    invoke-direct/range {v0 .. v6}, Lo/TC;->a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    .line 3396
    iget-object v0, v7, Lo/TC;->ai:Lo/Bm;

    if-eqz v0, :cond_a

    .line 3397
    sget-object v0, Lo/UL;->c:Lo/UL;

    iget-object v1, v7, Lo/TC;->ai:Lo/Bm;

    invoke-virtual {v1}, Lo/Bm;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    check-cast v2, Lo/XT;

    const/4 v3, 0x0

    iget-object v4, v7, Lo/TC;->l:Lo/Tv;

    move/from16 v5, p6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lo/UL;->e(Ljava/lang/String;Lo/XT;Lo/Tv;Lo/Tv;ILcom/netflix/mediaclient/servicemgr/PlayContext;)Z

    const/4 v0, 0x0

    .line 3398
    iput-object v0, v7, Lo/TC;->J:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 3399
    iput-object v0, v7, Lo/TC;->K:Lo/Tv;

    .line 3400
    iput-object v0, v7, Lo/TC;->l:Lo/Tv;

    goto/16 :goto_2

    .line 3403
    :cond_4
    iget-object v2, v7, Lo/TC;->l:Lo/Tv;

    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    .line 3404
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatch in the next episode to play "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lo/TC;->l:Lo/Tv;

    invoke-virtual {v5}, Lo/Tv;->i()Lo/AK;

    move-result-object v5

    invoke-interface {v5}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " playable in postplay is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 3406
    :cond_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlayNext button pressed before data fetched "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lo/TC;->l:Lo/Tv;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " videoMismatch :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 3408
    :goto_1
    iget-object v2, v7, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3409
    invoke-direct/range {p0 .. p0}, Lo/TC;->aQ()Lo/TU;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/TU;

    .line 3410
    invoke-interface {v2, v0, v1, v8, v3}, Lo/TU;->e(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_2

    .line 3412
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lo/TC;->v()V

    .line 3413
    invoke-virtual/range {p0 .. p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-static {v2, v0, v1, v8, v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_2

    .line 3417
    :cond_7
    iget-object v2, v7, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3418
    invoke-direct/range {p0 .. p0}, Lo/TC;->aQ()Lo/TU;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/TU;

    .line 3419
    invoke-interface {v2, v0, v1, v8, v3}, Lo/TU;->e(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_2

    .line 3421
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lo/TC;->v()V

    .line 3422
    invoke-virtual/range {p0 .. p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-static {v2, v0, v1, v8, v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_2

    .line 3426
    :cond_9
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "SPY-15580 - getNetflixActivity() is null in playNextVideoFromPostPlay"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    const-string v12, "PlayerFragment"

    const-string v1, "handleVideoDetailsResponse"

    .line 3650
    invoke-static {v12, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    invoke-virtual/range {p0 .. p0}, Lo/TC;->l()Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_19

    if-nez v8, :cond_0

    goto/16 :goto_b

    .line 3660
    :cond_0
    invoke-direct/range {p0 .. p1}, Lo/TC;->e(Lo/Bc;)V

    .line 3662
    invoke-virtual/range {p0 .. p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_1

    .line 3665
    invoke-direct/range {p0 .. p0}, Lo/TC;->bA()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3666
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3667
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object/from16 v1, v16

    :goto_0
    if-nez v1, :cond_3

    .line 3671
    iget-object v1, v0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PlayerLite"

    goto :goto_1

    :cond_2
    const-string v1, "Default"

    :cond_3
    :goto_1
    move-object v5, v1

    .line 3679
    invoke-virtual/range {p0 .. p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3680
    iget-object v1, v0, Lo/TC;->i:Lo/Tv;

    if-eqz v1, :cond_4

    invoke-interface/range {p1 .. p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lo/TC;->m()Lo/AK;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v17, 0x1

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    .line 3684
    :goto_2
    new-instance v7, Lo/Tv;

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v13, v7

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lo/Tv;-><init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    iput-object v13, v0, Lo/TC;->i:Lo/Tv;

    .line 3687
    iget-object v1, v0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lo/Uc;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v1, v16

    goto :goto_3

    :cond_5
    move-object v1, v11

    :goto_3
    iput-object v1, v0, Lo/TC;->h:Lo/Tv;

    .line 3688
    iget-object v1, v0, Lo/TC;->h:Lo/Tv;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 3689
    :goto_4
    iget-object v2, v0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v2, v1}, Lo/Uc;->d(Z)V

    if-eqz v15, :cond_9

    .line 3693
    iget-boolean v1, v0, Lo/TC;->aj:Z

    if-eqz v1, :cond_7

    .line 3694
    iget-object v1, v0, Lo/TC;->am:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    goto :goto_5

    :cond_7
    const-string v1, "player_extras"

    .line 3696
    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    :goto_5
    if-eqz v1, :cond_8

    .line 3699
    iget-object v2, v0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h()Z

    move-result v3

    invoke-virtual {v2, v3}, Lo/Tv;->e(Z)V

    .line 3700
    iget-object v2, v0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Lo/Tv;->b(Z)V

    if-eqz v11, :cond_9

    .line 3702
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h()Z

    move-result v2

    invoke-virtual {v11, v2}, Lo/Tv;->e(Z)V

    .line 3703
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f()Z

    move-result v1

    invoke-virtual {v11, v1}, Lo/Tv;->b(Z)V

    goto :goto_6

    .line 3706
    :cond_8
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "Player extras should not be null in PlayerFragment "

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 3711
    :cond_9
    :goto_6
    invoke-static/range {p1 .. p1}, Lo/ia;->b(Lo/Bc;)Lo/agg;

    move-result-object v1

    iput-object v1, v0, Lo/TC;->U:Lo/agg;

    .line 3713
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-object/from16 v2, p2

    if-ne v2, v1, :cond_a

    .line 3714
    invoke-virtual/range {p0 .. p0}, Lo/TC;->K()Ljava/lang/String;

    move-result-object v1

    .line 3715
    sget-object v2, Lo/Rs;->e:Lo/Rs;

    invoke-virtual {v2, v1}, Lo/Rs;->e(Ljava/lang/String;)V

    .line 3717
    invoke-interface/range {p1 .. p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    .line 3716
    invoke-static {v1, v2}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object v1

    .line 3720
    invoke-interface/range {p1 .. p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    if-eqz v1, :cond_a

    .line 3722
    iget-object v3, v0, Lo/TC;->i:Lo/Tv;

    iget v1, v1, Lo/Aa;->mBookmarkInSecond:I

    invoke-interface {v2}, Lo/AK;->R()I

    move-result v2

    invoke-static {v1, v2}, Lo/aeC;->c(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lo/Tv;->a(I)V

    .line 3726
    :cond_a
    iget-object v1, v0, Lo/TC;->z:Lo/TY;

    if-eqz v1, :cond_b

    .line 3727
    invoke-virtual {v1, v8}, Lo/TY;->e(Lo/Bc;)V

    .line 3731
    :cond_b
    iget-object v1, v0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v1}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/RL;->c(Ljava/lang/String;)Lo/Bi;

    move-result-object v1

    .line 3732
    invoke-virtual {v0, v1}, Lo/TC;->c(Lo/Bi;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3733
    iget-object v2, v0, Lo/TC;->i:Lo/Tv;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v2, v3}, Lo/Tv;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 3734
    invoke-interface {v1}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/TC;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 3736
    invoke-virtual/range {p0 .. p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    .line 3737
    iget-object v1, v0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v1, :cond_c

    .line 3738
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b()V

    :cond_c
    return-void

    .line 3743
    :cond_d
    iget-object v1, v0, Lo/TC;->i:Lo/Tv;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v1, v2}, Lo/Tv;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 3747
    :cond_e
    iget-object v1, v0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lo/Uc;->h()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v2}, Lo/Tv;->k()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v2}, Lo/Tv;->k()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->videoMoments()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_f
    invoke-interface/range {p1 .. p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface/range {p1 .. p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_7
    const/4 v2, 0x1

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v1, v2}, Lo/Uc;->c(Z)V

    .line 3748
    iget-object v1, v0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lo/Uc;->h()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lo/TC;->h:Lo/Tv;

    if-eqz v1, :cond_11

    .line 3749
    invoke-virtual {v1}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3750
    iget-object v1, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$PendingIntent;

    iget-object v4, v0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v4}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v4

    invoke-direct {v3, v4}, Lo/UP$PendingIntent;-><init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_9

    :cond_11
    if-eqz v10, :cond_12

    .line 3753
    iget-object v1, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$PendingIntent;

    invoke-direct {v3, v10}, Lo/UP$PendingIntent;-><init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_12
    :goto_9
    if-eqz v17, :cond_14

    .line 3757
    invoke-virtual/range {p0 .. p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3758
    invoke-virtual/range {p0 .. p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayContext(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    const-string v1, "fetching details of a same playable id with different context"

    .line 3759
    invoke-static {v12, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    .line 3764
    :cond_14
    iget-object v1, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$Application;

    iget-object v4, v0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v4}, Lo/Uc;->h()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v0, Lo/TC;->h:Lo/Tv;

    goto :goto_a

    :cond_15
    iget-object v4, v0, Lo/TC;->i:Lo/Tv;

    :goto_a
    iget-object v5, v0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v5}, Lo/Uc;->g()Z

    move-result v5

    iget-object v6, v0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v6}, Lo/Uc;->h()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v6}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v16

    :cond_16
    move-object/from16 v6, v16

    iget-boolean v7, v0, Lo/TC;->aj:Z

    xor-int/2addr v7, v14

    invoke-direct {v3, v4, v5, v6, v7}, Lo/UP$Application;-><init>(Lo/Tv;ZLjava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 3775
    invoke-direct/range {p0 .. p0}, Lo/TC;->bB()V

    .line 3777
    iget-object v1, v0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3778
    iget-object v1, v0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v1, v14}, Lo/Tv;->b(Z)V

    .line 3779
    invoke-direct/range {p0 .. p0}, Lo/TC;->aR()V

    return-void

    .line 3783
    :cond_17
    invoke-direct/range {p0 .. p0}, Lo/TC;->bx()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lo/TC;->h:Lo/Tv;

    if-eqz v1, :cond_18

    .line 3784
    sget-object v1, Lo/UL;->c:Lo/UL;

    iget-object v2, v0, Lo/TC;->ai:Lo/Bm;

    invoke-virtual {v2}, Lo/Bm;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    check-cast v3, Lo/XT;

    iget-object v4, v0, Lo/TC;->h:Lo/Tv;

    iget-object v5, v0, Lo/TC;->i:Lo/Tv;

    move/from16 v6, p4

    move-object/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lo/UL;->e(Ljava/lang/String;Lo/XT;Lo/Tv;Lo/Tv;ILcom/netflix/mediaclient/servicemgr/PlayContext;)Z

    move-result v1

    iput-boolean v1, v0, Lo/TC;->aj:Z

    .line 3788
    :cond_18
    invoke-direct/range {p0 .. p0}, Lo/TC;->br()V

    return-void

    :cond_19
    :goto_b
    new-array v1, v14, [Ljava/lang/Object;

    .line 3652
    invoke-virtual/range {p0 .. p0}, Lo/TC;->isAdded()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "handleVideoDetailsResponse isAdded=%b"

    invoke-static {v12, v2, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3653
    iget-object v1, v0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v1, :cond_1a

    .line 3654
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b()V

    :cond_1a
    return-void
.end method

.method static synthetic a(Lo/TC;I)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lo/TC;->j(I)V

    return-void
.end method

.method static synthetic a(Lo/TC;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/TC;->e(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic a(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    .line 255
    invoke-direct/range {p0 .. p6}, Lo/TC;->c(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method

.method static synthetic a(Lo/TC;Lo/Tk;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/TC;->b(Lo/Tk;)V

    return-void
.end method

.method static synthetic a(Lo/TC;ZLo/Tv;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/TC;->e(ZLo/Tv;)V

    return-void
.end method

.method private synthetic a(Lo/Ti;Ljava/lang/Throwable;)V
    .locals 2

    .line 3621
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Error from pin dialog"

    invoke-interface {v0, v1, p2}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3622
    invoke-virtual {p1}, Lo/Ti;->dismiss()V

    .line 3623
    invoke-virtual {p0}, Lo/TC;->v()V

    return-void
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x60

    if-ne p1, v2, :cond_1

    .line 2761
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "PlayerFragment"

    const-string p2, "A button pressed"

    .line 2764
    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object p1, p0, Lo/TC;->as:Landroid/view/View$OnClickListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v1

    :cond_1
    const/16 p2, 0x15

    if-eq p1, p2, :cond_d

    const/16 p2, 0x66

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x16

    if-eq p1, p2, :cond_c

    const/16 p2, 0x67

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p2, 0x5d

    if-ne p1, p2, :cond_5

    .line 2774
    invoke-direct {p0}, Lo/TC;->bk()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2775
    invoke-virtual {p0}, Lo/TC;->a()V

    :cond_4
    return v1

    :cond_5
    const/16 p2, 0x5c

    if-ne p1, p2, :cond_7

    .line 2779
    invoke-direct {p0}, Lo/TC;->bk()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2780
    invoke-virtual {p0}, Lo/TC;->j()V

    :cond_6
    return v1

    :cond_7
    const/16 p2, 0x29

    if-ne p1, p2, :cond_9

    .line 2784
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_8

    const/16 p1, 0x65

    invoke-direct {p0, p1}, Lo/TC;->h(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    const/16 p2, 0x13

    if-ne p1, p2, :cond_a

    .line 2786
    invoke-direct {p0, v1}, Lo/TC;->h(I)Z

    move-result p1

    return p1

    :cond_a
    const/16 p2, 0x14

    if-ne p1, p2, :cond_b

    const/4 p1, -0x1

    .line 2788
    invoke-direct {p0, p1}, Lo/TC;->h(I)Z

    move-result p1

    return p1

    :cond_b
    return v0

    .line 2771
    :cond_c
    :goto_0
    invoke-virtual {p0}, Lo/TC;->W_()V

    return v1

    .line 2768
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lo/TC;->V_()V

    return v1
.end method

.method static synthetic a(Lo/TC;)Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lo/TC;->aj:Z

    return p0
.end method

.method static synthetic a(Lo/UP;)Z
    .locals 0

    invoke-static {p0}, Lo/TC;->d(Lo/UP;)Z

    move-result p0

    return p0
.end method

.method static synthetic aH()I
    .locals 1

    .line 255
    sget v0, Lo/TC;->x:I

    return v0
.end method

.method private aI()V
    .locals 2

    .line 998
    iget-object v0, p0, Lo/TC;->L:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v1, p0, Lo/TC;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 1003
    iput-object v0, p0, Lo/TC;->L:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method

.method private aJ()V
    .locals 8

    .line 950
    iget-boolean v0, p0, Lo/TC;->al:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 953
    iput-boolean v0, p0, Lo/TC;->al:Z

    .line 955
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "player_extras"

    .line 956
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    if-eqz v6, :cond_1

    .line 957
    iget-object v1, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v6, v2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b(I)V

    :cond_1
    const-string v1, "extra_video_id"

    .line 961
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, "extra_video_type_string_value"

    .line 962
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    const-string v1, "extra_play_context"

    .line 963
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    sget-object v7, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v2, p0

    .line 960
    invoke-virtual/range {v2 .. v7}, Lo/TC;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private aK()V
    .locals 5

    const-string v0, "PlayerFragment"

    const-string v1, "onPlatformReady"

    .line 586
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    invoke-virtual {v1}, Lo/CameraPrewarmService;->b()Lo/pz;

    move-result-object v1

    iput-object v1, p0, Lo/TC;->T:Lo/pz;

    .line 588
    iget-object v1, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    invoke-virtual {v1}, Lo/CameraPrewarmService;->a()Lo/zN;

    move-result-object v1

    iput-object v1, p0, Lo/TC;->V:Lo/zN;

    .line 589
    iget-object v1, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    invoke-virtual {v1}, Lo/CameraPrewarmService;->e()Lo/cz;

    move-result-object v1

    iput-object v1, p0, Lo/TC;->D:Lo/cz;

    .line 590
    iget-object v1, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    invoke-virtual {v1}, Lo/CameraPrewarmService;->f()Lo/zF;

    move-result-object v1

    iput-object v1, p0, Lo/TC;->Y:Lo/zF;

    .line 591
    new-instance v1, Lo/Zx;

    invoke-direct {v1}, Lo/Zx;-><init>()V

    invoke-virtual {v1}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/hW;

    iput-object v1, p0, Lo/TC;->ab:Lo/hW;

    .line 592
    iget-object v1, p0, Lo/TC;->T:Lo/pz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/TC;->D:Lo/cz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/TC;->Y:Lo/zF;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onPlatformReady openSession."

    .line 600
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lo/TC;->Q()V

    return-void

    .line 593
    :cond_1
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerFragment mPlayerAgent isNull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/TC;->T:Lo/pz;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConfig isNull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/TC;->D:Lo/cz;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mErrorHandler isNull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/TC;->Y:Lo/zF;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lo/TC;->aM()V

    return-void
.end method

.method private aL()V
    .locals 4

    .line 983
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    new-instance v1, Lo/TC$1;

    invoke-direct {v1, p0}, Lo/TC$1;-><init>(Lo/TC;)V

    iput-object v1, p0, Lo/TC;->L:Landroid/content/BroadcastReceiver;

    .line 993
    iget-object v1, p0, Lo/TC;->L:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_RELOAD_VIDEO"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private aM()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Lo/TC;->B()V

    goto :goto_0

    .line 1011
    :cond_0
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lo/TC;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1014
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private aN()V
    .locals 2

    .line 1059
    invoke-virtual {p0}, Lo/TC;->a()V

    .line 1060
    invoke-direct {p0}, Lo/TC;->bd()V

    .line 1062
    iget-object v0, p0, Lo/TC;->z:Lo/TY;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1063
    invoke-virtual {v0, v1}, Lo/TY;->a(I)V

    :cond_0
    return-void
.end method

.method private aO()V
    .locals 0

    return-void
.end method

.method private aP()Z
    .locals 4

    .line 1037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1040
    :try_start_0
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/TC;->k()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error checking Playback Model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PlayerFragment"

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method private aQ()Lo/TU;
    .locals 2

    .line 1021
    invoke-virtual {p0}, Lo/TC;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1023
    instance-of v1, v0, Lo/TU;

    if-eqz v1, :cond_0

    .line 1024
    check-cast v0, Lo/TU;

    return-object v0

    .line 1026
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private aR()V
    .locals 3

    const-string v0, "PlayerFragment"

    const-string v1, "Playback verified - completing init process..."

    .line 1198
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-virtual {p0}, Lo/TC;->ab()Lo/AK;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1202
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid state, continue init after play verify on a null asset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 1203
    invoke-direct {p0}, Lo/TC;->aM()V

    return-void

    .line 1207
    :cond_0
    invoke-direct {p0}, Lo/TC;->bq()V

    .line 1209
    invoke-direct {p0}, Lo/TC;->aU()V

    return-void
.end method

.method private aS()Lo/Ab;
    .locals 1

    .line 1402
    iget-object v0, p0, Lo/TC;->Q:Lo/Ab;

    if-nez v0, :cond_0

    .line 1403
    iget-object v0, p0, Lo/TC;->O:Lo/Ah;

    invoke-interface {v0}, Lo/Ah;->e()Lo/Ab;

    move-result-object v0

    iput-object v0, p0, Lo/TC;->Q:Lo/Ab;

    .line 1405
    :cond_0
    iget-object v0, p0, Lo/TC;->Q:Lo/Ab;

    return-object v0
.end method

.method private aT()V
    .locals 2

    .line 1412
    iget-object v0, p0, Lo/TC;->Q:Lo/Ab;

    if-eqz v0, :cond_1

    .line 1413
    iget-object v1, p0, Lo/TC;->O:Lo/Ah;

    if-eqz v1, :cond_0

    .line 1414
    invoke-interface {v1, v0}, Lo/Ah;->e(Lo/Ab;)V

    goto :goto_0

    .line 1416
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "releaseVideoGroup but session manager is null"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 1418
    iput-object v0, p0, Lo/TC;->Q:Lo/Ab;

    :cond_1
    return-void
.end method

.method private aU()V
    .locals 1

    const/4 v0, 0x0

    .line 1213
    invoke-direct {p0, v0}, Lo/TC;->a(Ljava/lang/String;)V

    return-void
.end method

.method private aV()Z
    .locals 4

    .line 1362
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PlayerFragment"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1367
    :cond_0
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "trying to load a video with a null playable."

    .line 1369
    invoke-static {v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1373
    :cond_1
    invoke-virtual {p0}, Lo/TC;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1374
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->c(Ljava/lang/String;)Lo/Bi;

    move-result-object v0

    .line 1375
    invoke-virtual {p0, v0}, Lo/TC;->c(Lo/Bi;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "continue with offline player"

    .line 1376
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "switching to streaming player"

    .line 1378
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v0, v3}, Lo/Tv;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 1380
    invoke-direct {p0}, Lo/TC;->bu()V

    .line 1383
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lo/TC;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Raising no connectivity warning"

    .line 1384
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-direct {p0}, Lo/TC;->bo()V

    return v1

    .line 1393
    :cond_4
    invoke-direct {p0}, Lo/TC;->bm()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Network check fails"

    .line 1394
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_1
    const-string v0, "fragment is not valid. "

    .line 1363
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private aW()V
    .locals 3

    const-string v0, "PlayerFragment"

    const-string v1, "stopPlayback"

    .line 1917
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    iget-object v1, v1, Lo/Uc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Start play is in progress and user canceled playback"

    .line 1920
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_0
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    iget-object v0, v0, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    iget-object v0, v0, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->a:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_2

    .line 1926
    :cond_1
    invoke-direct {p0}, Lo/TC;->bu()V

    .line 1927
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 1929
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_2

    .line 1930
    invoke-virtual {p0}, Lo/TC;->L()V

    :cond_2
    const/4 v0, 0x0

    .line 1933
    iput-object v0, p0, Lo/TC;->i:Lo/Tv;

    .line 1934
    iget-object v0, p0, Lo/TC;->z:Lo/TY;

    if-eqz v0, :cond_3

    .line 1935
    invoke-virtual {v0}, Lo/TY;->b()V

    :cond_3
    return-void
.end method

.method private aX()V
    .locals 1

    .line 1878
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/TC;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 1879
    invoke-direct {p0}, Lo/TC;->aW()V

    .line 1880
    invoke-virtual {p0}, Lo/TC;->P()V

    return-void
.end method

.method private aY()V
    .locals 3

    const-string v0, "PlayerFragment"

    const-string v1, "cleanupAndExit"

    .line 1897
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    invoke-direct {p0}, Lo/TC;->aX()V

    .line 1899
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    iput-object v2, v1, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    const-string v1, "cleanupAndExit calling finish"

    .line 1901
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1903
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1904
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lo/TC;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method private aZ()V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "PlayerFragment"

    const-string v2, "handleEveryPlaybackStart."

    .line 1643
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v2, v0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1646
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v4

    long-to-int v2, v4

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1648
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    .line 1651
    invoke-virtual {v2}, Lo/Tv;->e()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    move-wide v7, v4

    :goto_1
    cmp-long v9, v7, v4

    if-nez v9, :cond_2

    .line 1653
    iget-object v4, v0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1656
    invoke-direct/range {p0 .. p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1658
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b()J

    move-result-wide v7

    :cond_2
    const/4 v12, 0x2

    new-array v4, v12, [Ljava/lang/Object;

    .line 1661
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v4, v13

    const-string v5, "handleEveryPlaybackStart, position: %d,  duration: %d"

    invoke-static {v1, v5, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1663
    iget-object v4, v0, Lo/TC;->j:Lo/Uc;

    iput-boolean v13, v4, Lo/Uc;->d:Z

    .line 1666
    invoke-direct/range {p0 .. p0}, Lo/TC;->bC()V

    .line 1667
    iget-object v14, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v15, Lo/UP;

    new-instance v11, Lo/UP$CursorFactory;

    long-to-int v7, v7

    iget-object v8, v0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v4

    invoke-virtual {v4}, Lo/Uc;->m()Z

    move-result v9

    iget-object v4, v0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    .line 1674
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->V()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget-object v4, v0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->V()F

    move-result v4

    move v10, v4

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    :goto_2
    iget-object v4, v0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    .line 1675
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d()F

    move-result v16

    move-object v4, v11

    move-object v5, v2

    move-object v12, v11

    move/from16 v11, v16

    invoke-direct/range {v4 .. v11}, Lo/UP$CursorFactory;-><init>(Lo/Tv;IILcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;ZFF)V

    .line 1667
    invoke-virtual {v14, v15, v12}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1680
    iget-object v4, v0, Lo/TC;->j:Lo/Uc;

    iget-object v4, v4, Lo/Uc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1682
    invoke-direct/range {p0 .. p0}, Lo/TC;->bg()V

    .line 1684
    iget-object v4, v0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1685
    iget-object v4, v0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1686
    iget-object v4, v0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    sget-object v5, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;->c:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->d(Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;)V

    .line 1690
    :cond_4
    iget-object v4, v0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1691
    iget-object v2, v0, Lo/TC;->z:Lo/TY;

    const-string v4, "TODO(player-lite) - need title"

    invoke-virtual {v2, v4}, Lo/TY;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 1692
    :cond_5
    iget-object v4, v0, Lo/TC;->z:Lo/TY;

    if-eqz v4, :cond_7

    .line 1693
    invoke-virtual {v2}, Lo/Tv;->i()Lo/AK;

    move-result-object v4

    .line 1694
    invoke-interface {v4}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v5

    .line 1696
    invoke-virtual/range {p0 .. p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1697
    invoke-interface {v4}, Lo/AK;->d()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1698
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->gE:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-interface {v4}, Lo/AK;->V()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-interface {v4}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1700
    :cond_6
    iget-object v4, v0, Lo/TC;->z:Lo/TY;

    invoke-virtual {v4, v5}, Lo/TY;->c(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v2}, Lo/Tv;->k()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/TC;->b(Ljava/lang/String;)V

    .line 1704
    :cond_7
    :goto_3
    iget-object v2, v0, Lo/TC;->j:Lo/Uc;

    iget-boolean v2, v2, Lo/Uc;->a:Z

    if-eqz v2, :cond_8

    const-string v2, "Dismissing buffering progress bar..."

    .line 1705
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v1, v0, Lo/TC;->j:Lo/Uc;

    iput-boolean v3, v1, Lo/Uc;->g:Z

    .line 1707
    iput-boolean v3, v1, Lo/Uc;->h:Z

    .line 1708
    iput-boolean v3, v1, Lo/Uc;->a:Z

    .line 1710
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lo/TC;->T()V

    .line 1712
    iput-boolean v3, v0, Lo/TC;->I:Z

    .line 1714
    invoke-direct/range {p0 .. p0}, Lo/TC;->be()V

    .line 1719
    iget-object v1, v0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->d:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne v1, v2, :cond_9

    iget-boolean v1, v0, Lo/TC;->al:Z

    if-nez v1, :cond_9

    .line 1720
    iget-object v1, v0, Lo/TC;->S:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lo/NfcB;->d()Lio/reactivex/Scheduler;

    move-result-object v2

    new-instance v3, Lo/TO;

    invoke-direct {v3, v0}, Lo/TO;-><init>(Lo/TC;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_9
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lo/ScrollBarDrawable$ActionBar;
    .locals 10

    .line 3870
    sget-object v0, Lo/TC$19;->e:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    const/4 v1, -0x1

    goto :goto_0

    .line 3896
    :pswitch_0
    sget-object p1, Lo/gf;->e:Lo/gf$TaskDescription;

    invoke-virtual {p1}, Lo/gf$TaskDescription;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3897
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aX:I

    .line 3898
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aO:I

    goto :goto_0

    .line 3900
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mI:I

    .line 3901
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mK:I

    goto :goto_0

    .line 3892
    :pswitch_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mz:I

    .line 3893
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mJ:I

    goto :goto_0

    .line 3888
    :pswitch_2
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mz:I

    .line 3889
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mE:I

    goto :goto_0

    .line 3884
    :pswitch_3
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mz:I

    .line 3885
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mG:I

    goto :goto_0

    .line 3876
    :pswitch_4
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mz:I

    .line 3877
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3878
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mt:I

    goto :goto_0

    .line 3880
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mG:I

    goto :goto_0

    .line 3872
    :pswitch_5
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->np:I

    .line 3873
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mI:I

    move v9, v1

    move v1, p1

    move p1, v9

    :goto_0
    const/4 v2, 0x0

    if-eq v1, v0, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 3910
    :cond_2
    invoke-virtual {p0, p1}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3911
    invoke-virtual {p0, v1}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3912
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3913
    new-instance p1, Lo/hK;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, v0}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lo/TC;->aF:Ljava/lang/Runnable;

    move-object v3, p1

    move-object v7, v8

    invoke-direct/range {v3 .. v8}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3914
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    iget-object v1, p0, Lo/TC;->B:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v2

    :cond_3
    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(J)V
    .locals 6

    .line 3109
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3113
    :cond_0
    invoke-virtual {p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3118
    :cond_1
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3119
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object v1

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v2

    invoke-interface {v2}, Lo/AK;->ab()Z

    move-result v2

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v3

    invoke-interface {v3}, Lo/AK;->aa()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lo/acR;->d(ZZ)V

    .line 3121
    :cond_2
    invoke-direct {p0}, Lo/TC;->bk()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3122
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lo/Tv;->a(I)V

    .line 3125
    :cond_3
    invoke-direct {p0, p1, p2}, Lo/TC;->e(J)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 3126
    invoke-virtual {v0, v1}, Lo/Tv;->a(Z)V

    .line 3128
    sget-object v1, Lo/gV;->d:Lo/gV$StateListAnimator;

    invoke-virtual {v1}, Lo/gV$StateListAnimator;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3129
    iget-object v1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$Theme;

    .line 3132
    invoke-direct {p0}, Lo/TC;->bF()Lo/Ug;

    move-result-object v4

    .line 3134
    invoke-direct {p0}, Lo/TC;->bH()Z

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lo/UP$Theme;-><init>(Lo/Ug;Lo/Tv;Z)V

    .line 3129
    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 3140
    :cond_4
    iget-object v1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$Resources;

    .line 3143
    invoke-direct {p0}, Lo/TC;->bF()Lo/Ug;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lo/UP$Resources;-><init>(Lo/Ug;Lo/Tv;)V

    .line 3140
    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 3151
    :cond_5
    :goto_0
    iget-object v1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$DatabaseErrorHandler;

    invoke-virtual {v0}, Lo/Tv;->e()J

    move-result-wide v4

    invoke-direct {v3, p1, p2, v4, v5}, Lo/UP$DatabaseErrorHandler;-><init>(JJ)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 3154
    invoke-direct {p0, p1, p2}, Lo/TC;->d(J)V

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 3948
    invoke-virtual {p0}, Lo/TC;->c()Z

    return-void
.end method

.method private b(Lcom/netflix/model/leafs/TimeCodesData;J)V
    .locals 2

    .line 3195
    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v0

    invoke-direct {p0}, Lo/TC;->bw()I

    move-result v1

    invoke-static {v0, p2, p3, v1}, Lo/Uu;->b(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3196
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class p2, Lo/UP;

    sget-object p3, Lo/UP$IntentFilter;->d:Lo/UP$IntentFilter;

    invoke-virtual {p1, p2, p3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 3197
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v0

    invoke-direct {p0}, Lo/TC;->bw()I

    move-result v1

    invoke-static {v0, p2, p3, v1}, Lo/Uu;->a(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3198
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class p2, Lo/UP;

    sget-object p3, Lo/UP$AssetManager;->c:Lo/UP$AssetManager;

    invoke-virtual {p1, p2, p3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 3199
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->skipContent()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->skipContent()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lo/TC;->bw()I

    move-result v1

    invoke-static {v0, p2, p3, v1}, Lo/Uu;->e(Ljava/util/List;JI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3200
    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->skipContent()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lo/TC;->bw()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lo/Uu;->d(Ljava/util/List;JI)Lcom/netflix/model/leafs/blades/SkipContentData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3201
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/SkipContentData;->label()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3202
    iget-object p2, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class p3, Lo/UP;

    new-instance v0, Lo/UP$PackageItemInfo;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/SkipContentData;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/SkipContentData;->end()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lo/UP$PackageItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, p3, v0}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 3205
    :cond_2
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class p2, Lo/UP;

    sget-object p3, Lo/UP$SharedPreferences;->d:Lo/UP$SharedPreferences;

    invoke-virtual {p1, p2, p3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 1725
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PlayerFragment"

    const-string v0, "box short URL was empty"

    .line 1726
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1730
    :cond_0
    invoke-static {p0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->e(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    .line 1731
    sget-object v1, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {p0}, Lo/TC;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v0

    .line 1733
    invoke-virtual {p0}, Lo/TC;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v1, v2}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    .line 1732
    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->as(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v1, Lo/TM;

    invoke-direct {v1, p0}, Lo/TM;-><init>(Lo/TC;)V

    new-instance v2, Lo/TK;

    invoke-direct {v2, p1}, Lo/TK;-><init>(Ljava/lang/String;)V

    .line 1735
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/SingleSubscribeProxy;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic b(Ljava/lang/ref/WeakReference;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lo/TC;->c(Ljava/lang/ref/WeakReference;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic b(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    .line 3792
    invoke-direct/range {p0 .. p6}, Lo/TC;->a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method

.method static synthetic b(Lo/TC;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->bC()V

    return-void
.end method

.method static synthetic b(Lo/TC;Ljava/lang/Long;Ljava/lang/Long;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lo/TC;->c(Ljava/lang/Long;Ljava/lang/Long;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method

.method static synthetic b(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    .line 255
    invoke-direct/range {p0 .. p6}, Lo/TC;->d(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method

.method static synthetic b(Lo/TC;Lo/Tg;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/TC;->d(Lo/Tg;)V

    return-void
.end method

.method static synthetic b(Lo/TC;Lo/Ti;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/TC;->b(Lo/Ti;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic b(Lo/Ti;Ljava/lang/Throwable;)V
    .locals 2

    .line 3608
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Error from pin dialog"

    invoke-interface {v0, v1, p2}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3609
    invoke-virtual {p1}, Lo/Ti;->dismiss()V

    .line 3610
    invoke-virtual {p0}, Lo/TC;->v()V

    return-void
.end method

.method private synthetic b(Lo/Tk;)V
    .locals 1

    .line 3615
    sget-object v0, Lo/Tk$Application;->b:Lo/Tk$Application;

    if-ne p1, v0, :cond_0

    const-string p1, "PlayerFragment"

    const-string v0, "Content preview pin cancelled - close playback"

    .line 3616
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    invoke-virtual {p0}, Lo/TC;->v()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/TC;Z)Z
    .locals 0

    .line 255
    iput-boolean p1, p0, Lo/TC;->F:Z

    return p1
.end method

.method private bA()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;
    .locals 2

    .line 4379
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4383
    iget-boolean v1, p0, Lo/TC;->aj:Z

    if-eqz v1, :cond_0

    .line 4384
    iget-object v0, p0, Lo/TC;->am:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    goto :goto_0

    :cond_0
    const-string v1, "player_extras"

    .line 4386
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    :goto_0
    if-eqz v0, :cond_1

    .line 4389
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private bB()V
    .locals 5

    .line 4322
    invoke-virtual {p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4323
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4327
    :cond_0
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->Y()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    const-string v3, "PlayerFragment"

    if-gt v0, v1, :cond_1

    .line 4330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupter: autoPlayMaxCount = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resetting to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 4342
    :cond_1
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lo/Uc;->i()I

    move-result v1

    if-lt v1, v0, :cond_2

    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lo/Uc;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " consecutive auto play with no user interaction, prepare the interrupter"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$Cursor;->e:Lo/UP$Cursor;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private bC()V
    .locals 1

    .line 4284
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 4285
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4286
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 4288
    :cond_0
    iget-object v0, p0, Lo/TC;->H:Lo/WebChromeClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/WebChromeClient;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4289
    iget-object v0, p0, Lo/TC;->H:Lo/WebChromeClient;

    invoke-virtual {v0}, Lo/WebChromeClient;->dismiss()V

    :cond_1
    return-void
.end method

.method private bD()Z
    .locals 3

    .line 4413
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4417
    :cond_0
    invoke-direct {p0}, Lo/TC;->bA()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4420
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->d()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4425
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4430
    :cond_2
    sget-object v0, Lo/gT;->a:Lo/gT$Activity;

    invoke-virtual {v0}, Lo/gT$Activity;->d()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private bE()J
    .locals 3

    .line 4396
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "player_extras"

    .line 4397
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4398
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    if-eqz v0, :cond_0

    .line 4400
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->m()J

    move-result-wide v0

    return-wide v0

    .line 4404
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "PlayerExtras.getUserPlayStartTime should not be null and contain UserPlayStartTime"

    .line 4405
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 4408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private bF()Lo/Ug;
    .locals 2

    .line 4438
    iget-object v0, p0, Lo/TC;->ak:Lo/Ug;

    if-nez v0, :cond_0

    .line 4439
    new-instance v0, Lo/Ug;

    invoke-direct {p0}, Lo/TC;->bA()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/Ug;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    iput-object v0, p0, Lo/TC;->ak:Lo/Ug;

    .line 4441
    :cond_0
    iget-object v0, p0, Lo/TC;->ak:Lo/Ug;

    return-object v0
.end method

.method private synthetic bG()V
    .locals 1

    .line 580
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-direct {p0}, Lo/TC;->aK()V

    :cond_0
    return-void
.end method

.method private bH()Z
    .locals 1

    .line 4450
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4451
    invoke-interface {v0}, Lo/BC;->isAutoPlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ba()V
    .locals 5

    .line 1752
    invoke-virtual {p0}, Lo/TC;->U_()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v1}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/TC;->h:Lo/Tv;

    invoke-virtual {v2}, Lo/Tv;->o()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/TC$5;

    const-string v4, "PlayerFragment"

    invoke-direct {v3, p0, v4}, Lo/TC$5;-><init>(Lo/TC;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    return-void
.end method

.method private bb()V
    .locals 6

    .line 2171
    iget-object v0, p0, Lo/TC;->p:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 2172
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/TC;->p:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 2173
    iput-object v4, p0, Lo/TC;->p:Ljava/lang/Long;

    .line 2176
    :cond_0
    iget-object v0, p0, Lo/TC;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 2177
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/TC;->m:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 2178
    iput-object v4, p0, Lo/TC;->m:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method private bc()V
    .locals 14

    .line 1954
    iget-object v0, p0, Lo/TC;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    .line 1955
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-nez v0, :cond_0

    .line 1956
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Cannot report play start do cl, mCurrentPlaybackItem is null"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 1960
    :cond_0
    invoke-virtual {v0}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v6

    .line 1961
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v0}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v7

    .line 1964
    iget-wide v0, p0, Lo/TC;->A:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1965
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    invoke-direct {p0, v0}, Lo/TC;->c(Lo/Tv;)V

    .line 1968
    :cond_1
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/MediaOffset;

    iget-object v4, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-nez v4, :cond_2

    move-wide v4, v2

    goto :goto_0

    .line 1969
    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v4

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1970
    invoke-direct {p0}, Lo/TC;->bz()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/netflix/cl/model/context/MediaOffset;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1968
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 1971
    invoke-virtual {p0}, Lo/TC;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1972
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->c(Ljava/lang/String;)Lo/Bi;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1974
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v11, Lcom/netflix/cl/model/event/session/action/CachedPlay;

    .line 1976
    invoke-interface {v0}, Lo/Bi;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1977
    invoke-direct {p0}, Lo/TC;->bz()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Lo/TC$ActionBar;

    sget-object v5, Lcom/netflix/cl/model/AppView;->playback:Lcom/netflix/cl/model/AppView;

    .line 1982
    invoke-virtual {p0}, Lo/TC;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->g()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v10}, Lo/TC$ActionBar;-><init>(Lcom/netflix/cl/model/AppView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v11, v0, v12, v13}, Lcom/netflix/cl/model/event/session/action/CachedPlay;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 1974
    invoke-virtual {v1, v11}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/TC;->m:Ljava/lang/Long;

    goto :goto_1

    .line 1990
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Staring Play session with fragmentAppView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/TC;->ae:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/Play;

    .line 1993
    invoke-direct {p0}, Lo/TC;->bz()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lo/TC$ActionBar;

    iget-object v5, p0, Lo/TC;->ae:Lcom/netflix/cl/model/AppView;

    .line 1998
    invoke-virtual {p0}, Lo/TC;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->g()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Lo/TC$ActionBar;-><init>(Lcom/netflix/cl/model/AppView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v11, v12}, Lcom/netflix/cl/model/event/session/action/Play;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 1991
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/TC;->m:Ljava/lang/Long;

    .line 2005
    :cond_4
    :goto_1
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-string v1, "MediaOffset"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/String;)Z

    .line 2008
    iget-wide v0, p0, Lo/TC;->A:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 2009
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-wide v4, p0, Lo/TC;->A:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 2010
    iput-wide v2, p0, Lo/TC;->A:J

    :cond_5
    return-void
.end method

.method private bd()V
    .locals 3

    .line 2216
    invoke-virtual {p0}, Lo/TC;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/TC;->i:Lo/Tv;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2218
    :cond_0
    invoke-virtual {v1}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v2}, Lo/Tv;->b()I

    move-result v2

    invoke-static {v1, v2}, Lo/Aa;->e(Ljava/lang/String;I)Lo/Aa;

    move-result-object v1

    .line 2216
    :goto_0
    invoke-static {v0, v1}, Lo/RL;->b(Ljava/lang/String;Lo/Aa;)V

    return-void
.end method

.method private be()V
    .locals 2

    .line 1943
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1948
    invoke-direct {p0}, Lo/TC;->bc()V

    const-string v0, "PlayerFragment"

    const-string v1, "Intent PLAYER_PLAY_START sent"

    .line 1949
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private bf()Z
    .locals 5

    .line 2232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lo/TC;->j:Lo/Uc;

    iget-wide v2, v2, Lo/Uc;->j:J

    sub-long/2addr v0, v2

    sget v2, Lo/TC;->u:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bg()V
    .locals 3

    .line 2678
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2680
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Uc;->d(J)V

    .line 2681
    invoke-virtual {p0}, Lo/TC;->R()V

    :cond_0
    return-void
.end method

.method private bh()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 2671
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-nez v0, :cond_0

    .line 2672
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0

    .line 2674
    :cond_0
    invoke-virtual {v0}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method private bi()V
    .locals 3

    .line 2533
    iget-object v0, p0, Lo/TC;->aD:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lo/TC;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2534
    iget-object v0, p0, Lo/TC;->az:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lo/TX;->c()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/TC;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2535
    iget-object v0, p0, Lo/TC;->aG:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lo/TC;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2536
    iget-object v0, p0, Lo/TC;->ay:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lo/TC;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2537
    iget-object v0, p0, Lo/TC;->aB:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netflix.mediaclient.intent.action.END_PIP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lo/TC;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private bj()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    .line 2619
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    if-eqz v0, :cond_0

    .line 2621
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2622
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2623
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2624
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2625
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Uc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    .line 2626
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bk()Z
    .locals 1

    .line 2429
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bl()V
    .locals 1

    .line 3001
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gN:I

    invoke-virtual {p0, v0}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3002
    invoke-direct {p0, v0}, Lo/TC;->d(Ljava/lang/String;)V

    return-void
.end method

.method private bm()Z
    .locals 6

    const-string v0, "PlayerFragment"

    const-string v1, "Check connection"

    .line 3015
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    invoke-virtual {p0}, Lo/TC;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "offline playback network is not needed."

    .line 3017
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3020
    :cond_0
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "No internet connection. Since this is expected state on Verizons\' phones, skip"

    .line 3023
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3025
    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->a:Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    const-string v1, "2G only, alert"

    .line 3026
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    invoke-direct {p0}, Lo/TC;->bn()V

    return v4

    .line 3029
    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->e:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-ne v1, v3, :cond_3

    const-string v1, "WiFi connection, do playback"

    .line 3030
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3033
    :cond_3
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/x;->b(Landroid/content/Context;)Z

    move-result v1

    .line 3034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3G Preference setting: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    const-string v1, "We should warn user if he is on NON WIFI network!"

    .line 3037
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    invoke-direct {p0}, Lo/TC;->bp()V

    return v4

    :cond_4
    const-string v1, "Warning is not required, proceed with playback"

    .line 3041
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private bn()V
    .locals 1

    .line 2991
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jR:I

    invoke-virtual {p0, v0}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2992
    invoke-direct {p0, v0}, Lo/TC;->d(Ljava/lang/String;)V

    return-void
.end method

.method private bo()V
    .locals 1

    .line 2996
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kc:I

    invoke-virtual {p0, v0}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2997
    invoke-direct {p0, v0}, Lo/TC;->d(Ljava/lang/String;)V

    return-void
.end method

.method private bp()V
    .locals 1

    .line 2985
    invoke-static {}, Lo/aeB;->a()Z

    .line 2986
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->in:I

    invoke-virtual {p0, v0}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2987
    invoke-direct {p0, v0}, Lo/TC;->d(Ljava/lang/String;)V

    return-void
.end method

.method private bq()V
    .locals 1

    .line 3934
    invoke-virtual {p0}, Lo/TC;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_1

    .line 3935
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3939
    :cond_0
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->c(Ljava/lang/String;)Lo/Bi;

    :cond_1
    return-void
.end method

.method private br()V
    .locals 12

    .line 3528
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-nez v0, :cond_1

    .line 3529
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_0

    .line 3530
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b()V

    :cond_0
    return-void

    .line 3535
    :cond_1
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    .line 3536
    invoke-interface {v0}, Lo/AK;->aa()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3537
    invoke-virtual {p0}, Lo/TC;->V()V

    goto/16 :goto_2

    .line 3538
    :cond_2
    invoke-interface {v0}, Lo/AK;->Z()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v1}, Lo/Tv;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 3540
    invoke-interface {v0}, Lo/AK;->Z()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v3}, Lo/Tv;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-interface {v0}, Lo/AK;->ab()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "nf_pin PlayerActivity pinVerification skipped - ageProtected: %b, pinVerified:%b, pinProtected:%b"

    .line 3539
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    invoke-direct {p0}, Lo/TC;->aR()V

    goto/16 :goto_2

    .line 3543
    :cond_3
    new-instance v10, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {v10}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>()V

    .line 3544
    iget-object v1, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v1}, Lo/Tv;->b()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b(I)V

    .line 3545
    invoke-interface {v0}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v10, v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Z)V

    .line 3546
    invoke-direct {p0}, Lo/TC;->bA()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3547
    invoke-direct {p0}, Lo/TC;->bA()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    .line 3549
    :cond_5
    iget-object v1, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v10, v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c(Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;)V

    .line 3550
    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v4, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v4

    .line 3551
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v5

    .line 3552
    invoke-interface {v0}, Lo/AK;->aa()Z

    move-result v6

    .line 3553
    invoke-interface {v0}, Lo/AK;->ab()Z

    move-result v7

    iget-object v8, p0, Lo/TC;->i:Lo/Tv;

    .line 3554
    invoke-virtual {v8}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v8

    iget-object v9, p0, Lo/TC;->i:Lo/Tv;

    .line 3555
    invoke-virtual {v9}, Lo/Tv;->d()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v9

    sget-object v11, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v9, v11, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    iget-object v2, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v2}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v11

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v11

    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    .line 3557
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-interface {v0}, Lo/AK;->Z()Z

    move-result v0

    invoke-static {v2, v0, v1}, Lo/acQ;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    :goto_2
    return-void
.end method

.method private bs()V
    .locals 2

    .line 3102
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayerFragment"

    const-string v1, "KEEP_SCREEN: OFF"

    .line 3103
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    invoke-virtual {p0}, Lo/TC;->z()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method private bt()V
    .locals 1

    .line 3483
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3484
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    :cond_0
    return-void
.end method

.method private bu()V
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3475
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Z()V

    .line 3479
    :cond_0
    invoke-direct {p0}, Lo/TC;->aT()V

    return-void
.end method

.method private bv()I
    .locals 3

    .line 4248
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4251
    :cond_0
    invoke-virtual {v0}, Lo/Tv;->b()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 4253
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->P()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    .line 4257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/TC;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Invalid bookmark, reset to 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PlayerFragment"

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private bw()I
    .locals 1

    .line 4073
    iget v0, p0, Lo/TC;->C:I

    return v0
.end method

.method private bx()Z
    .locals 1

    .line 4084
    invoke-static {}, Lo/fd;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    instance-of v0, v0, Lo/XT;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/TC;->aj:Z

    if-eqz v0, :cond_0

    .line 4087
    invoke-virtual {p0}, Lo/TC;->ay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;
    .locals 2

    .line 4265
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "player_extras"

    .line 4267
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private bz()J
    .locals 2

    .line 4207
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_0

    .line 4208
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->l()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private synthetic c(Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    .line 2318
    invoke-direct {p0, p1}, Lo/TC;->a(Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Long;Ljava/lang/Long;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 7

    .line 3817
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/CancelCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/CancelCommand;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 3818
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    if-eqz v0, :cond_0

    .line 3820
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 3823
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    :cond_1
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 3825
    invoke-direct/range {v0 .. v6}, Lo/TC;->a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "PlayerFragment"

    const-string p1, "failed to download image %s, error: %s"

    .line 1746
    invoke-static {p0, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private static synthetic c(Ljava/lang/ref/WeakReference;Ljava/lang/Throwable;)V
    .locals 2

    .line 3594
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Error from player"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3595
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/Ti;

    if-eqz p0, :cond_0

    .line 3597
    invoke-virtual {p0}, Lo/Ti;->dismiss()V

    :cond_0
    return-void
.end method

.method private c(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 9

    .line 3792
    new-instance v8, Lo/TH;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lo/TH;-><init>(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    .line 3793
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dB:I

    invoke-virtual {p0, p1}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3794
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {p0}, Lo/TC;->p()Landroid/os/Handler;

    move-result-object v3

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, p1}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v8

    invoke-static/range {v0 .. v7}, Lo/CalendarViewLegacyDelegate;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 3796
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method static synthetic c(Lo/TC;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->bl()V

    return-void
.end method

.method static synthetic c(Lo/TC;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lo/TC;->a(Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method static synthetic c(Lo/TC;Ljava/lang/ref/WeakReference;Lo/UP;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/TC;->a(Ljava/lang/ref/WeakReference;Lo/UP;)V

    return-void
.end method

.method static synthetic c(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    .line 255
    invoke-direct/range {p0 .. p6}, Lo/TC;->a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method

.method private c(Lo/Tv;)V
    .locals 14

    .line 4183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting StartPlay session with fragmentAppView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/TC;->ae:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    invoke-virtual {p1}, Lo/Tv;->b()I

    move-result v0

    int-to-long v0, v0

    .line 4186
    invoke-direct {p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o()Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    move-result-object v2

    .line 4187
    :goto_0
    sget-object v4, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v5, Lcom/netflix/cl/model/event/session/action/StartPlay;

    .line 4189
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4190
    invoke-direct {p0}, Lo/TC;->bz()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v13, Lo/TC$ActionBar;

    iget-object v7, p0, Lo/TC;->ae:Lcom/netflix/cl/model/AppView;

    .line 4193
    invoke-virtual {p1}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v8

    .line 4194
    invoke-virtual {p1}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v9

    .line 4195
    invoke-virtual {p0}, Lo/TC;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->g()Ljava/lang/String;

    move-result-object v10

    if-nez v2, :cond_1

    move-object v11, v3

    goto :goto_1

    .line 4196
    :cond_1
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d()Ljava/lang/String;

    move-result-object p1

    move-object v11, p1

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 4197
    :cond_2
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v12, v3

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lo/TC$ActionBar;-><init>(Lcom/netflix/cl/model/AppView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v0, v1, v13}, Lcom/netflix/cl/model/event/session/action/StartPlay;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 4187
    invoke-virtual {v4, v5}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4202
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lo/TC;->A:J

    :cond_3
    return-void
.end method

.method private static d(Lo/AK;)Lcom/netflix/model/leafs/TimeCodesData;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4747
    :cond_0
    invoke-interface {p0}, Lo/AK;->aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 4751
    :cond_1
    invoke-interface {p0}, Lcom/netflix/model/leafs/VideoInfo$TimeCodes;->getTimeCodesData()Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;JLcom/netflix/mediaclient/ui/player/PlayerExtras;)Lo/TC;
    .locals 1

    .line 490
    new-instance v0, Lo/TC;

    invoke-direct {v0}, Lo/TC;-><init>()V

    .line 491
    invoke-static/range {p0 .. p5}, Lo/TC;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;JLcom/netflix/mediaclient/ui/player/PlayerExtras;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/TC;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic d(Lo/TC;)Lo/zN;
    .locals 0

    .line 255
    iget-object p0, p0, Lo/TC;->V:Lo/zN;

    return-object p0
.end method

.method private d(J)V
    .locals 3

    .line 3158
    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3163
    :cond_0
    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->R()I

    move-result v0

    if-lez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 3164
    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->R()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c(Lo/AK;I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 3165
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$ApplicationInfo;->b:Lo/UP$ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 3167
    :cond_1
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$IntentSender;->a:Lo/UP$IntentSender;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 3171
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v0

    .line 3172
    invoke-virtual {p0, v0}, Lo/TC;->c(Lo/Bi;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3173
    invoke-static {v0}, Lo/TC;->d(Lo/AK;)Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 3174
    :cond_4
    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v2

    invoke-static {v2}, Lo/TC;->d(Lo/AK;)Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object v2

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 3176
    invoke-static {}, Lo/eI;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3178
    invoke-direct {p0, v0, p1, p2}, Lo/TC;->b(Lcom/netflix/model/leafs/TimeCodesData;J)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    .line 3180
    invoke-direct {p0, v2, p1, p2}, Lo/TC;->b(Lcom/netflix/model/leafs/TimeCodesData;J)V

    goto :goto_3

    .line 3181
    :cond_6
    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->al()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3184
    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->al()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v0

    invoke-direct {p0}, Lo/TC;->bw()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lo/Uu;->b(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3185
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class p2, Lo/UP;

    sget-object v0, Lo/UP$IntentFilter;->d:Lo/UP$IntentFilter;

    invoke-virtual {p1, p2, v0}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_3

    .line 3186
    :cond_7
    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->al()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v0

    invoke-direct {p0}, Lo/TC;->bw()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lo/Uu;->a(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3187
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class p2, Lo/UP;

    sget-object v0, Lo/UP$AssetManager;->c:Lo/UP$AssetManager;

    invoke-virtual {p1, p2, v0}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_3

    .line 3189
    :cond_8
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class p2, Lo/UP;

    sget-object v0, Lo/UP$SharedPreferences;->d:Lo/UP$SharedPreferences;

    invoke-virtual {p1, p2, v0}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    .line 3006
    new-instance v6, Lo/hK;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, v0}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lo/TC;->aF:Ljava/lang/Runnable;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3007
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object p1

    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    invoke-static {p1, v0, v6}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 3008
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method private d(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 8

    .line 747
    new-instance v7, Lo/Tv;

    const-string v4, "postplay"

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/Tv;-><init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    iput-object v7, p0, Lo/TC;->l:Lo/Tv;

    .line 748
    iput-object p2, p0, Lo/TC;->J:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 749
    iput-object p6, p0, Lo/TC;->K:Lo/Tv;

    return-void
.end method

.method static synthetic d(Lo/TC;J)V
    .locals 0

    .line 255
    invoke-direct {p0, p1, p2}, Lo/TC;->b(J)V

    return-void
.end method

.method static synthetic d(Lo/TC;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/TC;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method static synthetic d(Lo/TC;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/TC;->c(Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method static synthetic d(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    .line 255
    invoke-direct/range {p0 .. p6}, Lo/TC;->e(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method

.method private synthetic d(Lo/Tg;)V
    .locals 1

    .line 3604
    instance-of v0, p1, Lo/Tg$StateListAnimator;

    if-eqz v0, :cond_0

    .line 3605
    check-cast p1, Lo/Tg$StateListAnimator;

    invoke-virtual {p1}, Lo/Tg$StateListAnimator;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/TC;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic d(Lo/UP;)Z
    .locals 1

    .line 3577
    instance-of v0, p0, Lo/UP$CursorFactory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lo/UP$ActionBar;

    if-nez v0, :cond_1

    instance-of p0, p0, Lo/UP$ComponentCallbacks;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private e(I)V
    .locals 4

    .line 1435
    invoke-direct {p0}, Lo/TC;->bf()Z

    move-result v0

    const-string v1, "PlayerFragment"

    if-eqz v0, :cond_0

    const-string p1, "doPause: volume up or down is pressed, do not pause..."

    .line 1436
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "doPause: with flags %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "playback paused."

    .line 1441
    invoke-static {v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    .line 1443
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1445
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(I)V

    :cond_1
    return-void
.end method

.method private e(Lcom/netflix/cl/model/Error;)V
    .locals 5

    .line 2160
    iget-object v0, p0, Lo/TC;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    if-eqz p1, :cond_0

    .line 2162
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object v1, p0, Lo/TC;->m:Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    .line 2164
    :cond_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/TC;->m:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 2166
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/TC;->m:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method private synthetic e(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 3804
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 3805
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    if-eqz v0, :cond_0

    .line 3807
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 3810
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 3812
    :cond_1
    invoke-virtual {p0}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adg;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 3813
    invoke-virtual {p0, p1}, Lo/TC;->startActivity(Landroid/content/Intent;)V

    .line 3814
    invoke-virtual {p0}, Lo/TC;->v()V

    return-void
.end method

.method private e(Lo/Bc;)V
    .locals 2

    .line 3837
    sget-object v0, Lo/TC;->X:Lo/TX;

    if-nez v0, :cond_0

    .line 3838
    new-instance v0, Lo/TX;

    invoke-direct {v0}, Lo/TX;-><init>()V

    sput-object v0, Lo/TC;->X:Lo/TX;

    .line 3840
    :cond_0
    sget-object v0, Lo/TC;->X:Lo/TX;

    iget-object v1, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    invoke-virtual {v1}, Lo/CameraPrewarmService;->g()Lo/Ac;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/TX;->a(Lo/Bc;Lo/Ac;)V

    .line 3841
    iget-object p1, p0, Lo/TC;->O:Lo/Ah;

    sget-object v0, Lo/TC;->X:Lo/TX;

    invoke-interface {p1, v0}, Lo/Ah;->e(Lo/pC;)V

    return-void
.end method

.method private e(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 18

    move-object/from16 v10, p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 3800
    :cond_0
    invoke-interface/range {p1 .. p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    move-object v3, v0

    goto :goto_1

    .line 3801
    :cond_1
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/context/iko/IkoMode;

    invoke-direct {v2}, Lcom/netflix/cl/model/context/iko/IkoMode;-><init>()V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v1

    .line 3802
    :goto_1
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v4, Lcom/netflix/cl/model/AppView;->appUpgradePrompt:Lcom/netflix/cl/model/AppView;

    invoke-direct {v2, v4, v0}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v2

    .line 3803
    new-instance v15, Lo/TI;

    invoke-direct {v15, v10, v2, v3}, Lo/TI;-><init>(Lo/TC;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3816
    new-instance v17, Lo/TJ;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lo/TJ;-><init>(Lo/TC;Ljava/lang/Long;Ljava/lang/Long;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    .line 3827
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->dE:I

    invoke-virtual {v10, v0}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 3828
    invoke-interface/range {p1 .. p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->appUpdateDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3829
    invoke-interface/range {p1 .. p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->appUpdateDialogMessage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v13, v0

    .line 3831
    new-instance v0, Lo/CalendarViewLegacyDelegate$Activity;

    const/4 v12, 0x0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v10, v1}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {v10, v1}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3832
    invoke-virtual/range {p0 .. p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lo/TC;->p()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    .line 3833
    invoke-virtual/range {p0 .. p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method private declared-synchronized e(Lo/Me;)V
    .locals 3

    monitor-enter p0

    .line 753
    :try_start_0
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    new-instance v2, Lo/UP$ColorStateList;

    invoke-direct {v2, p1}, Lo/UP$ColorStateList;-><init>(Lo/Me;)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 754
    iput-object p1, p0, Lo/TC;->n:Lo/Me;

    .line 756
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 759
    invoke-static {v0, p1}, Lo/Mn;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Me;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic e(Lo/TC;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->bo()V

    return-void
.end method

.method static synthetic e(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lo/TC;->b(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method

.method static synthetic e(Lo/TC;Lo/Ti;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/TC;->a(Lo/Ti;Ljava/lang/Throwable;)V

    return-void
.end method

.method private e(Lo/Tv;)V
    .locals 6

    .line 4175
    iget-wide v0, p0, Lo/TC;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4176
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-wide v4, p0, Lo/TC;->A:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 4177
    iput-wide v2, p0, Lo/TC;->A:J

    .line 4179
    :cond_0
    invoke-direct {p0, p1}, Lo/TC;->c(Lo/Tv;)V

    return-void
.end method

.method private synthetic e(ZLo/Tv;)V
    .locals 13

    if-eqz p1, :cond_0

    .line 4158
    invoke-virtual {p2}, Lo/Tv;->k()Lo/Bc;

    move-result-object v1

    invoke-virtual {p2}, Lo/Tv;->d()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v2

    invoke-virtual {p2}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    invoke-virtual {p2}, Lo/Tv;->b()I

    move-result v4

    .line 4159
    invoke-virtual {p2}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    .line 4158
    invoke-direct/range {v0 .. v6}, Lo/TC;->a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    goto :goto_0

    .line 4161
    :cond_0
    invoke-direct {p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 4163
    invoke-virtual {p2}, Lo/Tv;->b()I

    move-result p1

    invoke-virtual {v11, p1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b(I)V

    .line 4167
    :cond_1
    invoke-virtual {p2}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v9

    .line 4168
    invoke-virtual {p2}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v10

    sget-object v12, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v7, p0

    .line 4167
    invoke-virtual/range {v7 .. v12}, Lo/TC;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    :goto_0
    return-void
.end method

.method private e(J)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 3992
    iget-object v1, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/Tv;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3993
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lo/TC;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3994
    :cond_0
    sget-wide v1, Lo/TC;->y:J

    add-long/2addr p1, v1

    iget-object v1, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v1}, Lo/Tv;->c()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic f(Lo/TC;)Z
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->bk()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lo/TC;)Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
    .locals 0

    .line 255
    iget-object p0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    return-object p0
.end method

.method private g(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PlayerFragment"

    const-string v2, "doUnpause: with flags %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "playback resumed"

    .line 1465
    invoke-static {v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    .line 1467
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {p0}, Lo/TC;->T()V

    .line 1470
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lo/TC;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->aU()V

    return-void
.end method

.method private h(I)Z
    .locals 4

    const-string v0, "PlayerFragment"

    .line 2795
    :try_start_0
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lo/Serializable;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x5

    .line 2797
    invoke-virtual {v1, v2, p1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "Audio manager is not available, can not change volume"

    .line 2801
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "error adjusting audio: "

    .line 2804
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic i(Lo/TC;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->bh()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p0

    return-object p0
.end method

.method private i(I)V
    .locals 3

    .line 2397
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Uc;->d(J)V

    .line 2398
    invoke-virtual {p0}, Lo/TC;->Z()V

    const/4 v0, 0x1

    .line 2403
    invoke-virtual {p0, p1, v0}, Lo/TC;->c(IZ)V

    return-void
.end method

.method private j(I)V
    .locals 4

    .line 2606
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v1, p0, Lo/TC;->ax:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2607
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v1, p0, Lo/TC;->ax:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic j(Lo/TC;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->bs()V

    return-void
.end method

.method static synthetic k(Lo/TC;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->aY()V

    return-void
.end method

.method static synthetic l(Lo/TC;)V
    .locals 0

    invoke-direct {p0}, Lo/TC;->bG()V

    return-void
.end method

.method static synthetic m(Lo/TC;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->bt()V

    return-void
.end method

.method private m(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 4715
    sget p1, Lo/TC;->s:I

    iput p1, p0, Lo/TC;->M:I

    .line 4716
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v0, Lo/UP;

    new-instance v1, Lo/UP$TaskDescription;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lo/UP$TaskDescription;-><init>(Z)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 4718
    :cond_0
    sget p1, Lo/TC;->q:I

    iput p1, p0, Lo/TC;->M:I

    .line 4719
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v0, Lo/UP;

    new-instance v1, Lo/UP$TaskDescription;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/UP$TaskDescription;-><init>(Z)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :goto_0
    return-void
.end method

.method static synthetic n(Lo/TC;)I
    .locals 0

    .line 255
    iget p0, p0, Lo/TC;->M:I

    return p0
.end method

.method static synthetic o(Lo/TC;)Z
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/TC;->bm()Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lo/TC;)V
    .locals 0

    invoke-direct {p0}, Lo/TC;->aJ()V

    return-void
.end method


# virtual methods
.method public A()Lo/PendingIntent;
    .locals 9

    .line 780
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->castDeviceSelector:Lcom/netflix/cl/model/AppView;

    iget-object v3, p0, Lo/TC;->n:Lo/Me;

    invoke-virtual {v3}, Lo/Me;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 782
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 784
    :goto_0
    iget-object v4, p0, Lo/TC;->n:Lo/Me;

    invoke-virtual {v4}, Lo/Me;->e()I

    move-result v4

    .line 785
    iget-object v5, p0, Lo/TC;->n:Lo/Me;

    invoke-virtual {v5, v4}, Lo/Me;->d(I)Lo/Mf;

    .line 787
    new-instance v5, Lo/Mj$TaskDescription;

    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v6

    invoke-direct {v5, v6}, Lo/Mj$TaskDescription;-><init>(Landroid/app/Activity;)V

    .line 788
    invoke-virtual {v5, v3}, Lo/Mj$TaskDescription;->a(Z)Lo/PendingIntent$Activity;

    .line 789
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->hs:I

    invoke-virtual {v5, v6}, Lo/Mj$TaskDescription;->d(I)Lo/Mj$TaskDescription;

    .line 790
    iget-object v6, p0, Lo/TC;->n:Lo/Me;

    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lo/Me;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/Mj$TaskDescription;->e(Ljava/util/List;)V

    .line 792
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->lY:I

    invoke-virtual {p0, v6}, Lo/TC;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v7, Lo/UZ;->b:Lo/UZ;

    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/UZ;->a(Lo/AK;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 793
    invoke-virtual {v5, v4, v2}, Lo/Mj$TaskDescription;->c(ILjava/lang/String;)V

    .line 794
    new-instance v2, Lo/TC$21;

    invoke-direct {v2, p0, v1}, Lo/TC$21;-><init>(Lo/TC;Z)V

    invoke-virtual {v5, v2}, Lo/Mj$TaskDescription;->b(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 883
    new-instance v1, Lo/TC$25;

    invoke-direct {v1, p0, v0}, Lo/TC$25;-><init>(Lo/TC;Ljava/lang/Long;)V

    invoke-virtual {v5, v1}, Lo/Mj$TaskDescription;->a(Landroid/content/DialogInterface$OnCancelListener;)Lo/Mj$TaskDescription;

    .line 891
    new-instance v1, Lo/TC$30;

    invoke-direct {v1, p0, v0}, Lo/TC$30;-><init>(Lo/TC;Ljava/lang/Long;)V

    invoke-virtual {v5, v1}, Lo/Mj$TaskDescription;->c(Landroid/content/DialogInterface$OnDismissListener;)Lo/PendingIntent$Activity;

    .line 898
    invoke-virtual {v5}, Lo/Mj$TaskDescription;->a()Lo/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public B()V
    .locals 3

    .line 2089
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2094
    :cond_0
    invoke-virtual {p0}, Lo/TC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2095
    invoke-direct {p0}, Lo/TC;->aQ()Lo/TU;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/TU;

    invoke-interface {v2}, Lo/TU;->e()V

    .line 2099
    iget-boolean v2, p0, Lo/TC;->ac:Z

    if-nez v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 2101
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method

.method public C()V
    .locals 3

    .line 768
    iget-object v0, p0, Lo/TC;->n:Lo/Me;

    const-string v1, "PlayerFragment"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Me;->b()[Lo/Mf;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/TC;->n:Lo/Me;

    invoke-virtual {v0}, Lo/Me;->b()[Lo/Mf;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MDX target is reachable, display dialog"

    .line 773
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {p0}, Lo/TC;->A()Lo/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "Non local targets are not available!"

    .line 769
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public D()Lo/agg;
    .locals 1

    .line 904
    iget-object v0, p0, Lo/TC;->U:Lo/agg;

    return-object v0
.end method

.method public E()V
    .locals 5

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playout started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-static {}, Lo/es;->i()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lo/TC;->ag:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 1605
    iget-object v2, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlaybackSpeed(F)V

    .line 1607
    :cond_0
    invoke-static {}, Lo/aeB;->a()Z

    .line 1609
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_1

    .line 1610
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    .line 1611
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 1625
    :cond_3
    iget-object v0, p0, Lo/TC;->z:Lo/TY;

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    .line 1626
    invoke-virtual {v0, v2}, Lo/TY;->a(I)V

    .line 1628
    :cond_4
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    sget-object v4, Lo/UP$Mode;->b:Lo/UP$Mode;

    invoke-virtual {v0, v2, v4}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1630
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1632
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleVisibility(Z)V

    .line 1633
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVolume(F)V

    .line 1636
    :cond_5
    invoke-direct {p0}, Lo/TC;->aZ()V

    .line 1637
    invoke-virtual {p0}, Lo/TC;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Offline"

    goto :goto_2

    :cond_6
    const-string v0, "Streaming"

    .line 1638
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " playback started"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    return-void

    .line 1616
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1617
    new-instance v0, Lcom/netflix/cl/model/Error;

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/log/RootCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/TC;->e(Lcom/netflix/cl/model/Error;)V

    .line 1620
    :cond_8
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    iget-object v0, v0, Lo/Uc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1621
    invoke-virtual {p0}, Lo/TC;->v()V

    return-void
.end method

.method public F()V
    .locals 4

    .line 2017
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-nez v0, :cond_0

    .line 2018
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "mVideoView should not be null in _displayPlayerSpeedDialog()"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 2021
    :cond_0
    iget-object v0, p0, Lo/TC;->Z:Lo/Dd;

    if-nez v0, :cond_1

    .line 2022
    new-instance v0, Lo/Dd;

    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iget-object v3, p0, Lo/TC;->o:Lo/UpdateEngine;

    invoke-direct {v0, v1, v2, v3}, Lo/Dd;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;Lo/UpdateEngine;)V

    iput-object v0, p0, Lo/TC;->Z:Lo/Dd;

    .line 2024
    :cond_1
    iget-object v0, p0, Lo/TC;->Z:Lo/Dd;

    iget-object v1, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, v1}, Lo/Dd;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;)V

    return-void
.end method

.method public G()V
    .locals 2

    .line 2047
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d()F

    move-result v0

    iput v0, p0, Lo/TC;->ag:F

    .line 2048
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Uc;->h(Z)V

    return-void
.end method

.method public H()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lo/TC;->z:Lo/TY;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1585
    invoke-virtual {v0, v1}, Lo/TY;->a(I)V

    :cond_0
    const-string v0, "PlayerFragment"

    const-string v1, "Pause, release awake clock after 2 minutes."

    .line 1588
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v1, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v2, p0, Lo/TC;->aw:Ljava/lang/Runnable;

    sget v3, Lo/TC;->t:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1590
    iget-object v1, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v2, p0, Lo/TC;->aA:Ljava/lang/Runnable;

    sget-wide v3, Lo/TC;->v:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "doPause() remove reporting"

    .line 1592
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1594
    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1595
    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;->b:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->d(Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;)V

    .line 1598
    :cond_1
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$PackageManager;->d:Lo/UP$PackageManager;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public I()V
    .locals 5

    const-string v0, "PlayerFragment"

    const-string v1, "onCompletion, check if we are in postplay or in preplay"

    .line 1762
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    invoke-virtual {p0}, Lo/TC;->P()V

    const/4 v1, 0x0

    .line 1765
    invoke-direct {p0, v1}, Lo/TC;->e(Lcom/netflix/cl/model/Error;)V

    .line 1767
    iget-object v1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    sget-object v3, Lo/UP$ComponentCallbacks2;->c:Lo/UP$ComponentCallbacks2;

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1769
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lo/Uc;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1771
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lo/Uc;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OnCompletion of preplay."

    .line 1773
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_5

    .line 1776
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Tv;->k()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lo/Tv;->k()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lo/Uc;->c(Z)V

    .line 1777
    invoke-virtual {v0}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1778
    iget-object v1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$PendingIntent;

    invoke-virtual {v0}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v4

    invoke-direct {v3, v4}, Lo/UP$PendingIntent;-><init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1780
    :cond_1
    invoke-virtual {p0, v0}, Lo/TC;->b(Lo/Tv;)V

    goto :goto_1

    :cond_2
    const-string v1, "OnCompletion - exiting."

    .line 1783
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-boolean v0, p0, Lo/TC;->aj:Z

    if-nez v0, :cond_5

    .line 1785
    invoke-virtual {p0}, Lo/TC;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1786
    invoke-direct {p0}, Lo/TC;->aY()V

    goto :goto_1

    .line 1788
    :cond_3
    invoke-virtual {p0}, Lo/TC;->v()V

    goto :goto_1

    :cond_4
    const-string v1, "onCompletion, In PostPlay, allow screen to lock after timeout..."

    .line 1793
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v1, p0, Lo/TC;->aw:Ljava/lang/Runnable;

    sget v2, Lo/TC;->t:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public J()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
    .locals 1

    .line 2084
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 2223
    iget-object v0, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->a(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()V
    .locals 3

    .line 2187
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2191
    :cond_0
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2193
    invoke-direct {p0}, Lo/TC;->bb()V

    .line 2195
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object v0

    iget-object v1, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v1}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->ab()Z

    move-result v1

    iget-object v2, p0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v2}, Lo/Tv;->i()Lo/AK;

    move-result-object v2

    invoke-interface {v2}, Lo/AK;->aa()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/acR;->d(ZZ)V

    .line 2197
    invoke-direct {p0}, Lo/TC;->bd()V

    const-string v0, "PlayerFragment"

    const-string v1, "Intent PLAYER_PLAY_STOP sent"

    .line 2198
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public M()V
    .locals 5

    .line 2275
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2277
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/TC;->i:Lo/Tv;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2280
    :cond_0
    invoke-virtual {v1}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    .line 2282
    invoke-interface {v1}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lo/TC;->bz()J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lo/Dn;->a(Ljava/lang/String;Ljava/lang/String;J)Lo/Dn;

    move-result-object v1

    iput-object v1, p0, Lo/TC;->H:Lo/WebChromeClient;

    .line 2283
    iget-object v1, p0, Lo/TC;->H:Lo/WebChromeClient;

    invoke-virtual {p0}, Lo/TC;->z()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/WebChromeClient;->d(I)V

    .line 2284
    invoke-virtual {p0}, Lo/TC;->L()V

    .line 2285
    iget-object v1, p0, Lo/TC;->H:Lo/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public N()V
    .locals 3

    .line 2078
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-wide v1, p0, Lo/TC;->ad:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public O()V
    .locals 4

    .line 2946
    iget-object v0, p0, Lo/TC;->V:Lo/zN;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lo/TC;->D:Lo/cz;

    if-nez v2, :cond_0

    goto :goto_1

    .line 2951
    :cond_0
    invoke-interface {v0}, Lo/zN;->f()[Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2952
    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 2957
    :cond_1
    iget-object v1, p0, Lo/TC;->V:Lo/zN;

    invoke-interface {v1}, Lo/zN;->h()Ljava/lang/String;

    move-result-object v1

    .line 2958
    iget-object v2, p0, Lo/TC;->D:Lo/cz;

    invoke-direct {p0, v0, v1, v2}, Lo/TC;->a([Landroid/util/Pair;Ljava/lang/String;Lo/cz;)Lo/Me;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/TC;->e(Lo/Me;)V

    return-void

    .line 2953
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lo/TC;->e(Lo/Me;)V

    return-void

    .line 2947
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lo/TC;->e(Lo/Me;)V

    return-void
.end method

.method public P()V
    .locals 2

    .line 3080
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v1, p0, Lo/TC;->ax:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "PlayerFragment"

    const-string v1, "===>> Screen update thread canceled"

    .line 3081
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Q()V
    .locals 8

    .line 2449
    invoke-static {}, Lo/aeB;->a()Z

    .line 2451
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 2453
    iget-object v0, p0, Lo/TC;->T:Lo/pz;

    invoke-interface {v0}, Lo/pz;->e()Lo/Ah;

    move-result-object v0

    iput-object v0, p0, Lo/TC;->O:Lo/Ah;

    .line 2456
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "player_extras"

    .line 2459
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2461
    :goto_0
    iget-object v2, p0, Lo/TC;->i:Lo/Tv;

    if-nez v2, :cond_6

    if-nez v0, :cond_1

    .line 2463
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bundle is empty, no video ID to play"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 2464
    invoke-direct {p0}, Lo/TC;->aM()V

    return-void

    :cond_1
    const-string v2, "extra_video_id"

    .line 2468
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2469
    invoke-static {v3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2470
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unable to start playback with invalid video id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 2471
    invoke-direct {p0}, Lo/TC;->aM()V

    return-void

    :cond_2
    const-string v2, "extra_video_type_string_value"

    .line 2474
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    if-nez v4, :cond_3

    .line 2476
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unable to start playback with invalid video type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 2477
    invoke-direct {p0}, Lo/TC;->aM()V

    return-void

    :cond_3
    const-string v2, "extra_play_context"

    .line 2480
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-nez v0, :cond_4

    .line 2482
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v2, "Empty context passed in intent"

    invoke-interface {v0, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 2483
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v2, -0x140

    const-string v5, "PlayerFragment"

    invoke-direct {v0, v5, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    :cond_4
    move-object v5, v0

    .line 2486
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    .line 2491
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :goto_1
    move-object v7, v0

    move-object v2, p0

    move-object v6, v1

    .line 2486
    invoke-virtual/range {v2 .. v7}, Lo/TC;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 2496
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lo/Uc;->c(I)V

    .line 2497
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n()F

    move-result v0

    iput v0, p0, Lo/TC;->ag:F

    .line 2502
    :cond_7
    iget-object v0, p0, Lo/TC;->Y:Lo/zF;

    invoke-interface {v0}, Lo/zF;->b()V

    .line 2504
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2505
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lo/aeb;->c(Landroid/content/Intent;)V

    .line 2515
    :cond_8
    invoke-virtual {p0}, Lo/TC;->O()V

    .line 2518
    iget-object v0, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    invoke-virtual {v0}, Lo/CameraPrewarmService;->h()Lo/xZ;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2520
    invoke-interface {v0}, Lo/xZ;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a()V

    .line 2523
    :cond_9
    invoke-direct {p0}, Lo/TC;->bi()V

    return-void
.end method

.method public R()V
    .locals 2

    .line 3071
    sget v0, Lo/TC;->x:I

    invoke-direct {p0, v0}, Lo/TC;->j(I)V

    const-string v0, "PlayerFragment"

    const-string v1, "===>> Screen update thread started"

    .line 3072
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public S()V
    .locals 3

    .line 2932
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Uc;->d(J)V

    .line 2933
    invoke-virtual {p0}, Lo/TC;->Z()V

    return-void
.end method

.method public T()V
    .locals 2

    .line 3089
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayerFragment"

    const-string v1, "KEEP_SCREEN: ON"

    .line 3090
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    invoke-virtual {p0}, Lo/TC;->z()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3094
    :cond_0
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v1, p0, Lo/TC;->aA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3095
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v1, p0, Lo/TC;->aw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U()V
    .locals 4

    .line 4002
    invoke-direct {p0}, Lo/TC;->bj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4006
    :cond_0
    invoke-direct {p0}, Lo/TC;->bC()V

    .line 4008
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4010
    iget-object v1, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4011
    new-instance v1, Landroid/util/Rational;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H()I

    move-result v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 4012
    iget-object v2, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e(Landroid/util/Rational;)V

    :cond_1
    const/4 v1, 0x2

    .line 4018
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(I)V

    :cond_2
    return-void
.end method

.method public V()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 3564
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    .line 3565
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3567
    :cond_0
    invoke-virtual {v0}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v1

    invoke-virtual {v1}, Lo/SerializablePermission;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3571
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v2, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unused"

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    sget-object v2, Lo/Ti;->e:Lo/Ti$Application;

    invoke-virtual {v2, v0, v1}, Lo/Ti$Application;->d(Landroid/content/Context;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/Ti;

    move-result-object v1

    .line 3574
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3576
    iget-object v3, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v4, Lo/UP;

    invoke-virtual {v3, v4}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v3

    sget-object v4, Lo/TN;->a:Lo/TN;

    .line 3577
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lo/TQ;

    invoke-direct {v4, p0, v2}, Lo/TQ;-><init>(Lo/TC;Ljava/lang/ref/WeakReference;)V

    new-instance v5, Lo/TP;

    invoke-direct {v5, v2}, Lo/TP;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 3580
    invoke-virtual {v3, v4, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 3601
    invoke-virtual {v1}, Lo/Ti;->c()Lio/reactivex/Observable;

    move-result-object v2

    .line 3602
    invoke-virtual {p0}, Lo/TC;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v3, v4}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v3

    invoke-static {v3}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v3, Lo/TT;

    invoke-direct {v3, p0}, Lo/TT;-><init>(Lo/TC;)V

    new-instance v4, Lo/TR;

    invoke-direct {v4, p0, v1}, Lo/TR;-><init>(Lo/TC;Lo/Ti;)V

    .line 3603
    invoke-interface {v2, v3, v4}, Lcom/uber/autodispose/ObservableSubscribeProxy;->c(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 3612
    invoke-virtual {v1}, Lo/Ti;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 3613
    invoke-virtual {p0}, Lo/TC;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v3, v4}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v3

    invoke-static {v3}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v3, Lo/TF;

    invoke-direct {v3, p0}, Lo/TF;-><init>(Lo/TC;)V

    new-instance v4, Lo/TG;

    invoke-direct {v4, p0, v1}, Lo/TG;-><init>(Lo/TC;Lo/Ti;)V

    .line 3614
    invoke-interface {v2, v3, v4}, Lcom/uber/autodispose/ObservableSubscribeProxy;->c(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 3625
    invoke-virtual {v0}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v2, "frag_dialog"

    invoke-virtual {v1, v0, v2}, Lo/Ti;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    return-void
.end method

.method public V_()V
    .locals 1

    .line 2385
    sget v0, Lo/TC;->b:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lo/TC;->i(I)V

    return-void
.end method

.method public W()Lo/Du$TaskDescription;
    .locals 1

    .line 3432
    iget-object v0, p0, Lo/TC;->aC:Lo/Du$TaskDescription;

    return-object v0
.end method

.method public W_()V
    .locals 1

    .line 2390
    sget v0, Lo/TC;->b:I

    invoke-direct {p0, v0}, Lo/TC;->i(I)V

    return-void
.end method

.method public X()V
    .locals 2

    .line 3466
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_0

    .line 3467
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ab()V

    .line 3469
    :cond_0
    invoke-direct {p0}, Lo/TC;->bu()V

    .line 3470
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/Uc;->c:Z

    return-void
.end method

.method public X_()Z
    .locals 1

    .line 2843
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    instance-of v0, v0, Lo/XT;

    return v0
.end method

.method public Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
    .locals 1

    .line 4275
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-object v0
.end method

.method public Y_()Lo/Uc;
    .locals 1

    .line 2899
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    return-object v0
.end method

.method public Z()V
    .locals 3

    .line 4353
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->e()V

    .line 4354
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Uc;->c(I)V

    .line 4355
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$Callback;->d:Lo/UP$Callback;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public Z_()Landroid/view/View;
    .locals 1

    .line 4280
    invoke-virtual {p0}, Lo/TC;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1431
    invoke-direct {p0, v0}, Lo/TC;->e(I)V

    return-void
.end method

.method public a(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V
    .locals 2

    .line 4684
    iget-object v0, p0, Lo/TC;->R:Lo/Ws;

    invoke-virtual {p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/Ws;->b(Lo/Tv;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 4488
    iput-object p1, p0, Lo/TC;->p:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 2

    const-string v0, "PlayerFragment"

    const-string v1, "restarting activity from pip. "

    .line 4058
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    invoke-direct {p0}, Lo/TC;->aW()V

    .line 4060
    invoke-direct {p0}, Lo/TC;->aM()V

    .line 4061
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4062
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Empty playableId"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 4065
    :cond_0
    new-instance v0, Lo/u$Dialog$TaskDescription;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/u$Dialog$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    .line 4067
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object p2, Lo/u$Dialog;->d:Lo/u$Dialog;

    invoke-virtual {p1, p2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    .line 4068
    invoke-virtual {p1, v0}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    .line 4069
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 8

    .line 931
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    iget-object v1, p0, Lo/TC;->P:Lo/UK;

    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    .line 938
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 932
    invoke-virtual/range {v1 .. v7}, Lo/UK;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    :cond_0
    return-void
.end method

.method public a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 2

    .line 4078
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo/TC;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4079
    new-instance v0, Lo/Tv;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lo/Tv;-><init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    invoke-virtual {p0, v0}, Lo/TC;->b(Lo/Tv;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2838
    iput-boolean p1, p0, Lo/TC;->ap:Z

    return-void
.end method

.method public a(JZJ)Z
    .locals 9

    .line 2823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appending playable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    instance-of v1, v0, Lo/XT;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lo/TC;->ap:Z

    if-eqz v1, :cond_0

    .line 2825
    move-object v8, v0

    check-cast v8, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    .line 2826
    sget-object v2, Lo/UL;->c:Lo/UL;

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v8}, Lo/UL;->a(JZJLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)Z

    move-result p1

    iput-boolean p1, p0, Lo/TC;->aj:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public aA()V
    .locals 0

    .line 4612
    invoke-virtual {p0}, Lo/TC;->v()V

    return-void
.end method

.method public aB()J
    .locals 2

    .line 4607
    iget-object v0, p0, Lo/TC;->r:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public aC()Lo/Tv;
    .locals 1

    .line 4690
    invoke-virtual {p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v0

    return-object v0
.end method

.method public aD()V
    .locals 1

    .line 4695
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->f()V

    return-void
.end method

.method public aE()V
    .locals 0

    .line 4679
    invoke-virtual {p0}, Lo/TC;->y()V

    return-void
.end method

.method public aF()I
    .locals 1

    .line 4700
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->i()I

    move-result v0

    return v0
.end method

.method public aG()Z
    .locals 1

    .line 4675
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Uc;->h()Z

    move-result v0

    return v0
.end method

.method public aa()V
    .locals 3

    .line 4226
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Uc;->d(J)V

    return-void
.end method

.method public aa_()Lio/reactivex/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation

    .line 4312
    iget-object v0, p0, Lo/TC;->aq:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public ab()Lo/AK;
    .locals 1

    .line 4244
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ac()Z
    .locals 1

    .line 4359
    iget-object v0, p0, Lo/TC;->D:Lo/cz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/cz;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/TC;->D:Lo/cz;

    .line 4360
    invoke-interface {v0}, Lo/cz;->u()Lo/cR;

    move-result-object v0

    invoke-interface {v0}, Lo/cR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ad()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 4462
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public ae()Lo/AK;
    .locals 1

    .line 4468
    invoke-virtual {p0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    return-object v0
.end method

.method public af()V
    .locals 0

    .line 4478
    invoke-virtual {p0}, Lo/TC;->Z()V

    return-void
.end method

.method public ag()Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;
    .locals 1

    .line 4446
    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    return-object v0
.end method

.method public ah()V
    .locals 0

    .line 4473
    invoke-virtual {p0}, Lo/TC;->aa()V

    return-void
.end method

.method public ai()Lo/hW;
    .locals 1

    .line 4509
    iget-object v0, p0, Lo/TC;->ab:Lo/hW;

    return-object v0
.end method

.method public aj()V
    .locals 0

    .line 4519
    invoke-virtual {p0}, Lo/TC;->S()V

    return-void
.end method

.method public ak()J
    .locals 2

    .line 4493
    iget-object v0, p0, Lo/TC;->p:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public al()V
    .locals 0

    .line 4503
    invoke-virtual {p0}, Lo/TC;->j()V

    return-void
.end method

.method public am()V
    .locals 0

    .line 4498
    invoke-virtual {p0}, Lo/TC;->a()V

    return-void
.end method

.method public an()V
    .locals 4

    .line 4549
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-nez v0, :cond_0

    return-void

    .line 4552
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->w()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    .line 4554
    iget-object v1, p0, Lo/TC;->f:Lo/CT;

    if-eqz v1, :cond_2

    .line 4555
    sget-object v1, Lo/gq;->d:Lo/gq$TaskDescription;

    invoke-virtual {v1}, Lo/gq$TaskDescription;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4556
    new-instance v1, Lo/SimpleMonthView;

    invoke-virtual {p0}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/TC;->at:Lo/SimpleMonthView$ActionBar;

    invoke-direct {v1, v2, v0, v3}, Lo/SimpleMonthView;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;Lo/SimpleMonthView$ActionBar;)V

    invoke-virtual {v1}, Lo/SimpleMonthView;->show()V

    goto :goto_0

    .line 4558
    :cond_1
    iget-object v1, p0, Lo/TC;->f:Lo/CT;

    invoke-virtual {v1, v0}, Lo/CT;->b(Lcom/netflix/mediaclient/media/Language;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ao()V
    .locals 0

    .line 4524
    invoke-virtual {p0}, Lo/TC;->C()V

    return-void
.end method

.method public ap()V
    .locals 0

    .line 4544
    invoke-virtual {p0}, Lo/TC;->M()V

    return-void
.end method

.method public aq()V
    .locals 0

    .line 4539
    invoke-virtual {p0}, Lo/TC;->T()V

    return-void
.end method

.method public ar()V
    .locals 0

    .line 4534
    invoke-virtual {p0}, Lo/TC;->P()V

    return-void
.end method

.method public as()Z
    .locals 1

    .line 4597
    invoke-virtual {p0}, Lo/TC;->ac()Z

    move-result v0

    return v0
.end method

.method public at()Lo/agg;
    .locals 1

    .line 4566
    invoke-virtual {p0}, Lo/TC;->D()Lo/agg;

    move-result-object v0

    return-object v0
.end method

.method public au()Z
    .locals 1

    .line 4586
    invoke-direct {p0}, Lo/TC;->bD()Z

    move-result v0

    return v0
.end method

.method public av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
    .locals 1

    .line 4592
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-object v0
.end method

.method public aw()V
    .locals 0

    .line 4581
    invoke-virtual {p0}, Lo/TC;->I()V

    return-void
.end method

.method public ax()V
    .locals 2

    .line 4644
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Uc;->c(I)V

    return-void
.end method

.method public ay()Z
    .locals 1

    .line 4634
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Uc;->g()Z

    move-result v0

    return v0
.end method

.method public az()Z
    .locals 1

    .line 4660
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Uc;->d()Z

    move-result v0

    return v0
.end method

.method public b(F)V
    .locals 3

    .line 2029
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-nez v0, :cond_0

    .line 2030
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "mVideoView should not be null in _playerBrightnessChanged()"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 2034
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScreenBrightnessValue(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    .line 2036
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScreenBrightnessValue(F)V

    goto :goto_0

    .line 2038
    :cond_2
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScreenBrightnessValue(F)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;)V
    .locals 3

    .line 2064
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->b:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2065
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->skipIntroButton:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 2066
    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lo/TC;->ad:J

    goto :goto_0

    .line 2067
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->a:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    if-ne p1, v0, :cond_1

    .line 2068
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->skipRecapButton:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 2069
    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lo/TC;->ad:J

    goto :goto_0

    .line 2070
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    if-ne p1, v0, :cond_2

    .line 2071
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->skipContentButton:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 2072
    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lo/TC;->ad:J

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 2904
    iget-object v0, p0, Lo/TC;->E:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;J)V
    .locals 6

    .line 912
    iput-wide p5, p0, Lo/TC;->A:J

    .line 915
    iget-object p5, p0, Lo/TC;->O:Lo/Ah;

    if-eqz p5, :cond_0

    .line 916
    sget-object v5, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/TC;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    :cond_0
    return-void
.end method

.method public b(Lo/Tv;)V
    .locals 5

    .line 4096
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 4099
    invoke-virtual {p1}, Lo/Tv;->i()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PlayerFragment"

    const-string v3, "CUSNP PlaybackVideoWrapper is %s"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4100
    invoke-static {}, Lo/fd;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4101
    iput-boolean v2, p0, Lo/TC;->ap:Z

    .line 4104
    iput-boolean v2, p0, Lo/TC;->aj:Z

    .line 4109
    :cond_1
    invoke-direct {p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4111
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c()V

    .line 4112
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4114
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->e(Z)V

    .line 4117
    :cond_2
    invoke-static {}, Lo/fg;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4118
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e()V

    .line 4122
    :cond_3
    invoke-direct {p0, p1}, Lo/TC;->e(Lo/Tv;)V

    .line 4124
    invoke-virtual {p0}, Lo/TC;->P()V

    .line 4126
    invoke-virtual {p0}, Lo/TC;->j()V

    .line 4128
    invoke-virtual {p0}, Lo/TC;->X()V

    .line 4131
    iput-object p1, p0, Lo/TC;->i:Lo/Tv;

    .line 4132
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 4134
    iput-object v1, p0, Lo/TC;->h:Lo/Tv;

    .line 4135
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1, v2}, Lo/Uc;->d(Z)V

    .line 4139
    :cond_4
    invoke-virtual {p0}, Lo/TC;->L()V

    .line 4141
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1, v2}, Lo/Uc;->a(Z)V

    .line 4142
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1, v2}, Lo/Uc;->e(Z)V

    .line 4143
    iget-object v1, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v1, :cond_5

    .line 4144
    invoke-virtual {p0}, Lo/TC;->ac()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlaybackBackgroundable(Z)V

    .line 4147
    :cond_5
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->a:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    iput-object v2, v1, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 4148
    iget-object v1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    new-instance v3, Lo/UP$BroadcastReceiver;

    iget-object v4, p0, Lo/TC;->i:Lo/Tv;

    invoke-direct {v3, v4}, Lo/UP$BroadcastReceiver;-><init>(Lo/Tv;)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 4150
    invoke-virtual {p1}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4151
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-17130 Start playback with null videoId"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 4152
    invoke-virtual {p0}, Lo/TC;->v()V

    .line 4156
    :cond_6
    new-instance v1, Lo/TL;

    invoke-direct {v1, p0, v0, p1}, Lo/TL;-><init>(Lo/TC;ZLo/Tv;)V

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Z)V
    .locals 4

    const-string v0, "onWindowFocusChanged done"

    const-string v1, "PlayerFragment"

    .line 2687
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====> In focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    invoke-virtual {p0}, Lo/TC;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lo/TC;->aP()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 2694
    iget-object p1, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2695
    invoke-direct {p0, v2}, Lo/TC;->g(I)V

    goto :goto_0

    .line 2697
    :cond_1
    invoke-direct {p0, v2}, Lo/TC;->e(I)V

    .line 2700
    :goto_0
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public varargs b([Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;)Z
    .locals 6

    .line 1812
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1814
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "play_launched_by"

    .line 1815
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1816
    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->i:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 1817
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "PlayerFragment"

    const-string v5, "launchDetailScreenIfRequired launchedBy=%d"

    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-ltz v0, :cond_1

    .line 1818
    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->values()[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1819
    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->values()[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    move-result-object v3

    aget-object v0, v3, v0

    .line 1820
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    if-ne v0, v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public c(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2858
    invoke-super {p0, p1, v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1480
    invoke-virtual {p0, p1, v0}, Lo/TC;->c(IZ)V

    return-void
.end method

.method public c(IZ)V
    .locals 2

    .line 1492
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/Uc;->g:Z

    .line 1493
    iput-boolean v1, v0, Lo/Uc;->a:Z

    .line 1494
    invoke-direct {p0, p1, p2}, Lo/TC;->a(IZ)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 2

    .line 4365
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    .line 4366
    sget-object p2, Lo/Vq;->b:Lo/Vq;

    invoke-virtual {p2, p1}, Lo/Vq;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4368
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4371
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "log segment transition. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PlayerFragment"

    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4372
    iget-object p2, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v0, Lo/UP;

    new-instance v1, Lo/UP$VoiceInteractor;

    invoke-direct {v1, p1}, Lo/UP$VoiceInteractor;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    invoke-virtual {p2, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method

.method public varargs c(Lo/Tv;[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1839
    :cond_0
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1841
    invoke-virtual {p0, p2}, Lo/TC;->b([Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lo/TC;->F:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 1842
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "PlayerFragment"

    const-string v2, "launchDetailScreenIfRequired launchDetailsScreen=%b"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_5

    .line 1844
    invoke-virtual {p1}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v7

    .line 1845
    invoke-virtual {p1}, Lo/Tv;->i()Lo/AK;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1846
    invoke-virtual {p1}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    .line 1847
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p2, v0, :cond_3

    .line 1848
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :cond_3
    move-object v4, p2

    .line 1851
    iget-boolean p2, p0, Lo/TC;->F:Z

    if-eqz p2, :cond_4

    .line 1852
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAndRemoveTask()V

    .line 1854
    :cond_4
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {p1}, Lo/Tv;->i()Lo/AK;

    move-result-object p2

    invoke-interface {p2}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lo/Tv;->i()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v6

    const-string v8, "PlayerFragment"

    invoke-static/range {v3 .. v8}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public c(Lo/UP;)V
    .locals 2

    .line 4629
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    invoke-virtual {v0, v1, p1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2833
    iput-boolean p1, p0, Lo/TC;->aj:Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 3925
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Tv;->d()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Lo/Bi;)Z
    .locals 1

    .line 4725
    invoke-static {p1}, Lo/RL;->f(Lo/Bi;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4729
    invoke-static {}, Lo/fg;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4730
    invoke-direct {p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4731
    invoke-direct {p0}, Lo/TC;->by()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o()Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public d()V
    .locals 2

    .line 2411
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v0

    .line 2412
    instance-of v1, v0, Lo/DatePickerCalendarDelegate$Activity;

    if-eqz v1, :cond_0

    .line 2416
    check-cast v0, Lo/DatePickerCalendarDelegate$Activity;

    invoke-interface {v0}, Lo/DatePickerCalendarDelegate$Activity;->d()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 6

    .line 4215
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_0

    .line 4216
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v2, v0

    long-to-int v4, v2

    const/4 v5, 0x0

    .line 4218
    invoke-virtual {p0, v4, v5}, Lo/TC;->c(IZ)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 4220
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "PlayerFragment"

    const-string v0, "seekWithOffset currentPosition=%d offset=%d, newPosition=%d"

    .line 4219
    invoke-static {p1, v0, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public d(IZ)V
    .locals 1

    .line 4617
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4621
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4622
    iget-object p1, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 4623
    invoke-direct {p0}, Lo/TC;->aJ()V

    :cond_1
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 4514
    iput-object p1, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-void
.end method

.method public d(Ljava/lang/Long;)V
    .locals 0

    .line 4483
    iput-object p1, p0, Lo/TC;->r:Ljava/lang/Long;

    return-void
.end method

.method public d(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZZILcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
    .locals 0

    .line 3326
    invoke-direct/range {p0 .. p7}, Lo/TC;->a(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZZILcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    return-void
.end method

.method public d(Lo/Tv;)V
    .locals 0

    .line 4576
    invoke-virtual {p0, p1}, Lo/TC;->b(Lo/Tv;)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 2054
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v1, Lcom/netflix/cl/model/AppView;->playbackControls:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lo/TC;->af:J

    goto :goto_0

    .line 2056
    :cond_0
    iget-wide v0, p0, Lo/TC;->af:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/cl/model/event/session/Session;->doesSessionExist(Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2057
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-wide v0, p0, Lo/TC;->af:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 2727
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Uc;->d(J)V

    .line 2728
    invoke-virtual {p0}, Lo/TC;->Z()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/16 v2, 0x6f

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x54

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x52

    if-ne p1, v2, :cond_2

    .line 2747
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    return v1

    .line 2749
    :cond_2
    invoke-direct {p0, p1, p2}, Lo/TC;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 2731
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {p1}, Lo/Uc;->k()Z

    move-result p1

    const-string p2, "PlayerFragment"

    if-eqz p1, :cond_5

    const-string p1, "Back used to dismiss interrupter overlay, send it back to framework"

    .line 2732
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    const-string p1, "Back..."

    .line 2736
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a()V

    .line 2740
    invoke-virtual {p0}, Lo/TC;->i()Z

    .line 2741
    invoke-virtual {p0}, Lo/TC;->v()V

    return v1
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Z
    .locals 4

    .line 3956
    invoke-virtual {p0}, Lo/TC;->U_()Lo/Am;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3961
    :cond_0
    invoke-static {p1}, Lo/RL;->c(Ljava/lang/String;)Lo/Bi;

    move-result-object v0

    .line 3962
    invoke-virtual {p0, v0}, Lo/TC;->c(Lo/Bi;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3963
    invoke-interface {v0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v2, :cond_2

    .line 3964
    invoke-direct {p0}, Lo/TC;->aW()V

    .line 3965
    invoke-direct {p0}, Lo/TC;->aM()V

    .line 3967
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3968
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "SPY-16126 Empty playableId"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return v1

    .line 3971
    :cond_1
    new-instance v0, Lo/u$Dialog$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v3, -0x1

    invoke-direct {v0, p1, v2, p2, v3}, Lo/u$Dialog$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    .line 3973
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object p2, Lo/u$Dialog;->d:Lo/u$Dialog;

    invoke-virtual {p1, p2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    .line 3974
    invoke-virtual {p1, v0}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    .line 3975
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method public e()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 0

    return-object p0
.end method

.method public e(IZ)V
    .locals 0

    .line 4529
    invoke-virtual {p0, p1, p2}, Lo/TC;->c(IZ)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    .line 2863
    invoke-static {}, Lo/aeB;->a()Z

    if-eqz p1, :cond_1

    .line 2865
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2867
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setAudioTrack(Lcom/netflix/mediaclient/media/AudioSource;)V

    .line 2868
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleTrack(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    .line 2869
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->commit()V

    .line 2870
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 2874
    :cond_0
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2875
    invoke-virtual {p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2877
    iget-object v0, p0, Lo/TC;->R:Lo/Ws;

    invoke-virtual {p0}, Lo/TC;->r()Lo/Tv;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lo/Ws;->b(Lo/Tv;Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V

    :cond_1
    const-string p1, "PlayerFragment"

    const-string v0, "Language change should be completed"

    .line 2881
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 5

    .line 3214
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 3217
    instance-of v0, p1, Lo/sS;

    if-eqz v0, :cond_0

    .line 3218
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    new-instance v2, Lo/UP$ActionBar;

    .line 3219
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lo/UP$ActionBar;-><init>(Ljava/lang/String;)V

    .line 3218
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void

    .line 3223
    :cond_0
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    new-instance v2, Lo/UP$ComponentCallbacks;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->d()I

    move-result v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/UP$ComponentCallbacks;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 3225
    instance-of v0, p1, Lo/sY;

    if-eqz v0, :cond_1

    .line 3226
    new-instance v0, Lo/TC$16;

    invoke-direct {v0, p0, p1}, Lo/TC$16;-><init>(Lo/TC;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    invoke-virtual {p0, v0}, Lo/TC;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3253
    :cond_1
    instance-of v0, p1, Lo/sN;

    if-eqz v0, :cond_2

    .line 3254
    new-instance v0, Lo/TC$18;

    invoke-direct {v0, p0, p1}, Lo/TC$18;-><init>(Lo/TC;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    invoke-virtual {p0, v0}, Lo/TC;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3275
    :cond_2
    new-instance v0, Lcom/netflix/cl/model/Error;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/TC;->e(Lcom/netflix/cl/model/Error;)V

    .line 3278
    invoke-direct {p0}, Lo/TC;->aT()V

    .line 3282
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3283
    invoke-static {p0, p1}, Lo/Uy;->c(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/hR;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3285
    invoke-interface {p1}, Lo/hR;->d()Lo/hK;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3287
    iget-object v0, p0, Lo/TC;->Y:Lo/zF;

    if-eqz v0, :cond_4

    .line 3288
    invoke-interface {v0, p1}, Lo/zF;->d(Lo/hR;)Z

    goto :goto_0

    .line 3293
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We got a playback error but did not show it to the user because we are in postplay. Error was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public e(Lio/reactivex/subjects/Subject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;)V"
        }
    .end annotation

    .line 4306
    iput-object p1, p0, Lo/TC;->aq:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1545
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setZoom(Z)V

    :cond_0
    return-void
.end method

.method public e(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 1

    .line 3631
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-nez v0, :cond_0

    .line 3632
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "playback called on null playback item"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 3633
    invoke-virtual {p0}, Lo/TC;->v()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3636
    sget-object p1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3637
    iget-object p1, p0, Lo/TC;->i:Lo/Tv;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/Tv;->b(Z)V

    .line 3638
    invoke-direct {p0}, Lo/TC;->aR()V

    goto :goto_0

    :cond_1
    const-string p1, "PlayerFragment"

    const-string p2, "Age/Pin verification failed cannot proceed - close playback"

    .line 3640
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    invoke-virtual {p0}, Lo/TC;->v()V

    :goto_0
    return-void
.end method

.method public e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2708
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    .line 2710
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2711
    invoke-virtual {p0}, Lo/TC;->a()V

    goto :goto_0

    .line 2713
    :cond_1
    invoke-virtual {p0}, Lo/TC;->j()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f(Z)V
    .locals 0

    .line 4602
    invoke-virtual {p0, p1}, Lo/TC;->e(Z)V

    return-void
.end method

.method public synthetic g()Landroid/content/Context;
    .locals 1

    .line 255
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    .line 4639
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Uc;->j(Z)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 4654
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Uc;->b(Z)V

    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 4649
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Uc;->h(Z)V

    return-void
.end method

.method public i()Z
    .locals 6

    const-string v0, "PlayerFragment"

    const-string v1, "handleBackPressed"

    .line 3490
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->k()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3492
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0, v2}, Lo/Uc;->j(Z)V

    .line 3493
    iget-object v0, p0, Lo/TC;->r:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 3494
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lo/TC;->r:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 3495
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/TC;->r:Ljava/lang/Long;

    .line 3498
    :cond_0
    invoke-virtual {p0}, Lo/TC;->j()V

    return v1

    .line 3500
    :cond_1
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->d:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne v0, v3, :cond_2

    .line 3501
    invoke-virtual {p0}, Lo/TC;->B()V

    return v1

    .line 3503
    :cond_2
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne v0, v3, :cond_5

    .line 3504
    invoke-virtual {p0}, Lo/TC;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 3508
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v3, Lo/UP;

    new-instance v4, Lo/UP$SQLiteClosable;

    invoke-direct {v4, v2}, Lo/UP$SQLiteClosable;-><init>(Z)V

    .line 3509
    invoke-virtual {v0, v3, v4}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return v1

    :cond_4
    return v2

    .line 3517
    :cond_5
    invoke-direct {p0}, Lo/TC;->bb()V

    .line 3518
    invoke-direct {p0}, Lo/TC;->aX()V

    .line 3519
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->g:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lo/TC;->c(Lo/Tv;[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;)V

    return v2
.end method

.method public isLoadingData()Z
    .locals 1

    .line 2938
    iget-boolean v0, p0, Lo/TC;->I:Z

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1460
    invoke-direct {p0, v0}, Lo/TC;->g(I)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 4665
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Uc;->a(Z)V

    return-void
.end method

.method public k()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    .line 2614
    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Lo/AK;
    .locals 1

    .line 2663
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2666
    :cond_0
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    return-object v0
.end method

.method public n(Z)V
    .locals 1

    .line 4670
    invoke-virtual {p0}, Lo/TC;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Uc;->e(Z)V

    return-void
.end method

.method public n()Z
    .locals 4

    const-string v0, "PlayerFragment"

    const-string v1, "performUpAction"

    .line 1800
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 1802
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->backButton:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v2, Lcom/netflix/cl/model/event/session/command/BackCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/BackCommand;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 1803
    invoke-direct {p0}, Lo/TC;->bb()V

    .line 1805
    invoke-direct {p0}, Lo/TC;->aX()V

    .line 1806
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->g:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->c:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lo/TC;->c(Lo/Tv;[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;)V

    return v3
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 3847
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_0

    .line 3848
    invoke-virtual {v0}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    return-object v0

    .line 3851
    :cond_0
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PlayerFragment"

    if-nez v0, :cond_1

    .line 3852
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v2, -0x141

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 3855
    :cond_1
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_play_context"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-nez v0, :cond_2

    .line 3857
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v2, -0x142

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1556
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1557
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const-string v1, "PlayerFragment"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "keyboard out"

    .line 1558
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1559
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_1

    const-string v0, "keyboard in"

    .line 1560
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1564
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_2

    .line 1565
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v0, Lo/UP;

    new-instance v1, Lo/UP$SharedElementCallback;

    invoke-direct {v1, v3, v3}, Lo/UP$SharedElementCallback;-><init>(ZZ)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_1

    .line 1568
    :cond_2
    iget-object p1, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v0, Lo/UP;

    new-instance v1, Lo/UP$SharedElementCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lo/UP$SharedElementCallback;-><init>(ZZ)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1573
    :cond_3
    :goto_1
    invoke-static {}, Lo/fa;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/TC;->T:Lo/pz;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1574
    invoke-virtual {p0}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/aek;->i(Landroid/content/Context;)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object p1

    .line 1575
    iget-object v0, p0, Lo/TC;->T:Lo/pz;

    invoke-interface {v0}, Lo/pz;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result p1

    if-eq v0, p1, :cond_4

    .line 1576
    invoke-virtual {p0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    invoke-virtual {p0}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->i(Landroid/content/Context;)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 516
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 518
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "CL_START_PLAY_SESSION_ID"

    .line 520
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/TC;->A:J

    const-string v0, "player_extras"

    .line 521
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->l()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object p1

    iput-object p1, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    .line 527
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object p1

    iput-object p1, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    .line 528
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-static {p1}, Lo/adk;->b(Landroid/app/Activity;)V

    .line 531
    invoke-virtual {p0}, Lo/TC;->z()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 532
    iget-object p1, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {p1}, Lo/Uc;->a()V

    .line 538
    iget-object p1, p0, Lo/TC;->j:Lo/Uc;

    iget-object p1, p1, Lo/Uc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 540
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    iget-object v1, p0, Lo/TC;->au:Lo/CT$TaskDescription;

    invoke-static {p1, v0, v1}, Lo/CT;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLo/CT$TaskDescription;)Lo/CT;

    move-result-object p1

    iput-object p1, p0, Lo/TC;->f:Lo/CT;

    .line 542
    new-instance p1, Lo/TY;

    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lo/TY;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V

    iput-object p1, p0, Lo/TC;->z:Lo/TY;

    .line 545
    iget-object p1, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->e:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne p1, v0, :cond_1

    .line 546
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-static {p1}, Lo/adk;->k(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 547
    new-instance p1, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    new-instance v0, Lo/TC$23;

    invoke-direct {v0, p0}, Lo/TC$23;-><init>(Lo/TC;)V

    .line 564
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;Landroid/app/Activity;)V

    iput-object p1, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    .line 567
    :cond_1
    invoke-static {}, Lo/fd;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 568
    iput-boolean p1, p0, Lo/TC;->aj:Z

    .line 571
    :cond_2
    invoke-static {}, Lo/afB;->a()V

    .line 572
    invoke-direct {p0}, Lo/TC;->aL()V

    .line 573
    invoke-virtual {p0}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lo/TC;->aa:Landroid/view/accessibility/AccessibilityManager;

    .line 574
    iget-object p1, p0, Lo/TC;->aa:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_3

    .line 575
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 606
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->dO:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/TC;->E:Landroid/view/ViewGroup;

    .line 608
    iget-object p1, p0, Lo/TC;->E:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroy()V
    .locals 6

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====> Destroying PlayerFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/TC;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-wide v2, p0, Lo/TC;->A:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1143
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-wide v2, p0, Lo/TC;->A:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 1144
    iput-wide v4, p0, Lo/TC;->A:J

    .line 1147
    :cond_0
    iget-wide v2, p0, Lo/TC;->af:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/cl/model/event/session/Session;->doesSessionExist(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-wide v2, p0, Lo/TC;->af:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 1151
    :cond_1
    iget-wide v2, p0, Lo/TC;->ad:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/cl/model/event/session/Session;->doesSessionExist(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-wide v2, p0, Lo/TC;->ad:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 1155
    :cond_2
    iget-object v0, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    iget-object v2, p0, Lo/TC;->av:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lo/CameraPrewarmService;->b(Ljava/lang/Runnable;)V

    .line 1157
    iget-object v0, p0, Lo/TC;->S:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 1159
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1160
    invoke-virtual {p0}, Lo/TC;->v()V

    .line 1163
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lo/MimeTypeMap;->d(Z)V

    .line 1165
    invoke-virtual {p0}, Lo/TC;->z()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1166
    invoke-direct {p0}, Lo/TC;->bs()V

    .line 1168
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v3, p0, Lo/TC;->aA:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1169
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    iget-object v3, p0, Lo/TC;->aw:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1171
    iget-object v0, p0, Lo/TC;->z:Lo/TY;

    if-eqz v0, :cond_4

    .line 1172
    invoke-virtual {v0}, Lo/TY;->c()V

    .line 1175
    :cond_4
    invoke-static {v2}, Lo/afB;->a(Z)V

    .line 1177
    invoke-direct {p0}, Lo/TC;->aI()V

    .line 1178
    iget-object v0, p0, Lo/TC;->aa:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_5

    .line 1179
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 1182
    :cond_5
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    const-string v0, "====> Destroying PlayerFragment done"

    .line 1184
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string p2, "PlayerFragment"

    const-string v0, "onManagerReady"

    .line 2439
    invoke-static {p2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    iget-object v0, p0, Lo/TC;->N:Lo/TS;

    invoke-virtual {v0, p1}, Lo/TS;->b(Lo/Am;)V

    .line 2442
    invoke-virtual {p1}, Lo/Am;->Z()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lo/aek;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Amazon device is not allowed on mobile only plan, exit..."

    .line 2443
    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    invoke-virtual {p0}, Lo/TC;->v()V

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    const-string p1, "PlayerFragment"

    const-string p2, "NetflixService is NOT available!"

    .line 2528
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    invoke-virtual {p0}, Lo/TC;->v()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1103
    invoke-direct {p0}, Lo/TC;->aP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-direct {p0}, Lo/TC;->aN()V

    :cond_0
    const/4 v0, 0x7

    .line 1106
    invoke-direct {p0, v0}, Lo/TC;->a(I)V

    .line 1107
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 3

    .line 4036
    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4037
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPictureInPictureModeChanged(Z)V

    .line 4038
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_1

    .line 4039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPipModeChanged, is PIP?  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 4041
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ag()V

    .line 4042
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlaybackBackgroundable(Z)V

    .line 4043
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 4045
    :cond_0
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->c:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V

    .line 4046
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p0}, Lo/TC;->ac()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlaybackBackgroundable(Z)V

    .line 4047
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$ClipData;->c:Lo/UP$ClipData;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 4049
    :goto_0
    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4050
    iget-object v0, p0, Lo/TC;->G:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1069
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 1071
    invoke-virtual {p0}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adh;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lo/TC;->m(Z)V

    .line 1073
    invoke-direct {p0}, Lo/TC;->aP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    invoke-direct {p0}, Lo/TC;->aO()V

    :cond_0
    const/4 v0, 0x6

    .line 1077
    invoke-direct {p0, v0}, Lo/TC;->a(I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 971
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$ContentResolver;->c:Lo/UP$ContentResolver;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 973
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStart()V

    .line 975
    invoke-virtual {p0}, Lo/TC;->T()V

    .line 977
    invoke-direct {p0}, Lo/TC;->aP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    invoke-direct {p0}, Lo/TC;->aO()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1112
    invoke-direct {p0}, Lo/TC;->aP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    invoke-direct {p0}, Lo/TC;->aN()V

    .line 1116
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    .line 1118
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$PictureInPictureParams;->c:Lo/UP$PictureInPictureParams;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1120
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const-string v1, "PlayerFragment"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    :cond_1
    invoke-direct {p0}, Lo/TC;->bb()V

    const-string v0, "PlayerActivity::onStop done, player is backgrounded"

    .line 1122
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1126
    :cond_2
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    iget-object v0, v0, Lo/Uc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Start play is in progress and user canceled playback"

    .line 1127
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_3
    invoke-virtual {p0}, Lo/TC;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1132
    invoke-direct {p0}, Lo/TC;->aY()V

    goto :goto_0

    .line 1134
    :cond_4
    invoke-virtual {p0}, Lo/TC;->v()V

    :goto_0
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    .line 4705
    invoke-direct {p0, p1}, Lo/TC;->m(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 613
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 615
    invoke-virtual {p0}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "player_extras"

    .line 619
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    if-eqz p2, :cond_0

    .line 621
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i()Z

    move-result v1

    .line 622
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->k()Lcom/netflix/cl/model/AppView;

    move-result-object p2

    iput-object p2, p0, Lo/TC;->ae:Lcom/netflix/cl/model/AppView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 625
    :goto_0
    iget-object p2, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {p2, v1}, Lo/Uc;->c(Z)V

    .line 628
    iget-object p2, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 629
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v8, v1

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    .line 634
    :goto_2
    new-instance v2, Lo/UQ;

    iget-object p2, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v0, Lo/UP;

    .line 636
    invoke-virtual {p2, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v4

    iget-object v5, p0, Lo/TC;->P:Lo/UK;

    iget-object p2, p0, Lo/TC;->o:Lo/UpdateEngine;

    .line 638
    invoke-virtual {p2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v6

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lo/UQ;-><init>(Lo/UI;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;Landroid/view/View;Z)V

    .line 643
    invoke-virtual {p0}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adh;->d(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lo/TC;->m(Z)V

    .line 645
    iget-object p1, p0, Lo/TC;->S:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lo/TC;->P:Lo/UK;

    invoke-virtual {p2}, Lo/UK;->d()Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lo/TC$24;

    invoke-direct {v0, p0}, Lo/TC$24;-><init>(Lo/TC;)V

    .line 646
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p2

    check-cast p2, Lio/reactivex/disposables/Disposable;

    .line 645
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 711
    iget-object p1, p0, Lo/TC;->S:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lo/TC;->R:Lo/Ws;

    invoke-virtual {p2}, Lo/Ws;->d()Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lo/TC$22;

    invoke-direct {v0, p0}, Lo/TC$22;-><init>(Lo/TC;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p2

    check-cast p2, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 738
    iget-object p1, p0, Lo/TC;->W:Lo/CameraPrewarmService;

    iget-object p2, p0, Lo/TC;->av:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lo/CameraPrewarmService;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p()Landroid/os/Handler;
    .locals 1

    .line 3305
    iget-object v0, p0, Lo/TC;->B:Landroid/os/Handler;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1194
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Lo/Tv;
    .locals 1

    .line 4025
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v0}, Lo/Uc;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4026
    iget-object v0, p0, Lo/TC;->h:Lo/Tv;

    return-object v0

    .line 4028
    :cond_0
    iget-object v0, p0, Lo/TC;->i:Lo/Tv;

    return-object v0
.end method

.method public v()V
    .locals 3

    const-string v0, "PlayerFragment"

    const-string v1, "cleanupAndExit"

    .line 1885
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    invoke-direct {p0}, Lo/TC;->aX()V

    .line 1887
    iget-object v1, p0, Lo/TC;->j:Lo/Uc;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    iput-object v2, v1, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    const-string v1, "cleanupAndExit calling finish"

    .line 1889
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    invoke-virtual {p0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    invoke-direct {p0}, Lo/TC;->aM()V

    :cond_0
    return-void
.end method

.method public x()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
    .locals 1

    .line 4318
    iget-object v0, p0, Lo/TC;->ah:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    return-object v0
.end method

.method public y()V
    .locals 3

    .line 4295
    invoke-direct {p0}, Lo/TC;->bC()V

    .line 4297
    iget-object v0, p0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    new-instance v2, Lo/UP$Canvas;

    invoke-direct {v2}, Lo/UP$Canvas;-><init>()V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 4298
    iget-object v0, p0, Lo/TC;->j:Lo/Uc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Uc;->a(Z)V

    .line 4299
    iget-object v0, p0, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4300
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlaybackBackgroundable(Z)V

    :cond_0
    return-void
.end method

.method public z()Landroid/view/Window;
    .locals 1

    .line 1189
    invoke-virtual {p0}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method
