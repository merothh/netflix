.class public final Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;
.super Ljava/lang/Object;
.source "EsnProviderRegistry.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_esn"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static createESN(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 4

    .prologue
    .line 42
    const-string/jumbo v0, "nf_esn"

    const-string/jumbo v1, "Create ESN"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    .line 44
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 47
    :goto_0
    if-eqz v0, :cond_6

    .line 48
    const/16 v0, 0x17

    if-lt v1, v0, :cond_3

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyMPlusProvider;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyMPlusProvider;-><init>()V

    .line 50
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const/16 v2, 0x12

    if-lt v1, v2, :cond_5

    .line 52
    const-string/jumbo v1, "nf_esn"

    const-string/jumbo v2, "JB MR2+ device"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidewineSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    const-string/jumbo v1, "nf_esn"

    const-string/jumbo v2, "JB MR2+ device with Widewine support, but failed to initialize or not allowed, return ESN Legacy implementation!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_2
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->initialize(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const-string/jumbo v1, "nf_esn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ESN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-object v0

    .line 44
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;-><init>()V

    goto :goto_1

    .line 56
    :cond_4
    const-string/jumbo v1, "nf_esn"

    const-string/jumbo v2, "JB MR2+ device without Widewine support, return ESN Legacy implementation!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 59
    :cond_5
    const-string/jumbo v1, "nf_esn"

    const-string/jumbo v2, "Pre JB MR2 device, return ESN Legacy implementation!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 64
    :cond_6
    const-string/jumbo v0, "nf_esn"

    const-string/jumbo v1, "JB MR2+ device with Widewine support, return ESN CDM implementation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isDevicePredeterminedToUseWV()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    const-string/jumbo v0, "nf_esn"

    const-string/jumbo v1, "JB MR2+ device with legacy Widewine support, return ESN CDM Nexus 7 implementation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;)V

    goto :goto_2

    .line 70
    :cond_7
    const-string/jumbo v0, "nf_esn"

    const-string/jumbo v1, "JB MR2+ device with new Widewine support, return ESN CDM implementation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->createEsnCdmProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;

    move-result-object v0

    goto :goto_2
.end method

.method private static createEsnCdmProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;
    .locals 5

    .prologue
    .line 86
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    .line 87
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    .line 90
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v2, :cond_0

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1PhoneEsnProvider;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1PhoneEsnProvider;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;)V

    .line 102
    :goto_0
    return-object v0

    .line 92
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v2, :cond_1

    .line 93
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1TabletEsnProvider;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1TabletEsnProvider;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;)V

    goto :goto_0

    .line 94
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v2, :cond_2

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3PhoneEsnProvider;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3PhoneEsnProvider;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;)V

    goto :goto_0

    .line 96
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_3

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v2, :cond_3

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3TabletEsnProvider;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3TabletEsnProvider;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;)V

    goto :goto_0

    .line 99
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not able to create ESN provider for not supported combination. Device category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", Crypto provider: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
