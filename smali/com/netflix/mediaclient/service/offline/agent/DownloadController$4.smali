.class Lcom/netflix/mediaclient/service/offline/agent/DownloadController$4;
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
    .line 243
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$4;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$4;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$400(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->continueDownloadOnBackOff()V

    .line 247
    return-void
.end method
