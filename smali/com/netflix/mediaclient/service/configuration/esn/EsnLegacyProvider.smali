.class public Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
.source "EsnLegacyProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method protected findDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->getIMEA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Device ID not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "UKNOWN"

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Emulator"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "1012UAR71QB0A91"

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected findModelId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->findBaseModelId()Ljava/lang/String;

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
