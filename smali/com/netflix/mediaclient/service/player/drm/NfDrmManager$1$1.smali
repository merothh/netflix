.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "NfDrmManager.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

.field final synthetic val$sessionId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->this$1:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->val$sessionId:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchLicense movie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->val$sessionId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 104
    :cond_1
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "fetchLicense failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->this$1:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$000(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
