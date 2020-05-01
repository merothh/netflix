.class abstract Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
.super Ljava/lang/Object;
.source "DownloadNotificationManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;


# static fields
.field private static final DELETE_DOWNLOAD:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.delete_download"

.field private static final DOWNLOAD_COMPLETE_NOTIFICATION_DISMISSED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.download_complete_notification_dismissed"

.field private static final INTENT_EXTRA_PLAYABLE_ID:Ljava/lang/String; = "playable_id"

.field private static final INTENT_EXTRA_VIDEO_TYPE:Ljava/lang/String; = "videoType"

.field private static final LAUNCH_OFFLINE_ACTIVITY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.launch_offline_activity"

.field private static final START_DOWNLOAD:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.start_download"

.field private static final STOP_DOWNLOAD:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.stop_download"

.field private static final TAG:Ljava/lang/String; = "nf_downloadNotification"

.field private static final WATCH_PLAYABLE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.watch_playable"


# instance fields
.field private final DOWNLOAD_COMPLETE_NOTIFICATION_ID:I

.field private final DOWNLOAD_ERROR_NOTIFICATION_ID:I

.field private final DOWNLOAD_PROGRESS_NOTIFICATION_ID:I

.field final mContext:Landroid/content/Context;

.field private final mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field private mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final mLargeIconHeight:I

.field private final mLargeIconWidth:I

.field private final mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

.field private final mNotificationData:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mNumDownloadCompletedForNotification:I

.field private final mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->DOWNLOAD_PROGRESS_NOTIFICATION_ID:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->DOWNLOAD_ERROR_NOTIFICATION_ID:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->DOWNLOAD_COMPLETE_NOTIFICATION_ID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    new-instance v1, Landroid/util/LruCache;

    if-eqz p5, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNotificationData:Landroid/util/LruCache;

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mLargeIconWidth:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mLargeIconHeight:I

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mLargeIconWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mLargeIconHeight:I

    return v0
.end method

.method private buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "buildNotification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00a1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private cancelAndRemoveDownloadCompleteNotification(Landroid/app/NotificationManager;)V
    .locals 3

    const/16 v2, 0x67

    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "cancelAndRemoveDownloadProgressNotification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestBackgroundForNotification(IZ)V

    return-void
.end method

.method private cancelAndRemoveDownloadProgressNotification(Landroid/app/NotificationManager;)V
    .locals 3

    const/16 v2, 0x65

    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "cancelAndRemoveDownloadProgressNotification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestBackgroundForNotification(IZ)V

    return-void
.end method

.method private cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V
    .locals 2

    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "cancelAndRemoveErrorNotification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static createDownloadNotificationManager(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    goto :goto_0
.end method

.method private createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.offline"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "playable_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->DownloadNotification:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->setIntentGroupType(Landroid/content/Intent;Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNotificationData:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNotificationData:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->fetchNotificationData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)V

    :cond_0
    return-object v0
.end method

