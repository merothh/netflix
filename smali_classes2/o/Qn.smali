.class abstract Lo/Qn;
.super Lo/Aj;
.source ""

# interfaces
.implements Lo/nL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Qn$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lo/Ac;

.field final d:Landroid/content/Context;

.field private final e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lo/Qn$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/nS;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Lo/Aj;-><init>()V

    const/16 v0, 0x65

    .line 91
    iput v0, p0, Lo/Qn;->a:I

    const/16 v0, 0x66

    .line 92
    iput v0, p0, Lo/Qn;->b:I

    const/16 v0, 0x67

    .line 93
    iput v0, p0, Lo/Qn;->e:I

    const/16 v0, 0xc0

    .line 101
    iput v0, p0, Lo/Qn;->f:I

    .line 102
    iput v0, p0, Lo/Qn;->h:I

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lo/Qn;->g:I

    .line 135
    iput-object p3, p0, Lo/Qn;->c:Lo/Ac;

    .line 136
    iput-object p2, p0, Lo/Qn;->d:Landroid/content/Context;

    .line 137
    iput-object p5, p0, Lo/Qn;->j:Lo/nS;

    .line 138
    new-instance p2, Landroid/util/LruCache;

    if-eqz p4, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-direct {p2, p3}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lo/Qn;->i:Landroid/util/LruCache;

    .line 139
    new-instance p2, Lo/Qn$5;

    invoke-direct {p2, p0}, Lo/Qn$5;-><init>(Lo/Qn;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 3

    const-string v0, "nf_downloadNotification"

    const-string v1, "buildNotification"

    .line 567
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 568
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 570
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 571
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 572
    iget-object v0, p0, Lo/Qn;->d:Landroid/content/Context;

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz p2, :cond_1

    .line 575
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 578
    :cond_1
    invoke-static {}, Lo/adk;->i()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "download_notification_channel"

    .line 579
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_2
    const/4 p2, 0x0

    .line 584
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 586
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method

.method private a(Lo/Bi;)Ljava/lang/String;
    .locals 0

    .line 276
    invoke-interface {p1}, Lo/Bi;->p()I

    move-result p1

    invoke-static {p1}, Lo/aeE;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/NotificationManager;)V
    .locals 2

    const-string v0, "nf_downloadNotification"

    const-string v1, "cancelAndRemoveErrorNotification"

    .line 771
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x66

    .line 772
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method static synthetic b(Lo/Qn;I)I
    .locals 0

    .line 69
    iput p1, p0, Lo/Qn;->h:I

    return p1
.end method

