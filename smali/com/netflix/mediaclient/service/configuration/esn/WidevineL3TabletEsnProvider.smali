.class public Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3TabletEsnProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;
.source "WidevineL3TabletEsnProvider.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;)V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/util/DeviceCategory;)V

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Widevine L3 tablet ESN Provider created..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method
