.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;
.super Landroid/content/BroadcastReceiver;
.source "MdxAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doMDXPlayBackEnd(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->isInPostPlay(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: receive MDXUPDATE_PLAYBACKEND"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->stop()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->targetBecomeInactive(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->targetPlaybackStopped(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private doMDXPlaybackStart()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: receive MDXUPDATE_PLAYBACKSTART"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->start()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setBoxart(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMdxNotification(Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setPlayerStateNotify(ZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxartNotify(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->targetBecomeActive(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->startMediaSession()V

    goto :goto_0
.end method

.method private doMDXPostPlay(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "postplayState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInCountdown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->doMDXPostPlayCountdownStart(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInPrompt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->doMDXPostPlayPrompt(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doMDXPostPlayCountdownStart(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->updateVideoIdsForPostplay(Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMdxNotification(Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    invoke-interface {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setUpNextStateNotify(ZZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    goto :goto_0
.end method

.method private doMDXPostPlayPrompt(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v1

    iget v1, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    new-instance v4, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method private dpMDXSimplePlaybackState(Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v0, "paused"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "transitioning"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->isInPostPlay(Landroid/content/Intent;)Z

    move-result v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "nf_mdx_MdxAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MdxAgent: simplePlaybackState : paused "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", transitioning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v3

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setPlayerStateNotify(ZZ)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    goto :goto_0
.end method

.method private updateVideoIdsForPostplay(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInCountdown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->getPostplayTitle()[Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->isEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->getId()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    new-instance v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v2}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3902(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v1

    iput-boolean v4, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->getId()I

    move-result v0

    iput v0, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0xc8

    const/16 v5, 0x64

    const/16 v3, 0x15

    const/4 v0, 0x0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->doMDXPlayBackEnd(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->doMDXPlaybackStart()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->isInPostPlay()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v1

    const-string/jumbo v2, "volume"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateCurrentVolume(IZ)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->doMDXPostPlay(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_SIMPLE_PLAYBACKSTATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->dpMDXSimplePlaybackState(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "errorCode"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->getSharedState(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Loading:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object v4

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object v2

    if-ne v3, v2, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    if-lt v1, v5, :cond_9

    if-ge v1, v6, :cond_9

    if-eqz v0, :cond_9

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v2, "MdxAgent: received error, clear video detail"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    :cond_9
    if-lt v1, v5, :cond_a

    if-lt v1, v6, :cond_b

    :cond_a
    const/16 v0, 0xc9

    if-ne v1, v0, :cond_0

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    goto/16 :goto_0
.end method