.method private b()Landroid/app/PendingIntent;
    .locals 2

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.offline.download_complete_notification_dismissed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 697
    invoke-direct {p0, v0, v1}, Lo/Qn;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private b(Lo/Bi;)V
    .locals 6

    .line 464
    invoke-direct {p0, p1}, Lo/Qn;->h(Lo/Bi;)Lo/Qn$TaskDescription;

    move-result-object v0

    .line 465
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 466
    invoke-interface {p1}, Lo/Bi;->p()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 467
    invoke-virtual {p0, v1, p1}, Lo/Qn;->b(Landroid/app/Notification$Builder;Lo/Bi;)V

    .line 468
    invoke-virtual {p0, v1, p1}, Lo/Qn;->d(Landroid/app/Notification$Builder;Lo/Bi;)V

    .line 469
    invoke-direct {p0, p1}, Lo/Qn;->a(Lo/Bi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 470
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 473
    invoke-virtual {p0, v1}, Lo/Qn;->e(Landroid/app/Notification$Builder;)V

    .line 474
    invoke-virtual {p0, p1, v0}, Lo/Qn;->a(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;

    move-result-object v2

    .line 476
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v5, v0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 477
    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 478
    iget-object v2, v0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 479
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Qn;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 480
    iget-object p1, v0, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1}, Lo/Qn;->a(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lo/Qn;->d:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0, v0}, Lo/Qn;->a(Landroid/app/NotificationManager;)V

    .line 485
    iget-object v1, p0, Lo/Qn;->c:Lo/Ac;

    const/16 v2, 0x65

    invoke-interface {v1, v2, v3}, Lo/Ac;->c(IZ)V

    .line 486
    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lo/Qn$TaskDescription;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 4

    .line 638
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lo/Qn;->f:I

    iget v2, p0, Lo/Qn;->h:I

    const/4 v3, 0x1

    .line 637
    invoke-static {v0, v1, v2, v3}, Lo/adk;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    .line 639
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p1, p1, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 642
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_0
    return-void
.end method

.method private static synthetic b(Lo/Qn$TaskDescription;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    .line 646
    iput-object p1, p0, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method private c(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 706
    iget-object v0, p0, Lo/Qn;->d:Landroid/content/Context;

    const-class v1, Lo/bM;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.category.offline"

    .line 707
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v0, "playable_id"

    .line 709
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    :cond_0
    sget-object p2, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->c:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->a(Landroid/content/Intent;Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;)V

    .line 714
    iget-object p2, p0, Lo/Qn;->d:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/app/NotificationManager;)V
    .locals 2

    const-string v0, "nf_downloadNotification"

    const-string v1, "cancelAndRemoveDownloadProgressNotification"

    .line 765
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    .line 766
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 767
    iget-object p1, p0, Lo/Qn;->c:Lo/Ac;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lo/Ac;->c(IZ)V

    return-void
.end method

.method private c(Lo/Bi;)V
    .locals 6

    .line 309
    invoke-direct {p0, p1}, Lo/Qn;->h(Lo/Bi;)Lo/Qn$TaskDescription;

    move-result-object v0

    .line 310
    iget v1, p0, Lo/Qn;->g:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/Qn;->g:I

    .line 316
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-direct {p0}, Lo/Qn;->b()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 318
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lo/Qn;->d()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 320
    iget-boolean v3, v0, Lo/Qn$TaskDescription;->c:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->if:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->hZ:I

    :goto_0
    invoke-static {v3}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 323
    iget v5, p0, Lo/Qn;->g:I

    if-gt v5, v2, :cond_3

    .line 329
    iget-boolean v2, v0, Lo/Qn$TaskDescription;->c:Z

    if-eqz v2, :cond_1

    .line 330
    iget v2, p0, Lo/Qn;->g:I

    invoke-direct {p0, p1, v2}, Lo/Qn;->d(Lo/Bi;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 332
    :cond_1
    iget-object v2, v0, Lo/Qn$TaskDescription;->d:Ljava/lang/CharSequence;

    invoke-static {v2}, Lo/aev;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lo/Qn$TaskDescription;->d:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    .line 334
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 335
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 336
    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 337
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 338
    iget-object v2, v0, Lo/Qn$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v1, p1, v2}, Lo/Qn;->d(Landroid/app/Notification$Builder;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 339
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Qn;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 340
    iget-object p1, v0, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1}, Lo/Qn;->a(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_3

    :cond_3
    sub-int/2addr v5, v2

    .line 346
    iget-boolean v2, v0, Lo/Qn$TaskDescription;->c:Z

    if-eqz v2, :cond_4

    .line 347
    iget v2, p0, Lo/Qn;->g:I

    invoke-direct {p0, p1, v2}, Lo/Qn;->d(Lo/Bi;I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    .line 349
    :cond_4
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hX:I

    invoke-static {p1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p1

    .line 350
    invoke-virtual {p1, v5}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p1

    iget-object v2, v0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    const-string v3, "showOrMovieName"

    .line 351
    invoke-virtual {p1, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    .line 353
    :goto_2
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 355
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 356
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 p1, 0x0

    .line 357
    invoke-direct {p0, p1}, Lo/Qn;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 358
    iget-object p1, v0, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1}, Lo/Qn;->a(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_5

    .line 362
    iget-object v0, p0, Lo/Qn;->d:Landroid/content/Context;

    const-string v1, "notification"

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    .line 365
    invoke-direct {p0, v0}, Lo/Qn;->a(Landroid/app/NotificationManager;)V

    .line 366
    iget-object v1, p0, Lo/Qn;->c:Lo/Ac;

    const/16 v2, 0x67

    invoke-interface {v1, v2, v4}, Lo/Ac;->c(IZ)V

    .line 367
    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 374
    invoke-direct {p0, v0}, Lo/Qn;->c(Landroid/app/NotificationManager;)V

    :cond_5
    return-void
.end method

.method static synthetic d(Lo/Qn;I)I
    .locals 0

    .line 69
    iput p1, p0, Lo/Qn;->f:I

    return p1
.end method

.method private d(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.offline.launch_offline_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-direct {p0, v0, p1}, Lo/Qn;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private d(Lo/Bi;I)Ljava/lang/CharSequence;
    .locals 5

    .line 420
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 422
    :cond_0
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 426
    :cond_1
    invoke-virtual {p1}, Lo/Tf;->ai()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 427
    invoke-interface {v1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 429
    :cond_2
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jC:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    invoke-interface {v1}, Lo/AK;->V()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {p1, v3}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-gt p2, v2, :cond_3

    .line 433
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ii:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 435
    :cond_3
    iget p2, p0, Lo/Qn;->g:I

    sub-int/2addr p2, v2

    .line 436
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ij:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    const-string v0, "showOrMovieName"

    .line 438
    invoke-virtual {p2, v0, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static d(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)Lo/Qn;
    .locals 8

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 125
    new-instance v0, Lo/Qm;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lo/Qm;-><init>(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Lo/Qr;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/Qr;-><init>(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)V

    return-object v0
.end method

.method static synthetic d(Lo/Qn;)Lo/nS;
    .locals 0

    .line 69
    iget-object p0, p0, Lo/Qn;->j:Lo/nS;

    return-object p0
.end method

.method private d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    .line 736
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "SPY-16126 Empty playableId"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 740
    :cond_0
    new-instance v0, Lo/u$FragmentManager$Activity;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->q:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v2, -0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lo/u$FragmentManager$Activity;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    .line 742
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object p2, Lo/u$FragmentManager;->a:Lo/u$FragmentManager;

    invoke-virtual {p1, p2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    .line 743
    invoke-virtual {p1, v0}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    iget-object p2, p0, Lo/Qn;->d:Landroid/content/Context;

    .line 744
    invoke-virtual {p1, p2}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Lo/Bi;Lo/Qn$TaskDescription;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 593
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 601
    :cond_1
    invoke-virtual {p1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iput-object v1, p2, Lo/Qn$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 602
    iget-object v1, p2, Lo/Qn$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_3

    .line 604
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lo/Tf;->ai()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 608
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_2
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gv:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 611
    invoke-interface {v0}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v0}, Lo/AK;->V()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    invoke-virtual {p1}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    .line 610
    invoke-static {v2, v5}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 615
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 618
    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v1, v2}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    .line 619
    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, v1}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lo/Qn$TaskDescription;->d:Ljava/lang/CharSequence;

    .line 625
    invoke-virtual {p1}, Lo/Tf;->aY()Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 627
    iput-object p1, p2, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    return-void

    .line 631
    :cond_4
    invoke-static {}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b()Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p1

    .line 633
    sget-object v0, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    iget-object v1, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 634
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lo/Qq;

    invoke-direct {v0, p0, p2}, Lo/Qq;-><init>(Lo/Qn;Lo/Qn$TaskDescription;)V

    new-instance v1, Lo/Qo;

    invoke-direct {v1, p2}, Lo/Qo;-><init>(Lo/Qn$TaskDescription;)V

    .line 635
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic d(Lo/Qn$TaskDescription;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lo/Qn;->b(Lo/Qn$TaskDescription;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic d(Lo/Qn;Lo/Qn$TaskDescription;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/Qn;->b(Lo/Qn$TaskDescription;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method private e(Landroid/app/NotificationManager;)V
    .locals 2

    const-string v0, "nf_downloadNotification"

    const-string v1, "cancelAndRemoveDownloadProgressNotification"

    .line 759
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x67

    .line 760
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 761
    iget-object p1, p0, Lo/Qn;->c:Lo/Ac;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lo/Ac;->c(IZ)V

    return-void
.end method

.method private e(Lo/Bi;Ljava/lang/String;)V
    .locals 5

    .line 443
    invoke-direct {p0, p1}, Lo/Qn;->h(Lo/Bi;)Lo/Qn$TaskDescription;

    move-result-object v0

    .line 444
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 445
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lo/Qn;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 447
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, v0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 448
    invoke-virtual {v2, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 449
    iget-object v3, v0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 450
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Qn;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 451
    iget-object p1, v0, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1}, Lo/Qn;->a(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 453
    iput p2, p1, Landroid/app/Notification;->priority:I

    .line 454
    iget-object p2, p0, Lo/Qn;->d:Landroid/content/Context;

    const-string v0, "notification"

    .line 455
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    if-eqz p2, :cond_0

    .line 457
    invoke-direct {p0, p2}, Lo/Qn;->c(Landroid/app/NotificationManager;)V

    const/16 v0, 0x66

    .line 458
    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "nf_downloadNotification"

    const-string v1, "removeAllNotifications"

    .line 748
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lo/Qn;->d:Landroid/content/Context;

    const-string v1, "notification"

    .line 750
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 752
    invoke-direct {p0, v0}, Lo/Qn;->c(Landroid/app/NotificationManager;)V

    .line 753
    invoke-direct {p0, v0}, Lo/Qn;->a(Landroid/app/NotificationManager;)V

    .line 754
    invoke-direct {p0, v0}, Lo/Qn;->e(Landroid/app/NotificationManager;)V

    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 3

    .line 791
    iget-object v0, p0, Lo/Qn;->i:Landroid/util/LruCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Lo/Qn;->i:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lo/Qn;->i:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 802
    :cond_1
    iget-object p1, p0, Lo/Qn;->i:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lo/Qn;->i:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    check-cast p1, Lo/Qn$TaskDescription;

    iget-boolean p1, p1, Lo/Qn$TaskDescription;->c:Z

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private h(Lo/Bi;)Lo/Qn$TaskDescription;
    .locals 3

    .line 653
    iget-object v0, p0, Lo/Qn;->i:Landroid/util/LruCache;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Qn$TaskDescription;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Lo/Qn$TaskDescription;

    invoke-direct {v0, p0}, Lo/Qn$TaskDescription;-><init>(Lo/Qn;)V

    .line 656
    iget-object v1, p0, Lo/Qn;->i:Landroid/util/LruCache;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-direct {p0, p1, v0}, Lo/Qn;->d(Lo/Bi;Lo/Qn$TaskDescription;)V

    .line 662
    :cond_0
    invoke-interface {p1}, Lo/Bi;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lo/Bi;->B()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lo/Qn$TaskDescription;->c:Z

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 782
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 723
    iget-object v1, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lo/QU;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 726
    :cond_0
    iget-object p1, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lo/QU;->d(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    .line 729
    :goto_0
    iget-object v0, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.offline.delete_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-direct {p0, v0, p1}, Lo/Qn;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 172
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 173
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lo/Qn;->h(Lo/Bi;)Lo/Qn$TaskDescription;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lo/Qn;->g:I

    .line 201
    invoke-direct {p0}, Lo/Qn;->f()V

    return-void
.end method

.method public a(Lo/Bi;I)V
    .locals 4

    const-string v0, "nf_downloadNotification"

    const-string v1, "onOfflinePlayableProgress"

    .line 240
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, p1}, Lo/Qn;->h(Lo/Bi;)Lo/Qn$TaskDescription;

    move-result-object v0

    .line 243
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/16 v3, 0x64

    .line 244
    invoke-virtual {v1, v3, p2, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 245
    invoke-virtual {p0, v1, p1}, Lo/Qn;->e(Landroid/app/Notification$Builder;Lo/Bi;)V

    .line 246
    invoke-virtual {p0, v1, p1}, Lo/Qn;->d(Landroid/app/Notification$Builder;Lo/Bi;)V

    .line 247
    invoke-direct {p0, p1}, Lo/Qn;->a(Lo/Bi;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 250
    invoke-virtual {p0, v1}, Lo/Qn;->d(Landroid/app/Notification$Builder;)V

    .line 251
    invoke-virtual {p0, p1, v0}, Lo/Qn;->b(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;

    move-result-object p2

    .line 253
    iget-boolean v2, v0, Lo/Qn$TaskDescription;->c:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ih:I

    invoke-static {v2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    .line 255
    :goto_0
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 256
    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 257
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 258
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Qn;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 259
    iget-object p1, v0, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1}, Lo/Qn;->a(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p2, p0, Lo/Qn;->d:Landroid/content/Context;

    const-string v0, "notification"

    .line 262
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    if-eqz p2, :cond_1

    .line 264
    invoke-direct {p0, p2}, Lo/Qn;->a(Landroid/app/NotificationManager;)V

    .line 265
    iget-object v0, p0, Lo/Qn;->c:Lo/Ac;

    const/16 v1, 0x65

    invoke-interface {v0, v1, p1}, Lo/Ac;->e(ILandroid/app/Notification;)V

    .line 267
    :try_start_0
    invoke-virtual {p2, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 269
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.offline.stop_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-direct {p0, v0, p1}, Lo/Qn;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;
.end method

.method protected abstract b(Landroid/app/Notification$Builder;Lo/Bi;)V
.end method

.method public b(Z)V
    .locals 0

    .line 230
    invoke-direct {p0}, Lo/Qn;->f()V

    return-void
.end method

.method c(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.offline.start_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    invoke-direct {p0, v0, p1}, Lo/Qn;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 0

    .line 777
    invoke-static {}, Lo/aeB;->a()Z

    .line 778
    invoke-direct {p0}, Lo/Qn;->f()V

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 11

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_downloadNotification"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "playable_id"

    .line 524
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "videoType"

    .line 525
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 526
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, -0x1

    .line 529
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "com.netflix.mediaclient.intent.action.offline.start_download"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v6, "com.netflix.mediaclient.intent.action.offline.download_complete_notification_dismissed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_2
    const-string v6, "com.netflix.mediaclient.intent.action.offline.stop_download"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_3
    const-string v6, "com.netflix.mediaclient.intent.action.offline.delete_download"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "com.netflix.mediaclient.intent.action.offline.watch_playable"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x2

    :cond_0
    :goto_0
    if-eqz v5, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    const-string v2, "no action done."

    .line 552
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 549
    :cond_1
    iput v4, p0, Lo/Qn;->g:I

    goto :goto_1

    .line 544
    :cond_2
    invoke-direct {p0}, Lo/Qn;->f()V

    .line 545
    new-instance v1, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;-><init>()V

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 546
    iget-object v1, p0, Lo/Qn;->j:Lo/nS;

    invoke-interface {v1, v0}, Lo/nS;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 539
    :cond_3
    invoke-direct {p0}, Lo/Qn;->f()V

    .line 540
    invoke-direct {p0}, Lo/Qn;->h()V

    .line 541
    invoke-direct {p0, v0, v2}, Lo/Qn;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_1

    .line 535
    :cond_4
    new-instance v1, Lcom/netflix/cl/model/event/session/command/ResumeDownloadCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/ResumeDownloadCommand;-><init>()V

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 536
    iget-object v1, p0, Lo/Qn;->j:Lo/nS;

    invoke-interface {v1, v0}, Lo/nS;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 531
    :cond_5
    new-instance v1, Lcom/netflix/cl/model/event/session/command/PauseDownloadCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/PauseDownloadCommand;-><init>()V

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 532
    iget-object v1, p0, Lo/Qn;->j:Lo/nS;

    invoke-interface {v1, v0}, Lo/nS;->b(Ljava/lang/String;)V

    .line 556
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.netflix.mediaclient.intent.action.offline.launch_offline_activity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 560
    iput v4, p0, Lo/Qn;->g:I

    .line 561
    invoke-direct {p0, v0}, Lo/Qn;->i(Ljava/lang/String;)V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x427ec529 -> :sswitch_4
        -0x171aef1d -> :sswitch_3
        -0x13f659d4 -> :sswitch_2
        -0x4aa4603 -> :sswitch_1
        0x6985729e -> :sswitch_0
    .end sparse-switch
.end method

.method public c(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method protected abstract d()I
.end method

.method protected abstract d(Landroid/app/Notification$Builder;)V
.end method

.method protected abstract d(Landroid/app/Notification$Builder;Lo/Bi;)V
.end method

.method protected abstract d(Landroid/app/Notification$Builder;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllPlayablesDeleted status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_downloadNotification"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lo/Qn;->f()V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lo/Qn;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 191
    iput p1, p0, Lo/Qn;->g:I

    .line 192
    invoke-direct {p0}, Lo/Qn;->f()V

    return-void
.end method

.method public d(Lo/Bi;)V
    .locals 0

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 3

    .line 387
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lo/Qn;->b(Lo/Bi;)V

    goto :goto_3

    .line 391
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 398
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_2

    .line 399
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ib:I

    invoke-static {p2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 400
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->n:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_3

    goto :goto_0

    .line 408
    :cond_3
    invoke-direct {p0}, Lo/Qn;->f()V

    return-void

    .line 401
    :cond_4
    :goto_0
    invoke-static {p2}, Lo/aeF;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Ljava/lang/String;

    move-result-object p2

    .line 402
    invoke-static {p2}, Lo/aeF;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 403
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ia:I

    invoke-static {v0}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {p2, v1}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object p2

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, v2}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 394
    :cond_5
    :goto_1
    iget-object p2, p0, Lo/Qn;->j:Lo/nS;

    invoke-interface {p2}, Lo/nS;->i()Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->id:I

    .line 395
    invoke-static {p2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ic:I

    .line 396
    invoke-static {p2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p2

    .line 411
    :goto_2
    invoke-direct {p0, p1, p2}, Lo/Qn;->e(Lo/Bi;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected abstract e()I
.end method

.method e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Landroid/app/PendingIntent;
    .locals 2

    .line 680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.offline.watch_playable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object p2

    const-string v1, "videoType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-direct {p0, v0, p1}, Lo/Qn;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;
    .locals 6

    .line 492
    invoke-interface {p1}, Lo/Bi;->x()J

    move-result-wide v0

    .line 493
    invoke-interface {p1}, Lo/Bi;->w()J

    move-result-wide v2

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    iget-boolean v5, p2, Lo/Qn$TaskDescription;->c:Z

    if-eqz v5, :cond_0

    iget-object v5, p2, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    invoke-static {v5}, Lo/aev;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 497
    iget-object v5, p2, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_0
    iget-object v5, p2, Lo/Qn$TaskDescription;->d:Ljava/lang/CharSequence;

    invoke-static {v5}, Lo/aev;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    iget-object p2, p2, Lo/Qn$TaskDescription;->d:Ljava/lang/CharSequence;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_1
    invoke-direct {p0, p1}, Lo/Qn;->a(Lo/Bi;)Ljava/lang/String;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 505
    iget-object v0, p0, Lo/Qn;->d:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 507
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hY:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "percentage"

    .line 508
    invoke-virtual {v1, v2, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    const-string v1, "currentRatio"

    .line 509
    invoke-virtual {p1, v1, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    const-string p2, "totalRatio"

    .line 510
    invoke-virtual {p1, p2, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e(Landroid/app/Notification$Builder;)V
.end method

.method protected abstract e(Landroid/app/Notification$Builder;Lo/Bi;)V
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lo/Qn;->f()V

    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 2

    .line 281
    invoke-direct {p0, p1}, Lo/Qn;->h(Lo/Bi;)Lo/Qn$TaskDescription;

    move-result-object v0

    const-string v1, "download completed. "

    .line 285
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    .line 287
    iget-object v0, v0, Lo/Qn$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v0, :cond_1

    .line 289
    invoke-static {}, Lo/fo;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {p1}, Lo/Bi;->n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne v0, v1, :cond_0

    .line 291
    invoke-direct {p0}, Lo/Qn;->f()V

    return-void

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lo/Qn;->c(Lo/Bi;)V

    goto :goto_0

    :cond_1
    const-string p1, "nf_downloadNotification"

    const-string v0, "mVideoType is not available."

    .line 298
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lo/Qn;->f()V

    :goto_0
    return-void
.end method
