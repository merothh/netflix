.class public abstract Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.super Lo/CookieSyncManager;
.source ""

# interfaces
.implements Lo/DatePickerCalendarDelegate$Activity;
.implements Lo/zT;
.implements Lo/CY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;,
        Lcom/netflix/mediaclient/ui/details/DetailsActivity$StateListAnimator;,
        Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    }
.end annotation


# static fields
.field private static d:Z

.field private static h:Z

.field private static j:Z


# instance fields
.field protected a:I

.field protected b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field protected c:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field private i:Lo/Am;

.field private k:Z

.field private o:Ljava/lang/String;

.field public sharing:Lo/WebViewProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    .line 71
    sget-object v0, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0}, Lcom/netflix/cl/model/AppView;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->a:I

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const-string v1, "DetailsActivity"

    const/16 v2, -0x172

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-void
.end method

.method private A()V
    .locals 5

    const-string v0, "DetailsActivity"

    const-string v1, "handleAddToDownloads"

    .line 459
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    .line 461
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    .line 462
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->i:Lo/Am;

    invoke-virtual {v1}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c:Ljava/lang/String;

    .line 465
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 464
    invoke-interface {v1, v2}, Lo/nS;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    return-void
.end method

.method private B()V
    .locals 1

    const-string v0, "com.netflix.mediaclient.ui.login.ACTION_FINISH_DETAILS_ACTIVITIES"

    .line 419
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V

    return-void
.end method

.method private C()V
    .locals 3

    .line 382
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->p()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v0

    const-string v1, "DetailsActivity"

    if-nez v0, :cond_0

    const-string v0, "No action task specified"

    .line 383
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 387
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->d:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->p()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Action add to my list started"

    .line 388
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->z()V

    goto :goto_0

    .line 391
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->a:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->p()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Action remove from my list started"

    .line 392
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->D()V

    goto :goto_0

    .line 395
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->e:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->p()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Action download started"

    .line 396
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->A()V

    goto :goto_0

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->p()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->b:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    if-ne v0, v2, :cond_4

    const-string v0, "Action like started"

    .line 400
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 401
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c(I)V

    goto :goto_0

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->p()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    if-ne v0, v2, :cond_5

    const-string v0, "Action dislike started"

    .line 404
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 405
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c(I)V

    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->g:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 414
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o:Ljava/lang/String;

    .line 415
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private D()V
    .locals 8

    .line 449
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->i:Lo/Am;

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e:Ljava/lang/String;

    .line 452
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 453
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o:Ljava/lang/String;

    new-instance v7, Lcom/netflix/mediaclient/ui/details/DetailsActivity$StateListAnimator;

    const-string v0, "DetailsActivity"

    invoke-direct {v7, p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;)V

    .line 450
    invoke-interface/range {v2 .. v7}, Lo/zG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_DETAILS_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private c(I)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DetailsActivity"

    const-string v4, "handleRateTitle %s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 472
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Only Thumbs.THUMBS_UP or Thumbs.THUMBS_DOWN are allowed by deeplink action, got %s"

    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->i:Lo/Am;

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->q()I

    move-result v7

    new-instance v8, Lcom/netflix/mediaclient/ui/details/DetailsActivity$5;

    invoke-direct {v8, p0, v2, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$5;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    move v6, p1

    invoke-interface/range {v3 .. v8}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/zU;)Z

    return-void
.end method

.method private e(Landroidx/fragment/app/Fragment;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 520
    instance-of v0, p1, Lo/DatePickerCalendarDelegate$Activity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DetailsActivity"

    const-string v1, "Found frag to execute retry request..."

    .line 523
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    check-cast p1, Lo/DatePickerCalendarDelegate$Activity;

    invoke-interface {p1}, Lo/DatePickerCalendarDelegate$Activity;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic v()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h:Z

    return v0
.end method

.method private w()V
    .locals 2

    .line 161
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "DetailsActivity"

    const-string v1, "Received a start DP TTR session while already tracking another"

    .line 162
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 v0, 0x1

    .line 166
    sput-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h:Z

    .line 167
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startRenderNavigationLevelSession()V

    .line 168
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->p:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 169
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$4;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private x()V
    .locals 2

    .line 247
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d:Z

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 251
    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h:Z

    if-eqz v0, :cond_1

    .line 252
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method static synthetic y()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d:Z

    return v0
.end method

.method private z()V
    .locals 9

    .line 438
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->i:Lo/Am;

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e:Ljava/lang/String;

    .line 441
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 442
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->q()I

    move-result v5

    .line 443
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o:Ljava/lang/String;

    new-instance v8, Lcom/netflix/mediaclient/ui/details/DetailsActivity$StateListAnimator;

    const-string v0, "DetailsActivity"

    invoke-direct {v8, p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;)V

    .line 439
    invoke-interface/range {v2 .. v8}, Lo/zG;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;Lo/zU;)Z

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 180
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h:Z

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Received a end DP TTR session while not tracking any"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 184
    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 185
    sput-boolean p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->j:Z

    const-string p1, "DetailsActivity"

    const-string p2, "Defer DP_TTR end until DP_TTI is complete."

    .line 186
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 190
    sput-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h:Z

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 192
    sget-object p2, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->p:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->flushPerformanceProfilerEvents()V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canShowCastMenuFab()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 0

    return-object p0
