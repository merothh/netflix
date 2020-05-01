.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;
.super Landroid/os/Handler;
.source "NfDrmManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getSessionId(II)Ljava/lang/Long;
    .locals 6

    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->getSessionId(II)Ljava/lang/Long;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/media/MediaDrm$ProvisionRequest;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaDrm$ProvisionRequest;

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "NfPlayerDrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "about to fetchLicense for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", challenge ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getBase64Challenge()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getmLicenseType()Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$100(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

    invoke-direct {v3, p0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;Ljava/lang/Long;)V

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchLicense(Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
