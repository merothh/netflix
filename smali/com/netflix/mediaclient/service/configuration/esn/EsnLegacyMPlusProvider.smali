.class public Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyMPlusProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
.source "EsnLegacyMPlusProvider.java"


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;-><init>()V

    const-class v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyMPlusProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "non wide vine esn without IMEI"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method protected findDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyMPlusProvider;->findFutureDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findModelId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyMPlusProvider;->findBaseModelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCryptoFactoryType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method
