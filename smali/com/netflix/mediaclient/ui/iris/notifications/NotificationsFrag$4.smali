.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "NotificationsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

.field final synthetic val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1500(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v4

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1602(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$402(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$100(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->refreshIrisNotifications(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$102(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1700(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1800(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1800(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
