.class public Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1TabletEsnProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;
.source "WidevineL1TabletEsnProvider.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/util/DeviceCategory;)V

    .line 17
    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Widevine L1 tablet ESN Provider created..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method protected getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method
