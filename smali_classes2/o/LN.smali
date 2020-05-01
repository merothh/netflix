.class public final Lo/LN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TU;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LN$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/LN$ActionBar;


# instance fields
.field private b:Z

.field private final c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

.field private d:Lo/LO;

.field private e:Z

.field private g:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LN$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LN$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/LN;->a:Lo/LN$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    check-cast p1, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iput-object p1, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    return-void
.end method

.method private final a()V
    .locals 2

    .line 292
    iget-boolean v0, p0, Lo/LN;->e:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/LN;->f()Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lo/LN;->e:Z

    .line 296
    iget-object v0, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideActionAndBottomBars()V

    .line 298
    new-instance v0, Lo/LO;

    iget-object v1, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-direct {v0, v1}, Lo/LO;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)V

    iput-object v0, p0, Lo/LN;->d:Lo/LO;

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/agg;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 178
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/action/StartPlay;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lo/LN$FragmentManager;

    move-object/from16 v9, p2

    invoke-direct {v8, v9, v1}, Lo/LN$FragmentManager;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    check-cast v8, Lcom/netflix/cl/model/TrackingInfo;

    invoke-direct {v3, v6, v7, v8}, Lcom/netflix/cl/model/event/session/action/StartPlay;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v2

    .line 186
    invoke-interface/range {p1 .. p1}, Lo/agg;->S()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lo/agg;->S()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lo/agg;->aq()I

    move-result v3

    .line 188
    :goto_0
    iget-object v6, v0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v6

    const-string v7, "fragment.requireNetflixActivity()"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-static {v6, v7, v1, v8}, Lo/LM;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;Ljava/lang/String;Lo/agg;)I

    move-result v11

    .line 189
    new-instance v6, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v10, v6

    .line 191
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v3

    invoke-virtual {v7, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    .line 192
    invoke-direct/range {p0 .. p0}, Lo/LN;->i()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x17fc

    const/16 v27, 0x0

    .line 189
    invoke-direct/range {v10 .. v27}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    .line 194
    sget-object v3, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d(J)V

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    :cond_1
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    .line 196
    invoke-static/range {v1 .. v6}, Lo/TC;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;JLcom/netflix/mediaclient/ui/player/PlayerExtras;)Lo/TC;

    move-result-object v1

    .line 204
    iget-object v2, v0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d(Z)V

    .line 205
    iget-object v2, v0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/DialerFilter;

    const-string v4, "fragment.playback_container"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lo/DialerFilter;->setVisibility(I)V

    .line 206
    iget-object v2, v0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v2

    invoke-virtual {v2}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v2

    .line 207
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v4, "quick_draw_dp_player"

    invoke-virtual {v2, v3, v1, v4}, Lo/UnsupportedEncodingException;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lo/UnsupportedEncodingException;->e()V

    .line 210
    iget-object v1, v0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "fragment.resources"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 211
    invoke-direct/range {p0 .. p0}, Lo/LN;->a()V

    :cond_2
    return-void
.end method

.method private final a(Lo/agg;Ljava/lang/String;Lo/agg;)V
    .locals 4

    .line 129
    iget-object v0, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "fragment.requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lo/LM;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;Ljava/lang/String;Lo/agg;)I

    move-result p3

    .line 130
    invoke-interface {p1}, Lo/agg;->br()Lo/Ay;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/Ay;->isInteractiveContent()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 133
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 134
    sget-object p3, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->e:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 131
    invoke-static {p2, v2, v3, p3, p1}, Lo/Ae;->a(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Z)Lo/Ae;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p2, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPrepareHelper()Lo/Ag;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/Ag;->b(Lo/Ae;)V

    :cond_1
    return-void
.end method

