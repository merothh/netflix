.class Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$500(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isApplicationInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$600(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$700(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    .line 259
    return-void
.end method
