.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineLicenseRequestDone(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOfflineLicenseRequestDone status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$100(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 183
    return-void
.end method
