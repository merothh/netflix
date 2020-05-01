.class Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DetailsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Received request to reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->access$100(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    goto :goto_0
.end method