.method public static final synthetic b(Lo/LN;Lo/agg;Ljava/lang/String;Lo/agg;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lo/LN;->a(Lo/agg;Ljava/lang/String;Lo/agg;)V

    return-void
.end method

.method private final c()V
    .locals 2

    .line 302
    iget-boolean v0, p0, Lo/LN;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lo/LN;->e:Z

    .line 306
    iget-object v0, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showActionAndBottomBars()V

    .line 307
    iget-object v0, p0, Lo/LN;->d:Lo/LO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/LO;->a()V

    const/4 v0, 0x0

    .line 308
    check-cast v0, Lo/LO;

    iput-object v0, p0, Lo/LN;->d:Lo/LO;

    return-void

    .line 307
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.lomo.qddp.FullScreenLayoutHelper"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic c(Lo/LN;Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/agg;)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p5}, Lo/LN;->a(Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/agg;)V

    return-void
.end method

.method private final f()Lcom/netflix/mediaclient/ui/player/IPlayerFragment;
    .locals 2

    .line 312
    iget-object v0, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "quick_draw_dp_player"

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    return-object v0
.end method

.method private final i()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
    .locals 1

    .line 317
    invoke-static {}, Lo/ady;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->e:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    goto :goto_0

    .line 318
    :cond_0
    sget-object v0, Lo/dP;->e:Lo/dP$StateListAnimator;

    invoke-virtual {v0}, Lo/dP$StateListAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    goto :goto_0

    .line 319
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->d:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lo/agg;)Z
    .locals 5

    const-string v0, "video"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lo/LN;->i()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->e:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 71
    :cond_0
    invoke-interface {p1}, Lo/agg;->by()Lo/Bd;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 75
    :cond_1
    invoke-interface {v1}, Lo/Bd;->isAgeProtected()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1}, Lo/Bd;->isPinProtected()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1}, Lo/Bd;->isPreviewProtected()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    invoke-interface {p1}, Lo/agg;->br()Lo/Ay;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lo/Ay;->isInteractiveContent()Z

    move-result v1

    if-ne v1, v3, :cond_3

    return v2

    .line 83
    :cond_3
    iget-object v1, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    move-result-object v1

    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    if-eq v1, v4, :cond_4

    return v2

    .line 91
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->d:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne v0, v1, :cond_6

    .line 92
    invoke-interface {p1}, Lo/agg;->by()Lo/Bd;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lo/Bd;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    const-string p1, "video.id"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :goto_0
    invoke-static {v0}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    .line 95
    check-cast p1, Lo/Bi;

    invoke-static {p1}, Lo/RL;->f(Lo/Bi;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v3

    :cond_7
    :goto_1
    return v2
.end method

.method public final b()Z
    .locals 1

    .line 216
    invoke-direct {p0}, Lo/LN;->f()Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 224
    invoke-direct {p0}, Lo/LN;->a()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lo/LN;->c()V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 231
    iget-object v0, p0, Lo/LN;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 232
    check-cast v0, Lio/reactivex/disposables/Disposable;

    iput-object v0, p0, Lo/LN;->g:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public e()V
    .locals 3

    .line 237
    iget-boolean v0, p0, Lo/LN;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lo/LN;->b:Z

    .line 242
    iget-object v1, p0, Lo/LN;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    const/4 v1, 0x0

    .line 243
    check-cast v1, Lio/reactivex/disposables/Disposable;

    iput-object v1, p0, Lo/LN;->g:Lio/reactivex/disposables/Disposable;

    .line 245
    iget-object v1, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_3

    .line 246
    iget-object v1, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v1

    const-string v2, "quick_draw_dp_player"

    invoke-virtual {v1, v2}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "fragment.childFragmentMa\u2026player with no fragment\")"

    .line 247
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v2

    invoke-virtual {v2}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v2

    .line 249
    invoke-virtual {v2, v1}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lo/UnsupportedEncodingException;->e()V

    .line 251
    iget-object v1, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/DialerFilter;

    const-string v2, "fragment.playback_container"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lo/DialerFilter;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d(Z)V

    goto :goto_0

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closing player with no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lo/LN;->b:Z

    return-void
.end method

.method public e(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 9

    const-string v0, "playable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerExtras"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lo/LN;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lo/LN;->b:Z

    .line 269
    iget-object v0, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    const-string v1, "fragment.childFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v1

    const-string v2, "quick_draw_dp_player"

    invoke-virtual {v1, v2}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "fragment.childFragmentMa\u2026player with no fragment\")"

    .line 273
    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, v1}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    .line 277
    invoke-direct {p0}, Lo/LN;->i()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c(Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;)V

    .line 279
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    .line 278
    invoke-static/range {v3 .. v8}, Lo/TC;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;JLcom/netflix/mediaclient/ui/player/PlayerExtras;)Lo/TC;

    move-result-object p1

    .line 285
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p2, p1, v2}, Lo/UnsupportedEncodingException;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 287
    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->e()V

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lo/LN;->b:Z

    return-void

    .line 273
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closing player with no fragment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final e(Lo/agg;)V
    .locals 4

    const-string v0, "video"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->n()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->e:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    .line 107
    :cond_0
    invoke-interface {p1}, Lo/agg;->by()Lo/Bd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/Bd;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object v1, p0, Lo/LN;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 112
    :cond_2
    invoke-static {v0}, Lo/LM;->a(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 113
    new-instance v2, Lo/LN$Application;

    invoke-direct {v2, p0, p1, v0}, Lo/LN$Application;-><init>(Lo/LN;Lo/agg;Ljava/lang/String;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 116
    new-instance v3, Lo/LN$StateListAnimator;

    invoke-direct {v3, p0, p1, v0}, Lo/LN$StateListAnimator;-><init>(Lo/LN;Lo/agg;Ljava/lang/String;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    .line 112
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/LN;->g:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final e(Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    const-string v0, "video"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->requireActivity()Lo/Serializable;

    move-result-object v0

    const-string v1, "fragment.requireActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/LM;->a(Landroid/app/Activity;)V

    .line 146
    invoke-direct {p0}, Lo/LN;->i()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->d:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne v0, v2, :cond_0

    .line 147
    iget-object v0, p0, Lo/LN;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->requireActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lo/Serializable;->setRequestedOrientation(I)V

    .line 153
    :cond_0
    invoke-interface {p1}, Lo/agg;->by()Lo/Bd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/Bd;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "video.type"

    if-eqz v0, :cond_3

    .line 156
    invoke-interface {p1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_3
    invoke-interface {p1}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video.id"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move-object v1, v2

    .line 164
    :goto_2
    iget-object v2, p0, Lo/LN;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 165
    :cond_4
    invoke-static {v0}, Lo/LM;->a(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v2

    .line 166
    new-instance v9, Lo/LN$TaskDescription;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lo/LN$TaskDescription;-><init>(Lo/LN;Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    check-cast v9, Lio/reactivex/functions/Consumer;

    .line 167
    new-instance v10, Lo/LN$Activity;

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lo/LN$Activity;-><init>(Lo/LN;Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    check-cast v10, Lio/reactivex/functions/Consumer;

    .line 165
    invoke-virtual {v2, v9, v10}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/LN;->g:Lio/reactivex/disposables/Disposable;

    return-void
.end method
