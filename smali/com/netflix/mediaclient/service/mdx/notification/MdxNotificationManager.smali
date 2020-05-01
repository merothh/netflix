.class public final Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;
.super Ljava/lang/Object;
.source "MdxNotificationManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxnotification"


# instance fields
.field private final context:Landroid/content/Context;

.field private isEpisode:Z

.field private isPlaying:Z

.field private isPostplay:Z

.field private final mNotificationId:I

.field private mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

.field private mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

.field private notificationManager:Landroid/app/NotificationManager;

.field private notificationPlayer:Landroid/app/Notification;

.field private notificationPostPlayer:Landroid/app/Notification;

.field private playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private supportBigContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mNotificationId:I

    const-string/jumbo v0, "nf_mdxnotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is episode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->init()V

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createRemoteViews(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createBuilders()V

    return-void
.end method

.method private createBuilders()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createPlayerBuilder()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createPostPlayerBuilder()V

    return-void
.end method

.method private createNotificationPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/service/NetflixService;->createShowMdxPlayerBroadcastIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private createPlayerBuilder()V
    .locals 4

    const/4 v2, 0x1

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f020189

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private createPostPlayerBuilder()V
    .locals 4

    const/4 v2, 0x1

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f020189

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private createRemoteViews(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->supportBigContent:Z

    :cond_0
    return-void
.end method

.method private setPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createNotificationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setTitles(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method private setPostPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createNotificationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setTitles(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method private updateNotification()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPostplay:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updatePostPlayerNotification()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updatePlayerNotification()V

    goto :goto_0
.end method

.method private updatePlayerNotification()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->supportBigContent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getRemoteViewBigContetnt()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private updatePostPlayerNotification()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->supportBigContent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getRemoteViewBigContetnt()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelNotification()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public getNotification(Z)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public isInPostPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPostplay:Z

    return v0
.end method

.method public setBoxart(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setBoxart(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setBoxart(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setBoxartNotify(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->setBoxart(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updateNotification()V

    goto :goto_0
.end method

.method public setPlayerStateNotify(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setState(ZZ)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updatePlayerNotification()V

    goto :goto_0
.end method

.method public setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdxnotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is episode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->setPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->setPostPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updateNotification()V

    return-void
.end method

.method public setUpNextStateNotify(ZZZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setState(ZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setState(ZZ)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updateNotification()V

    :cond_0
    return-void
.end method

.method public startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/service/NetflixService;->requestForegroundForNotification(ILandroid/app/Notification;)V

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPostplay:Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    goto :goto_0
.end method

.method public stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->cancelNotification()V

    invoke-virtual {p1, v0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->requestBackgroundForNotification(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    return-void
.end method

.method public stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPostplay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v1}, Lcom/netflix/mediaclient/service/NetflixService;->requestBackgroundForNotification(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    :cond_0
    return-void
.end method
