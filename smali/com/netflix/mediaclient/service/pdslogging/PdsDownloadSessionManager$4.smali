.class Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$4;
.super Landroid/content/BroadcastReceiver;
.source "PdsDownloadSessionManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$4;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Received intent %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_PLAYABLE_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_ERROR_MESSAGE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$4;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$200(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "playable: %s - no session, dropping intent %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendStopDownloadOnLicenseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendStopDownloadOnExpiredManifest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_ERROR:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendStopDownloadOnError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "We do not support action :%s "

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
