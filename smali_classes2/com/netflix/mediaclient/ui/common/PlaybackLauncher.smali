.class public final Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;,
        Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;
    }
.end annotation


# direct methods
.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    .line 438
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 11

    .line 464
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    move-result-object v0

    .line 466
    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$1;->b:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kO:I

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    goto :goto_0

    .line 474
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kN:I

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 471
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, p4

    .line 468
    invoke-static/range {v5 .. v10}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    :goto_0
    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
    .locals 6

    .line 324
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v1

    .line 327
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v2

    const-string v3, "nf_play"

    if-eqz v2, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 343
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lo/zN;)V

    .line 345
    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->u()Lo/cR;

    move-result-object v0

    invoke-interface {v0}, Lo/cR;->a()Z

    move-result v0

    .line 346
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isConnectingToTarget()Z

    move-result p0

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_2

    invoke-interface {v1}, Lo/zN;->w()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 347
    :goto_1
    invoke-interface {v1}, Lo/zN;->y()Z

    move-result v5

    if-nez p0, :cond_7

    if-nez v5, :cond_7

    if-eqz v0, :cond_3

    const-string p0, "Local target, play on device"

    .line 351
    invoke-static {v3, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0

    :cond_3
    const-string p0, "Local target, but local playback disabled. Try to find at least one remote target"

    .line 355
    invoke-static {v3, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-interface {v1}, Lo/zN;->f()[Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 357
    array-length v0, p0

    if-ge v0, v2, :cond_4

    goto :goto_3

    .line 366
    :cond_4
    invoke-static {}, Lo/dQ;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 367
    aget-object p0, p0, v4

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v1, p0}, Lo/zN;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 370
    :cond_5
    aget-object p0, p0, v4

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-interface {v1, p0, v0}, Lo/zN;->b(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V

    .line 373
    :goto_2
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->e:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0

    :cond_6
    :goto_3
    const-string p0, "Local target, local playback disabled and no remote targets. Display an error."

    .line 358
    invoke-static {v3, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->c:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0

    .line 376
    :cond_7
    invoke-interface {v1}, Lo/zN;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->e(Lo/zN;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 377
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->e:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0

    :cond_8
    if-eqz v0, :cond_9

    const-string p0, "Remote target not available and local playback enabled, play on device"

    .line 381
    invoke-static {v3, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0

    :cond_9
    const-string p0, "Remote target not available and local playback disabled, report an error!"

    .line 385
    invoke-static {v3, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->b:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0

    :cond_a
    :goto_4
    const-string p0, "MDX or service manager are null! That should NOT happen. Default to local."

    .line 328
    invoke-static {v3, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 330
    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object p0

    invoke-interface {p0}, Lo/cz;->u()Lo/cR;

    move-result-object p0

    invoke-interface {p0}, Lo/cR;->a()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "MDX manager null, but configuration exist and local playback is enabled, go local."

    .line 331
    invoke-static {v3, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0

    :cond_b
    const-string p0, "MDX manager null, but configuration exist and local playback is disabled, display an error."

    .line 335
    invoke-static {v3, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->c:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0

    :cond_c
    const-string p0, "Service manager not available or ready! Guess that local playback is enabled! We should never end here!"

    .line 339
    invoke-static {v3, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0
.end method

.method private static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 3

    .line 520
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 521
    new-instance v0, Lo/hK;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, p1, v1, v1}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 522
    invoke-static {p0, v1, v0}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 523
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 6

    .line 456
    new-instance v5, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {v5, p4}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(I)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 457
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 9

    .line 496
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->f()Z

    move-result v0

    const-string v1, "nf_play"

    if-eqz v0, :cond_0

    const-string v0, "Starting MDX remote playback"

    .line 500
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->d()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->a()Z

    move-result v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->i()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->j()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lo/Mb;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;IZ)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "SPY-5248 -  request is not sent to target, no need to change miniplayer state"

    .line 505
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->u()Lo/cR;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->u()Lo/cR;

    move-result-object v0

    invoke-interface {v0}, Lo/cR;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Start local playback"

    .line 510
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->d()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->i()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->j()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_0

    :cond_1
    const-string p1, "Local playback is disabled, we can not start playback!"

    .line 513
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kN:I

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 6

    .line 488
    new-instance v5, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {v5, p4}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 489
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playable to playback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_play"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface {p1}, Lo/AK;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 115
    :cond_0
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method private static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 10

    .line 528
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aw()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d(J)V

    .line 530
    invoke-interface {p1}, Lo/AK;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 533
    sget-object v0, Lo/gc;->c:Lo/gc$Activity;

    invoke-virtual {v0}, Lo/gc$Activity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lo/agg;

    if-eqz v0, :cond_0

    .line 534
    move-object v0, p1

    check-cast v0, Lo/agg;

    invoke-interface {v0}, Lo/agg;->bu()Lo/agg;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v6, p2

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object v6, p2

    .line 541
    :goto_0
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v6, p2, :cond_2

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v6, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v3, p2

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    .line 543
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-interface {p1}, Lo/AK;->Z()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    invoke-interface {p1}, Lo/AK;->ab()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p2, v0

    const/4 v0, 0x3

    invoke-interface {p1}, Lo/AK;->aa()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p2, v0

    const-string v0, "nf_play"

    const-string v4, "nf_pin verifyPinAndPlay - %s ageProtected: %b, pinProtected:%b, previewProtected: %b"

    .line 542
    invoke-static {v0, v4, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 544
    invoke-interface {p1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    invoke-virtual {p5}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    .line 545
    :goto_3
    invoke-virtual {p5, p2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Z)V

    .line 546
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->b:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lo/AK;->aa()Z

    move-result v4

    invoke-interface {p1}, Lo/AK;->ab()Z

    move-result v5

    move-object v1, v0

    move v7, p4

    move-object v8, p3

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    .line 549
    invoke-interface {p1}, Lo/AK;->Z()Z

    move-result p1

    invoke-static {p1, v0}, Lo/WebIconDatabase;->c(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/WebIconDatabase;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/WebIconDatabase;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_4

    .line 551
    :cond_6
    invoke-interface {p1}, Lo/AK;->Z()Z

    move-result p1

    invoke-static {p0, p1, v0}, Lo/acQ;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    :goto_4
    return-void
.end method

.method private static c(Lo/zN;)V
    .locals 0

    return-void
.end method

.method private static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;
    .locals 2

    .line 156
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    .line 157
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 158
    :cond_0
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentHelper()Lo/Ih;

    move-result-object p0

    invoke-interface {p0}, Lo/Ih;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 160
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 162
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->c:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 164
    :cond_2
    const-class v0, Lo/q;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/q;

    invoke-interface {v0, p0}, Lo/q;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->d:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 166
    :cond_3
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-eqz v0, :cond_4

    .line 167
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->g:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 168
    :cond_4
    const-class v0, Lo/v;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/v;

    invoke-interface {v0}, Lo/v;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->e:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 170
    :cond_5
    instance-of v0, p0, Lo/QU;

    if-eqz v0, :cond_6

    .line 171
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->h:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 172
    :cond_6
    const-class v0, Lo/m;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/m;

    invoke-interface {v0}, Lo/m;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->j:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 175
    :cond_7
    instance-of p0, p0, Lo/Yr;

    if-eqz p0, :cond_8

    .line 176
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->f:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0

    .line 178
    :cond_8
    sget-object p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->i:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object p0
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 10

    .line 130
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aw()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d(J)V

    .line 132
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "SPY-16126 Empty videoID"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    move-result-object v0

    .line 148
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object v1

    sget-object v2, Lo/u$Fragment;->e:Lo/u$Fragment;

    .line 149
    invoke-virtual {v1, v2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object v1

    new-instance v9, Lo/u$Fragment$TaskDescription;

    const/4 v6, 0x0

    .line 151
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->ordinal()I

    move-result v7

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lo/u$Fragment$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;IILcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    .line 150
    invoke-virtual {v1, v9}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p0}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>()V

    .line 97
    invoke-static {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 444
    invoke-static/range {v0 .. v6}, Lo/Mb;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;IZ)Z

    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 6

    .line 483
    new-instance v5, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {v5, p4}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(I)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 484
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method private static e(Lo/zN;Ljava/lang/String;)Z
    .locals 5

    .line 415
    invoke-interface {p0}, Lo/zN;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "nf_play"

    if-nez v0, :cond_0

    const-string p0, "MDX service is NOT ready"

    .line 416
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 420
    :cond_0
    invoke-interface {p0}, Lo/zN;->f()[Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 421
    array-length v0, p0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 426
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 427
    aget-object v4, p0, v0

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "Target found"

    .line 428
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "Target NOT found!"

    .line 433
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    const-string p0, "No MDX remote targets found"

    .line 422
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