.end method

.method public d()V
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e(Landroidx/fragment/app/Fragment;)V

    .line 516
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->i()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 4

    .line 206
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d:Z

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Received a end DP TTI session while not tracking any"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 209
    sput-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d:Z

    .line 210
    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->t:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->logMetadataRenderedEvent(Z)V

    .line 213
    sget-boolean v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->j:Z

    if-eqz v1, :cond_1

    .line 214
    sput-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->j:Z

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 535
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    goto :goto_0

    .line 537
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "DetailsActivity setting playcontext with null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->g:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 571
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e:Ljava/lang/String;

    .line 377
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "videoType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->x()V

    .line 263
    invoke-super {p0}, Lo/CookieSyncManager;->finish()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 197
    sget-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "DetailsActivity"

    const-string v1, "Received a start DP TTI session while already tracking another"

    .line 198
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_0
    const/4 v0, 0x1

    .line 201
    sput-boolean v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d:Z

    .line 202
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->t:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    return-void
.end method

.method public getDataContext()Lo/afC;
    .locals 3

    .line 554
    new-instance v0, Lo/afC;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/afC;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 549
    sget-object v0, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public j()V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->g()V

    .line 157
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->w()V

    return-void
.end method

.method public k()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
    .locals 1

    .line 293
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    return-object v0
.end method

.method protected l()V
    .locals 2

    .line 371
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e:Ljava/lang/String;

    .line 372
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_episode_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public abstract m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
.end method

.method public n()V
    .locals 1

    .line 335
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V

    return-void
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "notification_beacon_sent"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->k:Z

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->j()V

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->l()V

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->g:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_action_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_play_context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 135
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v1}, Lcom/netflix/cl/model/AppView;->ordinal()I

    move-result v1

    const-string v2, "extra_model_view_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->a:I

    .line 139
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->p:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->B()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->x()V

    .line 238
    :cond_0
    invoke-super {p0}, Lo/CookieSyncManager;->onDestroy()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "DetailsActivity"

    const-string v1, "ServiceManager ready"

    .line 308
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->i:Lo/Am;

    .line 311
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->f:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->invalidateOptionsMenu()V

    .line 316
    :cond_0
    new-instance v0, Lo/CO$TaskDescription;

    invoke-direct {v0}, Lo/CO$TaskDescription;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->k()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setupInteractiveTracking(Lo/CO;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    .line 318
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 320
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->i()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 325
    :cond_1
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->k:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 326
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->k:Z

    .line 327
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lo/aeb;->c(Landroid/content/Intent;)V

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->C()V

    .line 330
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->n()V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "DetailsActivity"

    const-string v1, "ServiceManager unavailable"

    .line 360
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 364
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->i()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 657
    invoke-super {p0, p1, p2, p3}, Lo/CookieSyncManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 654
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lo/RL;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 273
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->k:Z

    const-string v1, "notification_beacon_sent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public p()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->g:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method

.method public performUpAction()V
    .locals 2

    const-string v0, "DetailsActivity"

    const-string v1, "performUpAction"

    .line 279
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lo/fG;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c()V

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->finish()V

    goto :goto_0

    .line 285
    :cond_0
    invoke-super {p0}, Lo/CookieSyncManager;->performUpAction()V

    :goto_0
    return-void
.end method

.method public q()I
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v0

    if-gtz v0, :cond_0

    .line 425
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "DetailsActivity invalid trackid!"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Lcom/netflix/mediaclient/ui/details/VideoInfo;
    .locals 4

    .line 431
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoInfo;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/details/VideoInfo;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o:Ljava/lang/String;

    return-object v0
.end method
