.class Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadController.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;Lcom/netflix/mediaclient/service/offline/agent/DownloadController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$1000(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$900(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$1000(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$900(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
