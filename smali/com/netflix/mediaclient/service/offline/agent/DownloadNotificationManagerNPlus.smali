.class Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;
.super Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
.source "DownloadNotificationManagerNPlus.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v2, 0x7f0200cc

    .line 52
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v3, 0x7f0801af

    .line 53
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getDeletePlayableIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 56
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 57
    return-void
.end method

.method protected addResumeDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v2, 0x7f0200ef

    .line 61
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v3, 0x7f0801b6

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getStartDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 65
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 66
    return-void
.end method

.method protected addStopDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v2, 0x7f020112

    .line 31
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v3, 0x7f0801b7

    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getStopDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 35
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 36
    return-void
.end method

.method protected addWatchAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v2, 0x7f0201ab

    .line 40
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v3, 0x7f0801b8

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getWatchPlayableIntent(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 44
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 45
    return-void
.end method

.method protected getBigTextForInProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getSecondaryTitlePercentageSizeString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBigTextForStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getSecondaryTitlePercentageSizeString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadCompleteSmallIcon()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f02010a

    return v0
.end method

.method protected getErrorNotificationSmallIcon()I
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f02010b

    return v0
.end method

.method protected setSmallIconForInProgress(Landroid/app/Notification$Builder;)V
    .locals 1

    .prologue
    .line 88
    const v0, 0x1080081

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 89
    return-void
.end method

.method protected setSmallIconForStoppedByUser(Landroid/app/Notification$Builder;)V
    .locals 1

    .prologue
    .line 81
    const v0, 0x1080082

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 82
    return-void
.end method
