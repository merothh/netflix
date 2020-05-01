.class public Lo/LP;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""

# interfaces
.implements Lo/LU;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LP$ActionBar;,
        Lo/LP$Activity;,
        Lo/LP$StateListAnimator;
    }
.end annotation


# static fields
.field private static final b:Lo/LP$StateListAnimator;


# instance fields
.field private final A:Lo/CT$TaskDescription;

.field private final B:Lo/LW;

.field private final C:Lo/Mi$Activity;

.field private final D:Lo/Mq$TaskDescription;

.field private f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private h:Lo/Mq;

.field private final i:Landroid/os/Handler;

.field private j:Lo/Bc;

.field private k:Lo/Mi;

.field private l:Lo/CT;

.field private m:Ljava/lang/String;

.field private n:Lo/LV;

.field private o:Lo/Da;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:J

.field private u:Ljava/lang/String;

.field private v:J

.field private w:Lo/LU$TaskDescription;

.field private x:Lo/BaseAdapter;

.field private y:I

.field private final z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    new-instance v0, Lo/LP$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LP$StateListAnimator;-><init>(Lo/LP$2;)V

    sput-object v0, Lo/LP;->b:Lo/LP$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/LP;->i:Landroid/os/Handler;

    .line 708
    new-instance v0, Lo/LP$4;

    invoke-direct {v0, p0}, Lo/LP$4;-><init>(Lo/LP;)V

    iput-object v0, p0, Lo/LP;->z:Ljava/lang/Runnable;

    .line 732
    new-instance v0, Lo/LP$3;

    invoke-direct {v0, p0}, Lo/LP$3;-><init>(Lo/LP;)V

    iput-object v0, p0, Lo/LP;->A:Lo/CT$TaskDescription;

    .line 763
    new-instance v0, Lo/LP$5;

    invoke-direct {v0, p0}, Lo/LP$5;-><init>(Lo/LP;)V

    iput-object v0, p0, Lo/LP;->D:Lo/Mq$TaskDescription;

    .line 1002
    new-instance v0, Lo/LP$1;

    invoke-direct {v0, p0}, Lo/LP$1;-><init>(Lo/LP;)V

    iput-object v0, p0, Lo/LP;->B:Lo/LW;

    .line 1174
    new-instance v0, Lo/LP$10;

    invoke-direct {v0, p0}, Lo/LP$10;-><init>(Lo/LP;)V

    iput-object v0, p0, Lo/LP;->C:Lo/Mi$Activity;

    return-void
.end method

.method static synthetic J()Lo/LP$StateListAnimator;
    .locals 1

    .line 79
    sget-object v0, Lo/LP;->b:Lo/LP$StateListAnimator;

    return-object v0
.end method

.method private declared-synchronized K()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "hideSelf()"

    .line 470
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 471
    sget-object v0, Lo/LP;->b:Lo/LP$StateListAnimator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/LP$StateListAnimator;->c:Z

    .line 472
    invoke-direct {p0}, Lo/LP;->R()V

    .line 473
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0}, Lo/LV;->i()V

    .line 475
    iget-boolean v0, p0, Lo/LP;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lo/LP;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/LP;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    iput-boolean v1, p0, Lo/LP;->r:Z

    .line 481
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_STATUS_SHOW_CAST_FRAG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isVisible"

    iget-boolean v3, p0, Lo/LP;->r:Z

    .line 482
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 481
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    invoke-direct {p0}, Lo/LP;->S()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "Frag is in BG - should just hide self on resume"

    .line 477
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private M()V
    .locals 2

    const/4 v0, 0x1

    .line 252
    invoke-direct {p0, v0}, Lo/LP;->b(Z)V

    .line 253
    invoke-direct {p0}, Lo/LP;->R()V

    .line 254
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/LV;->d(Z)V

    return-void
.end method

.method private O()V
    .locals 2

    .line 517
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 518
    instance-of v0, v0, Lo/LP$Activity;

    if-eqz v0, :cond_0

    const-string v0, "CastPlayerHelper"

    const-string v1, "MDX dialog currently shown - hiding"

    .line 519
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    :cond_0
    return-void
