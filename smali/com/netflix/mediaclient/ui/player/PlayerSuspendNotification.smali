.class public final Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;
.super Ljava/lang/Object;
.source "PlayerSuspendNotification.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x2

.field private static final PLAYER_SUSPEND_NOTIFICATION_ACTION_DELETE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mSecondaryTitle:Ljava/lang/String;

.field private final mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->fetchImageWithLoader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->show(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private createNotificationPendingIntentDelete()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationPendingIntentResume()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private fetchImageWithLoader(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Loader url empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$2;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$2;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;)V

    move-object v1, p1

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ImageLoader is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->show(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private getContentView(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/widget/RemoteViews;
    .locals 5

    const v4, 0x7f0f0357

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz p4, :cond_3

    if-eqz v2, :cond_2

    new-instance v0, Landroid/widget/RemoteViews;

    const v3, 0x7f030101

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    if-eqz p3, :cond_0

    const v1, 0x7f0f0356

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    if-eqz v2, :cond_1

    const v1, 0x7f0f0358

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Landroid/widget/RemoteViews;

    const v3, 0x7f030103

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    new-instance v0, Landroid/widget/RemoteViews;

    const v3, 0x7f030100

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/widget/RemoteViews;

    const v3, 0x7f030102

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, ""

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private getDefaultBoxArt()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isDelete(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private show(Landroid/graphics/Bitmap;)V
    .locals 7

    const v6, 0x7f020134

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->getDefaultBoxArt()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->createNotificationPendingIntentResume()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->createNotificationPendingIntentDelete()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->getContentView(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1, v5}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->getContentView(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080222

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080223

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->createNotificationPendingIntentResume()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->createNotificationPendingIntentDelete()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    if-eqz p1, :cond_5

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_2
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_2
.end method


# virtual methods
.method cancelNotification()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method showNotification(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080170

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    iput-object v6, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method showNotificationOffline(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VideoDetails is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Playable is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080170

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    const/4 v1, 0x2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    :goto_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->fetchImageWithLoader(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    goto :goto_1
.end method
