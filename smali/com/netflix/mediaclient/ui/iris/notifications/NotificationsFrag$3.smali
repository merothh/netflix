.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;
.super Ljava/lang/Object;
.source "NotificationsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

.field final synthetic val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

.field final synthetic val$position:I

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

.field final synthetic val$videoId:Ljava/lang/String;

.field final synthetic val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$videoId:Ljava/lang/String;

    iput p7, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    .line 438
    :cond_0
    new-instance v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$requestId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getMDPTrackId()I

    move-result v1

    invoke-direct {v4, v0, v1, v2, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$videoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "SocialNotif"

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iget v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewTitleDetails:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->menuPanel:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-object v3, v6

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-static {}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick() got weird use case when mServiceManager is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