.end method

.method private P()V
    .locals 3

    .line 505
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v0

    .line 506
    instance-of v1, v0, Lo/LP$Activity;

    if-eqz v1, :cond_0

    const-string v1, "CastPlayerHelper"

    const-string v2, "MDX mini player dialog frag currently shown - hiding"

    .line 507
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v0}, Lo/PushbackReader;->dismiss()V

    .line 511
    :cond_0
    invoke-virtual {p0}, Lo/LP;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0}, Lo/LP;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    :cond_1
    return-void
.end method

.method private Q()V
    .locals 2

    const-string v0, "updateLanguage()"

    .line 558
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    iget-object v1, p0, Lo/LP;->B:Lo/LW;

    invoke-interface {v1}, Lo/LW;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/LV;->f(Z)V

    return-void
.end method

.method private R()V
    .locals 2

    .line 573
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lo/LP;->i:Landroid/os/Handler;

    iget-object v1, p0, Lo/LP;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "Simulated position update -stopped-"

    .line 575
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized S()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Hiding MDX Player frag (internal)"

    .line 490
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lo/LP;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v1

    .line 494
    invoke-virtual {v1, p0}, Lo/UnsupportedEncodingException;->c(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Lo/UnsupportedEncodingException;->d()I

    .line 496
    invoke-virtual {v0}, Lo/SerializablePermission;->b()Z

    .line 498
    invoke-direct {p0}, Lo/LP;->P()V

    .line 499
    invoke-direct {p0}, Lo/LP;->O()V

    .line 501
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private V()V
    .locals 2

    .line 689
    invoke-virtual {p0}, Lo/LP;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nS:I

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/LY;

    if-eqz v0, :cond_0

    .line 691
    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-virtual {v0, v1}, Lo/LY;->e(Lo/Bc;)V

    .line 694
    :cond_0
    invoke-direct {p0}, Lo/LP;->Q()V

    return-void
.end method

.method static synthetic a(Lo/LP;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/LP;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lo/LP;->s:Z

    return p0
.end method

.method static synthetic a(Lo/LP;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lo/LP;->p:Z

    return p1
.end method

.method static synthetic b(Lo/LP;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lo/LP;->v:J

    return-wide v0
.end method

.method static synthetic b(Lo/LP;J)J
    .locals 0

    .line 79
    iput-wide p1, p0, Lo/LP;->t:J

    return-wide p1
.end method

.method static synthetic b(Lo/LP;Lo/Bc;)Lo/Bc;
    .locals 0

    .line 79
    iput-object p1, p0, Lo/LP;->j:Lo/Bc;

    return-object p1
.end method

.method private b(J)V
    .locals 2

    .line 563
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lo/LP;->i:Landroid/os/Handler;

    iget-object v1, p0, Lo/LP;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 565
    iput-wide p1, p0, Lo/LP;->t:J

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/LP;->v:J

    .line 567
    iget-object p1, p0, Lo/LP;->i:Landroid/os/Handler;

    iget-object p2, p0, Lo/LP;->z:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "Simulated position update +started+"

    .line 568
    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/LP;ZZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p6}, Lo/LP;->e(ZZZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "showSelf()"

    .line 525
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 526
    sget-object v0, Lo/LP;->b:Lo/LP$StateListAnimator;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/LP$StateListAnimator;->c:Z

    .line 528
    iget-boolean v0, p0, Lo/LP;->q:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 529
    invoke-virtual {p0}, Lo/LP;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/LP;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lo/LP;->j:Lo/Bc;

    if-nez v0, :cond_1

    const-string p1, "currentVideo is null - show self failed"

    .line 535
    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 538
    :cond_1
    :try_start_1
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0}, Lo/LV;->i()V

    .line 539
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.netflix.mediaclient.intent.action.MDX_STATUS_SHOW_CAST_FRAG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "isVisible"

    .line 540
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 539
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 542
    iput-boolean v1, p0, Lo/LP;->r:Z

    const-string v0, "Showing MDX Player frag"

    .line 544
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lo/LP;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v1

    .line 549
    invoke-virtual {v1, p0}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Lo/UnsupportedEncodingException;->d()I

    .line 551
    invoke-virtual {v0}, Lo/SerializablePermission;->b()Z

    .line 553
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerShown(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    :try_start_2
    const-string p1, "Frag is in BG - should just show self on resume"

    .line 530
    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lo/LP;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lo/LP;->s:Z

    return p1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lo/LP;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lo/LP;->M()V

    return-void
.end method

.method static synthetic c(Lo/LP;Lo/Bc;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lo/LP;->e(Lo/Bc;)V

    return-void
.end method

.method static synthetic c(Lo/LP;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lo/LP;->r:Z

    return p1
.end method

.method static synthetic d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic d(Lo/LP;J)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lo/LP;->b(J)V

    return-void
.end method

.method static synthetic d(Lo/LP;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lo/LP;->e(Z)V

    return-void
.end method

.method static synthetic e(Lo/LP;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lo/LP;->t:J

    return-wide v0
.end method

.method static synthetic e(Lo/LP;J)J
    .locals 0

    .line 79
    iput-wide p1, p0, Lo/LP;->v:J

    return-wide p1
.end method

.method private e(Lo/Bc;)V
    .locals 7

    .line 616
    iput-object p1, p0, Lo/LP;->j:Lo/Bc;

    .line 618
    iget-object p1, p0, Lo/LP;->x:Lo/BaseAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setVisibility(I)V

    .line 620
    iget-object p1, p0, Lo/LP;->x:Lo/BaseAdapter;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 621
    iget-object p1, p0, Lo/LP;->x:Lo/BaseAdapter;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 624
    invoke-virtual {p0}, Lo/LP;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Lo/LP;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    div-int/2addr p1, v1

    int-to-float v1, p1

    const v4, 0x3fb70a3d    # 1.43f

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 627
    iget-object v4, p0, Lo/LP;->x:Lo/BaseAdapter;

    invoke-virtual {v4}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 628
    iget-object p1, p0, Lo/LP;->x:Lo/BaseAdapter;

    invoke-virtual {p1}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 630
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating metadata: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hash: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    .line 632
    iget-object p1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v4, 0x1

    if-ne p1, v1, :cond_2

    .line 633
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/LV;->b(Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->ai()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 636
    iget-object p1, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v6}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1, v1, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 638
    :cond_1
    iget-object p1, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gv:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lo/LP;->j:Lo/Bc;

    .line 639
    invoke-interface {v6}, Lo/Bc;->bb()Lo/AK;

    move-result-object v6

    invoke-interface {v6}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v6, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v6}, Lo/Bc;->bb()Lo/AK;

    move-result-object v6

    invoke-interface {v6}, Lo/AK;->V()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v6}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 638
    invoke-virtual {p1, v1, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 641
    :goto_1
    iget-object v1, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v1, p1}, Lo/LV;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 643
    :cond_2
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/LV;->b(Ljava/lang/String;)V

    .line 644
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lo/LV;->e(Ljava/lang/String;)V

    .line 646
    :goto_2
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {p0}, Lo/LP;->U_()Lo/Am;

    move-result-object v1

    invoke-static {v1}, Lo/acE;->c(Lo/Am;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/LV;->c(Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v1, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v1}, Lo/LV;->a(Z)V

    .line 649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting seek bar max: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->S()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    .line 650
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->S()I

    move-result v1

    invoke-virtual {p1, v1}, Lo/LV;->d(I)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 652
    iget-object v1, p0, Lo/LP;->h:Lo/Mq;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    .line 653
    :cond_4
    invoke-virtual {v1}, Lo/Mq;->h()I

    move-result v1

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    .line 654
    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->P()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    iget v1, p0, Lo/LP;->y:I

    .line 655
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "updating seek pos - remote pos: %d, playable bookmark pos: %d, saved pos: %d"

    .line 652
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    .line 657
    iget p1, p0, Lo/LP;->y:I

    const/4 v1, -0x1

    .line 658
    iput v1, p0, Lo/LP;->y:I

    if-gtz p1, :cond_6

    .line 660
    iget-object p1, p0, Lo/LP;->h:Lo/Mq;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lo/Mq;->h()I

    move-result v0

    move p1, v0

    :goto_5
    if-gtz p1, :cond_6

    .line 662
    iget-object p1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->P()I

    move-result p1

    :cond_6
    if-lez p1, :cond_7

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting seek progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0, p1}, Lo/LV;->b(I)V

    .line 671
    :cond_7
    iget-object p1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_8

    .line 672
    invoke-virtual {p0}, Lo/LP;->U_()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object p1, p0, Lo/LP;->j:Lo/Bc;

    .line 673
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v5, Lo/LP$ActionBar;

    invoke-direct {v5, p0}, Lo/LP$ActionBar;-><init>(Lo/LP;)V

    .line 672
    invoke-interface/range {v0 .. v5}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    goto :goto_6

    .line 679
    :cond_8
    iget-object p1, p0, Lo/LP;->j:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_9

    .line 680
    invoke-virtual {p0}, Lo/LP;->U_()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    iget-object v0, p0, Lo/LP;->j:Lo/Bc;

    check-cast v0, Lo/AS;

    invoke-interface {v0}, Lo/AS;->q()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lo/LP$ActionBar;

    invoke-direct {v2, p0}, Lo/LP$ActionBar;-><init>(Lo/LP;)V

    invoke-interface {p1, v0, v1, v2}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    .line 682
    :cond_9
    :goto_6
    iget-boolean p1, p0, Lo/LP;->r:Z

    if-nez p1, :cond_a

    const-string p1, "updateVideoMetadata showself"

    .line 683
    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    .line 684
    iget-object p1, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelExpanded()Z

    move-result p1

    invoke-direct {p0, p1}, Lo/LP;->b(Z)V

    :cond_a
    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 698
    sget-object v0, Lo/LP;->b:Lo/LP$StateListAnimator;

    iput-boolean p1, v0, Lo/LP$StateListAnimator;->a:Z

    .line 699
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0, p1}, Lo/LV;->g(Z)V

    return-void
.end method

.method private e(ZZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 584
    iget-boolean v0, p0, Lo/LP;->r:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 587
    invoke-direct {p0, p6}, Lo/LP;->b(Z)V

    .line 592
    iget-object p1, p0, Lo/LP;->h:Lo/Mq;

    if-eqz p1, :cond_1

    iget-boolean p6, p0, Lo/LP;->r:Z

    if-eqz p6, :cond_1

    .line 593
    invoke-virtual {p1}, Lo/Mq;->d()V

    goto :goto_0

    .line 597
    :cond_0
    invoke-direct {p0}, Lo/LP;->K()V

    .line 601
    :cond_1
    :goto_0
    invoke-static {p4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 602
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jM:I

    invoke-virtual {p0, p1}, Lo/LP;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 605
    :cond_2
    iput-object p5, p0, Lo/LP;->u:Ljava/lang/String;

    .line 607
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {p1, p3, p4}, Lo/LV;->c(ZLjava/lang/String;)V

    .line 608
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {p1, p2}, Lo/LV;->h(Z)V

    .line 609
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    sget-object p2, Lo/LP;->b:Lo/LP$StateListAnimator;

    iget-boolean p2, p2, Lo/LP$StateListAnimator;->a:Z

    invoke-virtual {p1, p2}, Lo/LV;->g(Z)V

    return-void
.end method

.method static synthetic f(Lo/LP;)Lo/LV;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->n:Lo/LV;

    return-object p0
.end method

.method static synthetic g(Lo/LP;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lo/LP;)Lo/Mq;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->h:Lo/Mq;

    return-object p0
.end method

.method static synthetic i(Lo/LP;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lo/LP;->Q()V

    return-void
.end method

.method static synthetic j(Lo/LP;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lo/LP;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lo/LP;->R()V

    return-void
.end method

.method static synthetic l(Lo/LP;)Lo/Bc;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->j:Lo/Bc;

    return-object p0
.end method

.method static synthetic m(Lo/LP;)Lo/LW;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->B:Lo/LW;

    return-object p0
.end method

.method static synthetic n(Lo/LP;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lo/LP;->q:Z

    return p0
.end method

.method static synthetic o(Lo/LP;)Lo/Da;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->o:Lo/Da;

    return-object p0
.end method

.method static synthetic p(Lo/LP;)Lo/CT;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->l:Lo/CT;

    return-object p0
.end method

.method static synthetic q(Lo/LP;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lo/LP;->V()V

    return-void
.end method

.method static synthetic r(Lo/LP;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/LP;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s(Lo/LP;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lo/LP;->K()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lo/LP;->K()V

    return-void
.end method

.method public C()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lo/LP;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/LP;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Lo/AK;
    .locals 1

    .line 295
    invoke-virtual {p0}, Lo/LP;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LP;->j:Lo/Bc;

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public E()I
    .locals 1

    .line 347
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0}, Lo/LV;->a()I

    move-result v0

    return v0
.end method

.method public F()I
    .locals 1

    .line 354
    sget-object v0, Lo/LP;->b:Lo/LP$StateListAnimator;

    iget v0, v0, Lo/LP$StateListAnimator;->e:I

    return v0
.end method

.method public G()V
    .locals 1

    .line 372
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0}, Lo/LV;->h()V

    return-void
.end method

.method public H()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lo/LP;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LP;->j:Lo/Bc;

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Landroid/view/View;
    .locals 1

    .line 342
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0}, Lo/LV;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public L()V
    .locals 9

    const-string v0, "initMdxComponents()"

    .line 404
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lo/LP;->B:Lo/LW;

    invoke-interface {v0}, Lo/LW;->d()Lo/zN;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 408
    invoke-static {v0}, Lo/Mn;->c(Lo/zN;)Lo/Bc;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 427
    invoke-direct {p0, v1}, Lo/LP;->e(Lo/Bc;)V

    .line 428
    iget-object v1, p0, Lo/LP;->n:Lo/LV;

    sget-object v2, Lo/LP;->b:Lo/LP$StateListAnimator;

    iget-boolean v2, v2, Lo/LP$StateListAnimator;->d:Z

    invoke-virtual {v1, v2}, Lo/LV;->d(Z)V

    .line 429
    sget-object v1, Lo/LP;->b:Lo/LP$StateListAnimator;

    iget-boolean v3, v1, Lo/LP$StateListAnimator;->c:Z

    invoke-interface {v0}, Lo/zN;->e()Z

    move-result v4

    const/4 v8, 0x0

    const-string v6, ""

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lo/LP;->e(ZZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 432
    :cond_0
    new-instance v0, Lo/Mq;

    iget-object v1, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lo/LP;->D:Lo/Mq$TaskDescription;

    invoke-direct {v0, v1, v2}, Lo/Mq;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mq$TaskDescription;)V

    iput-object v0, p0, Lo/LP;->h:Lo/Mq;

    .line 434
    invoke-virtual {p0}, Lo/LP;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    sget-object v0, Lo/LP;->b:Lo/LP$StateListAnimator;

    iget-boolean v0, v0, Lo/LP$StateListAnimator;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "Controls are enabled & mini player is showing. Requesting subs and dubs..."

    .line 436
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lo/LP;->h:Lo/Mq;

    invoke-virtual {v0}, Lo/Mq;->p()V

    :cond_1
    const-string v0, "Syncing with remote player..."

    .line 439
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lo/LP;->h:Lo/Mq;

    invoke-virtual {v0}, Lo/Mq;->d()V

    .line 444
    :cond_2
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    iget-object v2, p0, Lo/LP;->A:Lo/CT$TaskDescription;

    invoke-static {v0, v1, v2}, Lo/CT;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLo/CT$TaskDescription;)Lo/CT;

    move-result-object v0

    iput-object v0, p0, Lo/LP;->l:Lo/CT;

    .line 446
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {p0}, Lo/LP;->U_()Lo/Am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/LV;->b(Lo/Am;)V

    return-void
.end method

.method public N()V
    .locals 1

    .line 376
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0}, Lo/LV;->j()V

    .line 377
    iget-boolean v0, p0, Lo/LP;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lo/LP;->p:Z

    .line 379
    invoke-direct {p0}, Lo/LP;->K()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 361
    sget-object v0, Lo/LP;->b:Lo/LP$StateListAnimator;

    iput p1, v0, Lo/LP$StateListAnimator;->e:I

    .line 362
    iget-object v0, p0, Lo/LP;->h:Lo/Mq;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p1}, Lo/Mq;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Lo/AS;)V
    .locals 3

    .line 463
    invoke-direct {p0}, Lo/LP;->P()V

    .line 465
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {p1}, Lo/AS;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-virtual {p0}, Lo/LP;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "onResumeFragments"

    .line 213
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lo/LP;->q:Z

    .line 216
    invoke-virtual {p0}, Lo/LP;->U_()Lo/Am;

    move-result-object v1

    if-nez v1, :cond_0

    .line 217
    invoke-direct {p0}, Lo/LP;->S()V

    goto :goto_1

    .line 220
    :cond_0
    invoke-virtual {p0}, Lo/LP;->U_()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->l()Lo/zN;

    move-result-object v1

    .line 221
    invoke-static {v1}, Lo/Mn;->c(Lo/zN;)Lo/Bc;

    move-result-object v1

    iput-object v1, p0, Lo/LP;->j:Lo/Bc;

    .line 226
    iget-object v1, p0, Lo/LP;->j:Lo/Bc;

    if-eqz v1, :cond_2

    sget-object v1, Lo/LP;->b:Lo/LP$StateListAnimator;

    iget-boolean v1, v1, Lo/LP$StateListAnimator;->c:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0, v0}, Lo/LP;->b(Z)V

    goto :goto_1

    .line 227
    :cond_2
    :goto_0
    invoke-direct {p0}, Lo/LP;->K()V

    :goto_1
    return-void
.end method

.method public c(F)V
    .locals 1

    .line 368
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0, p1}, Lo/LV;->c(F)V

    return-void
.end method

.method public c(Lo/LU$TaskDescription;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lo/LP;->w:Lo/LU$TaskDescription;

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 148
    iput-boolean p1, p0, Lo/LP;->r:Z

    .line 149
    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_STATUS_SHOW_CAST_FRAG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isVisible"

    .line 150
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lo/LP;->h:Lo/Mq;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p1, p2}, Lo/Mq;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1171
    iget-object v0, p0, Lo/LP;->k:Lo/Mi;

    invoke-virtual {p0}, Lo/LP;->U_()Lo/Am;

    move-result-object v1

    iget-object v2, p0, Lo/LP;->h:Lo/Mq;

    invoke-virtual {v0, p1, v1, v2}, Lo/Mi;->b(Landroid/view/KeyEvent;Lo/Am;Lo/Mq;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lo/LP;->r:Z

    return v0
.end method

.method public i()Z
    .locals 3

    .line 194
    invoke-virtual {p0}, Lo/LP;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nS:I

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/LY;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lo/LY;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lo/LP;->getActivity()Lo/Serializable;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.service.ACTION_CLOSE_CAST_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/Serializable;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 304
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lo/LP;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/LP;->m:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lo/LP;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v0, "onCreate()"

    .line 162
    invoke-direct {p0, v0}, Lo/LP;->d(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "saved_position_seconds"

    .line 165
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lo/LP;->y:I

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "savedPositionSeconds: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/LP;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    .line 169
    new-instance p1, Lo/Mi;

    iget-object v0, p0, Lo/LP;->C:Lo/Mi$Activity;

    invoke-direct {p1, v0}, Lo/Mi;-><init>(Lo/Mi$Activity;)V

    iput-object p1, p0, Lo/LP;->k:Lo/Mi;

    .line 170
    new-instance p1, Lo/Da;

    iget-object v0, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v1, "CastPlayerHelper"

    invoke-direct {p1, v1, v0}, Lo/Da;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object p1, p0, Lo/LP;->o:Lo/Da;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 175
    new-instance p1, Lo/LX;

    iget-object p2, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p3, p0, Lo/LP;->B:Lo/LW;

    iget-object v0, p0, Lo/LP;->w:Lo/LU$TaskDescription;

    invoke-direct {p1, p2, p3, p0, v0}, Lo/LX;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/LW;Lo/Mh;Lo/LU$TaskDescription;)V

    iput-object p1, p0, Lo/LP;->n:Lo/LV;

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updating to empty state, controls enabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lo/LP;->b:Lo/LP$StateListAnimator;

    iget-boolean p2, p2, Lo/LP$StateListAnimator;->d:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    sget-object p2, Lo/LP;->b:Lo/LP$StateListAnimator;

    iget-boolean p2, p2, Lo/LP$StateListAnimator;->d:Z

    invoke-virtual {p1, p2}, Lo/LV;->b(Z)V

    .line 180
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {p1}, Lo/LV;->g()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->bt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/BaseAdapter;

    iput-object p1, p0, Lo/LP;->x:Lo/BaseAdapter;

    .line 182
    new-instance p1, Lo/LP$2;

    invoke-direct {p1, p0}, Lo/LP$2;-><init>(Lo/LP;)V

    const-string p2, "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

    invoke-virtual {p0, p1, p2}, Lo/LP;->c(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {p1}, Lo/LV;->g()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 244
    iget-object v0, p0, Lo/LP;->h:Lo/Mq;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lo/Mq;->m()V

    .line 248
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 390
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 391
    invoke-static {}, Lo/aeB;->a()Z

    .line 393
    iget-object p1, p0, Lo/LP;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lo/LP;->L()V

    const-string p1, "manager ready"

    .line 400
    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Activity is null or destroyed - bailing early"

    .line 394
    invoke-direct {p0, p1}, Lo/LP;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 452
    iget-object p1, p0, Lo/LP;->h:Lo/Mq;

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {p1}, Lo/Mq;->m()V

    const/4 p1, 0x0

    .line 454
    iput-object p1, p0, Lo/LP;->h:Lo/Mq;

    .line 457
    :cond_0
    iget-object p1, p0, Lo/LP;->n:Lo/LV;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/LV;->b(Z)V

    .line 458
    invoke-direct {p0}, Lo/LP;->K()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 206
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v0}, Lo/LV;->b()V

    return-void
.end method

.method public declared-synchronized onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "saved_position_seconds"

    .line 238
    iget-object v1, p0, Lo/LP;->n:Lo/LV;

    invoke-virtual {v1}, Lo/LV;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lo/LP;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public v()Lo/Me;
    .locals 4

    .line 278
    iget-object v0, p0, Lo/LP;->B:Lo/LW;

    invoke-interface {v0}, Lo/LW;->d()Lo/zN;

    move-result-object v0

    .line 279
    new-instance v1, Lo/Me;

    invoke-interface {v0}, Lo/zN;->f()[Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0}, Lo/zN;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lo/Me;-><init>([Landroid/util/Pair;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public x()J
    .locals 2

    .line 290
    iget-wide v0, p0, Lo/LP;->t:J

    return-wide v0
.end method

.method public y()Lo/Mq;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/LP;->h:Lo/Mq;

    return-object v0
.end method

.method public z()V
    .locals 2

    .line 324
    iget-object v0, p0, Lo/LP;->n:Lo/LV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/LV;->d(Z)V

    return-void
.end method
