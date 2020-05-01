.class public final Lo/Ii;
.super Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ii$TaskDescription;,
        Lo/Ii$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/Ii$Activity;

.field private static m:J


# instance fields
.field private b:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

.field private e:Lo/Ii$TaskDescription;

.field private f:I

.field private g:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

.field private final h:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:I

.field private k:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

.field private o:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ii$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ii$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ii;->a:Lo/Ii$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Ii;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Ii;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    .line 52
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<IPlayer.PlaybackError>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Ii;->h:Lio/reactivex/subjects/PublishSubject;

    .line 66
    new-instance p1, Lo/Ii$4;

    invoke-direct {p1, p0}, Lo/Ii$4;-><init>(Lo/Ii;)V

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setErrorListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V

    .line 70
    new-instance p1, Lo/Ii$2;

    invoke-direct {p1, p0}, Lo/Ii$2;-><init>(Lo/Ii;)V

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V

    .line 117
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->f()Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    move-result-object p1

    iput-object p1, p0, Lo/Ii;->k:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 23
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Ii;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lo/Ii;)I
    .locals 0

    .line 23
    iget p0, p0, Lo/Ii;->f:I

    return p0
.end method

.method public static final synthetic b(Lo/Ii;)I
    .locals 0

    .line 23
    iget p0, p0, Lo/Ii;->j:I

    return p0
.end method

.method public static final synthetic c(Lo/Ii;)Lo/Ii$TaskDescription;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Ii;->e:Lo/Ii$TaskDescription;

    return-object p0
.end method

.method public static final synthetic d(Lo/Ii;)Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Ii;->g:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    return-object p0
.end method

.method public static final synthetic d(Lo/Ii;I)V
    .locals 0

    .line 23
    iput p1, p0, Lo/Ii;->f:I

    return-void
.end method

.method public static final synthetic e(Lo/Ii;)Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Ii;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    return-object p0
.end method

.method public static final synthetic e(Lo/Ii;JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z
    .locals 0

    .line 23
    invoke-super/range {p0 .. p10}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 35
    invoke-virtual {p0}, Lo/Ii;->n()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-wide v0, Lo/Ii;->m:J

    invoke-virtual {p0}, Lo/Ii;->n()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "TrailerVideoView"

    const-string v1, "reset"

    .line 112
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lo/Ii;->o:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b()V

    return-void
.end method

.method public b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    const-string v0, "group"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playableId"

    invoke-static {v13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experience"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmark"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const-string v2, "TrailerVideoView"

    const-string v3, "attachPlaybackSession %s"

    .line 89
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    iput v1, v12, Lo/Ii;->f:I

    .line 91
    iget-object v0, v12, Lo/Ii;->o:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 92
    :cond_0
    iget-object v0, v12, Lo/Ii;->h:Lio/reactivex/subjects/PublishSubject;

    .line 93
    iget-wide v1, v12, Lo/Ii;->i:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/subjects/PublishSubject;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 94
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v8

    const-string v0, "retryPlaybackErrors\n    \u2026dSchedulers.mainThread())"

    invoke-static {v8, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v16, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v17, v8

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;-><init>(Lo/Ii;Ljava/lang/String;JLo/Ab;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)V

    move-object/from16 v5, v16

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 105
    sget-object v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$2;->a:Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$2;

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v2, v17

    .line 95
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, v12, Lo/Ii;->o:Lio/reactivex/disposables/Disposable;

    .line 108
    invoke-super/range {p0 .. p10}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/Ii;->k:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    return-object v0
.end method

.method public h()Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->h()Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setErrorListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lo/Ii;->g:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    return-void
.end method

.method public setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/Ii;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    return-void
.end method

.method public final setRetryPolicy(Lo/Ii$TaskDescription;IJ)V
    .locals 0

    .line 140
    iput-object p1, p0, Lo/Ii;->e:Lo/Ii$TaskDescription;

    .line 141
    iput p2, p0, Lo/Ii;->j:I

    .line 142
    iput-wide p3, p0, Lo/Ii;->i:J

    return-void
.end method

.method public final setViewInFocus(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 132
    sput-wide p1, Lo/Ii;->m:J

    :cond_0
    return-void
.end method

.method public setViewInFocus(Z)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lo/Ii;->n()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lo/Ii;->setViewInFocus(JZ)V

    return-void
.end method
