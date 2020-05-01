.class public Lcom/netflix/mediaclient/service/configuration/drm/WidevineL3DrmManager;
.super Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;
.source "WidevineL3DrmManager.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->destroy()V

    return-void
.end method

.method public getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()[B
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getDeviceId()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->init()V

    return-void
.end method

.method public bridge synthetic onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .prologue
    .line 16
    invoke-super/range {p0 .. p5}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->onEvent(Landroid/media/MediaDrm;[BII[B)V

    return-void
.end method

.method protected setSecurityLevel()V
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineL3DrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Setting security level to L3"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineL3DrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v1, "securityLevel"

    const-string/jumbo v2, "L3"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
