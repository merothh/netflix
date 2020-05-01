.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;
.super Ljava/lang/Object;
.source "NotificationsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Manager is here!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->access$102(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->access$200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->access$202(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Manager isn\'t available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
