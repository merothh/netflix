.class public Lo/RL;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lo/nS;)I
    .locals 5

    .line 540
    invoke-interface {p0}, Lo/nS;->h()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    .line 541
    invoke-static {p0}, Lo/RL;->d(Lo/nS;)J

    move-result-wide v1

    .line 542
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    if-ne v0, p0, :cond_0

    const-wide/32 v3, 0x4d7c6d00

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x17d78400

    .line 543
    :goto_0
    div-long/2addr v1, v3

    long-to-int p0, v1

    return p0
.end method

.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lo/BC;
    .locals 6

    .line 658
    invoke-static {p1}, Lo/RL;->c(Ljava/lang/String;)Lo/Bi;

    move-result-object p0

    .line 660
    invoke-static {p0}, Lo/RL;->f(Lo/Bi;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 664
    :cond_0
    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    .line 665
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 666
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    .line 669
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "current profile was null during offline playback launch"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    if-nez p1, :cond_3

    .line 672
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "videoDetails was null during offline playback launch"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 675
    :cond_3
    invoke-interface {p0}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object p0

    .line 676
    invoke-static {}, Lo/adR;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v1

    .line 680
    :cond_4
    invoke-interface {p1}, Lo/Bc;->aN()I

    move-result v3

    if-nez v3, :cond_5

    .line 681
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v5, :cond_5

    .line 683
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 685
    invoke-interface {p1}, Lo/Bc;->aN()I

    move-result v3

    :cond_5
    if-lez v3, :cond_7

    .line 689
    invoke-interface {v2}, Lo/BC;->getMaturityLevel()I

    move-result p1

    if-le v3, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_9

    .line 691
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->r()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 693
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BC;

    .line 694
    invoke-interface {v0}, Lo/BC;->isProfileLocked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 695
    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v0

    :cond_9
    :goto_3
    return-object v1
.end method

.method public static a()Lo/Rq;
    .locals 1

    .line 368
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    invoke-virtual {v0}, Lo/RJ;->b()Lo/Rq;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 595
    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "offlineUiHelper"

    if-eqz v1, :cond_0

    const-string v1, "requestExternalStoragePermission requesting permission."

    .line 596
    invoke-static {v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lo/OnAttachStateChangeListener;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "requestExternalStoragePermission already have permission."

    .line 600
    invoke-static {v2, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 325
    invoke-static {p0}, Lo/RL;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "offlineUiHelper"

    const-string v3, "incrementSnackBarDownloadCompleteCount count=%d"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "prefs_offline_snackbar_dl_complete_count"

    .line 328
    invoke-static {p0, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 1

    .line 627
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->i()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    invoke-interface {v0}, Lo/nS;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 631
    :cond_0
    invoke-static {p0}, Lo/pf;->c(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z
    .locals 0

    .line 347
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->b()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne p1, p0, :cond_0

    .line 348
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d()Z

    move-result p0

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

.method public static a(Lo/Bi;)Z
    .locals 2

    .line 161
    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-interface {p0}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    const-string v0, "prefs_offline_snackbar_dl_complete_count"

    const/4 v1, 0x0

    .line 337
    invoke-static {p0, v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(Lo/Bi;)I
    .locals 1

    .line 137
    invoke-interface {p0}, Lo/Bi;->m()I

    move-result v0

    .line 138
    invoke-interface {p0}, Lo/Bi;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 139
    sget v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->h:I

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {v0}, Lo/ot;->e(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 141
    sget v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->d:I

    :cond_1
    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/String;)Lo/Tf;
    .locals 1

    .line 568
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/Rq;->e(Ljava/lang/String;)Lo/Tf;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 255
    :cond_0
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p0, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v0, "offlineUiHelper"

    if-nez p0, :cond_1

    const-string p0, "netflixActivity is null"

    .line 257
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "serviceManager is null"

    .line 262
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 265
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "offlineAgentInterface is null"

    .line 267
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_3
    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p0, "videoDetails is null"

    .line 272
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_4
    invoke-virtual {v1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v2

    if-nez v2, :cond_5

    const-string p0, "playable is null"

    .line 277
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-nez p2, :cond_6

    const-string p0, "type is null"

    .line 281
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_6
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p0, "offlinePlayableViewData is null"

    .line 286
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_7
    invoke-interface {p2}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p2

    .line 290
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq p2, v3, :cond_8

    const-string p0, "download is not complete yet"

    .line 291
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_8
    invoke-interface {v2}, Lo/AK;->P()I

    move-result p2

    .line 295
    invoke-static {p0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 299
    iget p2, p1, Lo/Aa;->mBookmarkInSecond:I

    .line 301
    :cond_9
    invoke-interface {v2}, Lo/AK;->R()I

    move-result p1

    invoke-static {p2, p1}, Lo/aeC;->c(II)I

    move-result p1

    .line 302
    new-instance p2, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(I)V

    .line 303
    invoke-virtual {v1}, Lo/Tf;->bb()Lo/AK;

    move-result-object p1

    invoke-virtual {v1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    .line 581
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nM:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 583
    new-instance v1, Lo/PendingIntent$Activity;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v1, p0, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 584
    invoke-virtual {v1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v2, Lo/RN;

    invoke-direct {v2, p0}, Lo/RN;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    sget-object v1, Lo/RK;->a:Lo/RK;

    .line 589
    invoke-virtual {p0, v0, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    invoke-virtual {p0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Lo/PendingIntent;->show()V

    :cond_0
    return-void
.end method

.method private static synthetic b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 585
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 586
    invoke-static {p2, p0}, Lo/RL;->a(ILcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 587
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Lo/Aa;)V
    .locals 1

    .line 363
    const-class v0, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-interface {v0, p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmark(Ljava/lang/String;Lo/Aa;)V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 9

    .line 452
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object p0

    .line 453
    invoke-static {}, Lo/RL;->d()Lo/nS;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 459
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lo/RJ;->b()Lo/Rq;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 467
    :cond_1
    invoke-interface {p0}, Lo/BC;->isKidsProfile()Z

    move-result p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 468
    :goto_0
    invoke-interface {v2}, Lo/Rq;->c()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 469
    invoke-interface {v2, v3}, Lo/Rq;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 470
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 473
    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    .line 474
    :cond_2
    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v7

    iget-object v7, v7, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    new-array v6, v6, [Lo/Tf;

    .line 475
    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v5

    iget-object v5, v5, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    aput-object v5, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 478
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/Tf;

    .line 479
    invoke-virtual {v6}, Lo/Tf;->c()I

    move-result v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 480
    invoke-virtual {v6}, Lo/Tf;->c()I

    move-result v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v8

    if-eq v7, v8, :cond_5

    goto :goto_2

    .line 484
    :cond_5
    invoke-virtual {v6}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 485
    invoke-static {v7}, Lo/RL;->a(Lo/Bi;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p0, :cond_7

    .line 490
    invoke-interface {v7}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lo/RJ;->b(Ljava/lang/String;)Lo/Td;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 491
    invoke-interface {v7}, Lo/Td;->b()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    .line 496
    :cond_7
    invoke-virtual {v6}, Lo/Tf;->S()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return v4

    :cond_a
    :goto_3
    return v1
.end method

.method public static c(Lo/Bi;Lcom/netflix/cl/model/AppView;)Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 9

    if-eqz p0, :cond_0

    .line 112
    invoke-static {p0}, Lo/RL;->b(Lo/Bi;)I

    move-result v0

    .line 113
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    const/4 p1, 0x0

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lo/Bi;Lo/Tf;Ljava/lang/Integer;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p0

    sget-object p1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 115
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "offlinePlayableViewData should not be null"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 119
    new-instance p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const/4 v1, 0x0

    sget v2, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;
    .locals 1

    .line 359
    const-class v0, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-interface {v0, p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lo/Bi;
    .locals 1

    .line 106
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "offlineUiHelper"

    const-string v1, "resetSnackBarDownloadCompleteCount count=0"

    .line 332
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "prefs_offline_snackbar_dl_complete_count"

    const/4 v1, 0x0

    .line 333
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "prefs_offline_snackbar_user_swiped"

    .line 313
    invoke-static {p0, v0, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 589
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static c()Z
    .locals 3

    .line 206
    invoke-static {}, Lo/RL;->d()Lo/nS;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 211
    :cond_0
    invoke-interface {v0}, Lo/nS;->i()Z

    move-result v0

    .line 212
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static c(Lo/Bi;)Z
    .locals 2

    .line 341
    invoke-interface {p0}, Lo/Bi;->G()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d()Z

    move-result p0

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

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;J)I
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 384
    :cond_0
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object p0

    .line 385
    invoke-static {}, Lo/RL;->d()Lo/nS;

    move-result-object v1

    if-eqz p0, :cond_d

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 391
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lo/RJ;->b()Lo/Rq;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 399
    :cond_2
    invoke-interface {p0}, Lo/BC;->isKidsProfile()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 400
    :goto_0
    invoke-interface {v2}, Lo/Rq;->c()I

    move-result v6

    if-ge v4, v6, :cond_c

    .line 401
    invoke-interface {v2, v4}, Lo/Rq;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 402
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 405
    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    .line 406
    :cond_3
    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v8

    iget-object v8, v8, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    new-array v7, v7, [Lo/Tf;

    .line 407
    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v6

    iget-object v6, v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    aput-object v6, v7, v0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 410
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/Tf;

    .line 411
    invoke-virtual {v7}, Lo/Tf;->c()I

    move-result v8

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v9

    if-eq v8, v9, :cond_6

    .line 412
    invoke-virtual {v7}, Lo/Tf;->c()I

    move-result v8

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v9

    if-eq v8, v9, :cond_6

    goto :goto_2

    .line 416
    :cond_6
    invoke-virtual {v7}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 417
    invoke-static {v7}, Lo/RL;->a(Lo/Bi;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    .line 422
    invoke-interface {v7}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lo/RJ;->b(Ljava/lang/String;)Lo/Td;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 423
    invoke-interface {v8}, Lo/Td;->b()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    .line 428
    :cond_8
    invoke-interface {p0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 429
    iget v8, v8, Lo/Aa;->mBookmarkInSecond:I

    if-lez v8, :cond_9

    goto :goto_2

    .line 435
    :cond_9
    invoke-interface {v7}, Lo/Bi;->C()J

    move-result-wide v7

    cmp-long v9, v7, p1

    if-gez v9, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    return v5

    :cond_d
    :goto_3
    return v0
.end method

.method private static d(Lo/nS;)J
    .locals 3

    .line 509
    invoke-interface {p0}, Lo/nS;->p()Lo/Bg;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 513
    :cond_0
    invoke-interface {p0}, Lo/Bg;->d()I

    move-result v2

    invoke-interface {p0, v2}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/Bh;

    if-nez p0, :cond_1

    return-wide v0

    .line 517
    :cond_1
    invoke-interface {p0}, Lo/Bh;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;
    .locals 6

    if-eqz p3, :cond_0

    .line 643
    new-instance p3, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    sget-object v5, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const-string v4, ""

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V

    goto :goto_0

    .line 645
    :cond_0
    new-instance p3, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    invoke-direct {p3, p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :goto_0
    return-object p3
.end method

.method public static d()Lo/nS;
    .locals 1

    .line 548
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->i()Lo/nS;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "prefs_offline_snackbar_user_swiped"

    const/4 v1, 0x0

    .line 321
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Z
    .locals 1

    .line 171
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne p0, v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .line 97
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lo/Bi;)Z
    .locals 2

    .line 152
    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 153
    invoke-interface {p0}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lo/nS;)I
    .locals 5

    .line 527
    invoke-interface {p0}, Lo/nS;->h()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    .line 528
    invoke-static {p0}, Lo/RL;->d(Lo/nS;)J

    move-result-wide v1

    .line 529
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    if-ne v0, p0, :cond_0

    const-wide v3, 0x83215600L

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x29b92700

    .line 530
    :goto_0
    div-long/2addr v1, v3

    long-to-int p0, v1

    return p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 192
    sget-object v0, Lo/he;->a:Lo/he$Application;

    invoke-virtual {v0}, Lo/he$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lo/RL;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nK:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nz:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;"
        }
    .end annotation

    .line 573
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/RJ;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lo/RL;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v2, Lo/RL$4;

    const-string v3, "offlineUiHelper"

    invoke-direct {v2, v3, p0}, Lo/RL$4;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const-string p0, "categoriesList"

    invoke-interface {v0, p0, v1, v2}, Lo/zG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    array-length p1, p3

    const-string p2, "offlineUiHelper"

    const/4 v0, 0x0

    if-lez p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    const-string p1, "permission is granted"

    .line 615
    invoke-static {p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    const-string p2, "storage permission"

    invoke-virtual {p1, p0, p2}, Lo/CarrierIdentifier;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_1
    array-length p0, p3

    if-lez p0, :cond_2

    aget p0, p3, v0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    const-string p0, "onRequestPermissionsResult denied"

    .line 618
    invoke-static {p2, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/RL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static e(Lo/Bi;)Z
    .locals 2

    .line 180
    invoke-static {p0}, Lo/RL;->c(Lo/Bi;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-static {}, Lo/RL;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {p0}, Lo/RL;->g(Lo/Bi;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v0, v1, :cond_0

    .line 184
    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    .line 185
    invoke-interface {p0}, Lo/Bi;->F()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Lo/Bi;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 562
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    invoke-interface {p0}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/RJ;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static g(Lo/Bi;)Z
    .locals 2

    .line 352
    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    .line 353
    invoke-interface {p0}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq v0, v1, :cond_0

    .line 354
    invoke-interface {p0}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