.method private fetchNotificationData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)V
    .locals 9

    const/16 v5, 0x200f

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    iput-object v5, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v5, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v5, v6, :cond_3

    new-instance v5, Ljava/lang/String;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v6, 0x7f080170

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVideoSummaryFetched mVideoType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;

    invoke-direct {v5, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)V

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.launch_offline_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteIntent()Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.download_complete_notification_dismissed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->getAsPercentString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDownloadStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 7

    const/16 v6, 0x65

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x64

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addResumeDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->setSmallIconForStoppedByUser(Landroid/app/Notification$Builder;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getBigTextForStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v2, v6, v5}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestBackgroundForNotification(IZ)V

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private onOfflinePlayableProgressAfterKitKat(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 6

    const/16 v5, 0x65

    const/4 v4, 0x0

    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "onOfflinePlayableProgressAfterKitKat"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p2, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addStopDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->setSmallIconForInProgress(Landroid/app/Notification$Builder;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getBigTextForInProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v2, v5, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestForegroundForNotification(ILandroid/app/Notification;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private onOfflinePlayableProgressKitKat(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 9

    const/16 v8, 0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "onOfflinePlayableProgressKitKat"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action;

    const v3, 0x7f020112

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getStopDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action;

    const v3, 0x7f0200cc

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0801af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getDeletePlayableIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f020134

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getBigTextForInProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mKitKatCompatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v2, v8, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestForegroundForNotification(ILandroid/app/Notification;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method

.method private removeAllNotifications()V
    .locals 2

    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "removeAllNotifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveDownloadProgressNotification(Landroid/app/NotificationManager;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveDownloadCompleteNotification(Landroid/app/NotificationManager;)V

    :cond_0
    return-void
.end method

.method private removeSystemNotificationBar()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showDownloadCompleteNotification(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 10

    const/16 v9, 0x67

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v1

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDownloadCompleteNotification mNumDownloadCompletedForNotification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getDownloadCompleteSmallIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0801b0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    if-gt v0, v7, :cond_3

    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v2, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addWatchAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v2, v9, v8}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestBackgroundForNotification(IZ)V

    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveDownloadProgressNotification(Landroid/app/NotificationManager;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090002

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method private showNotificationForErrors(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getErrorNotificationSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    const/4 v0, 0x2

    iput v0, v1, Landroid/app/Notification;->priority:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveDownloadProgressNotification(Landroid/app/NotificationManager;)V

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private startOfflineActivity(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startOfflineActivity playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloadsForPlayable(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private startPlayerActivity(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPlayerActivity playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_NOTIFICATION_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected abstract addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
.end method

.method protected abstract addResumeDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
.end method

.method protected abstract addStopDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
.end method

.method protected abstract addWatchAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
.end method

.method public cancelNotificationOnAccountInActive()V
    .locals 0

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    return-void
.end method

.method protected abstract getBigTextForInProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
.end method

.method protected abstract getBigTextForStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
.end method

.method getDeletePlayableIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.delete_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDownloadCompleteSmallIcon()I
.end method

.method protected abstract getErrorNotificationSmallIcon()I
.end method

.method protected getSecondaryTitlePercentageSizeString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
    .locals 7

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getCurrentEstimatedSpace()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getTotalEstimatedSpace()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStartDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.start_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method getStopDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.stop_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method getWatchPlayableIntent(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.watch_playable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "videoType"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public handleDownloadNotificationIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "playable_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "videoType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.offline.stop_download"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->pauseDownload(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.offline.launch_offline_activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->startOfflineActivity(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.offline.start_download"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->resumeDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.offline.watch_playable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeSystemNotificationBar()V

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->startPlayerActivity(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.offline.delete_download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteOfflinePlayable(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.offline.download_complete_notification_dismissed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    goto :goto_0
.end method

.method public isListenerDestroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAllPlayablesDeleted status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    return-void
.end method

.method public onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    :cond_0
    return-void
.end method

.method public onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_downloadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadCompleted before increment mNumDownloadCompletedForNotification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->showDownloadCompleteNotification(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "mVideoType is not available."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    goto :goto_0
.end method

.method public onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    return-void
.end method

.method public onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 4

    const/16 v3, 0x200f

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadStopped playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " stopReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StoppedFromAgentAPI:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->handleDownloadStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getRequiresUnmeteredNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->showNotificationForErrors(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0801b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->GeoCheckError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_7

    :cond_6
    invoke-static {p2}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->getOfflineErrorCodeForStoppedDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->addParenthesisWithPrefixSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0801b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    goto :goto_0
.end method

.method public onError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    return-void
.end method

.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOfflinePlayableDeleted playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    return-void
.end method

.method public onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 2

    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "onOfflinePlayableProgress"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->onOfflinePlayableProgressKitKat(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->onOfflinePlayableProgressAfterKitKat(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    goto :goto_0
.end method

.method public onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method protected abstract setSmallIconForInProgress(Landroid/app/Notification$Builder;)V
.end method

.method protected abstract setSmallIconForStoppedByUser(Landroid/app/Notification$Builder;)V
.end method
