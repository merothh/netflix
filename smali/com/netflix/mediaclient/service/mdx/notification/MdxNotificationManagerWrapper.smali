.class public final Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;
.super Ljava/lang/Object;
.source "MdxNotificationManagerWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;


# instance fields
.field private mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

.field private mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->cancelNotification()V

    :cond_0
    return-void
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->getNotification(Z)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isInPostPlay()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->isInPostPlay()Z

    move-result v0

    return v0
.end method

.method public setBoxart(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxart(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setBoxartNotify(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxartNotify(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setPlayerStateNotify(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setPlayerStateNotify(ZZ)V

    :cond_0
    return-void
.end method

.method public setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUpNextStateNotify(ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setUpNextStateNotify(ZZZ)V

    :cond_0
    return-void
.end method

.method public startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    :cond_0
    return-void
.end method

.method public stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    :cond_0
    return-void
.end method

.method public stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    :cond_0
    return-void
.end method
