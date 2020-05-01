.class public abstract Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
.source "EsnCdmProvider.java"


# static fields
.field private static final CATEGORY_TYPE_PHONE:Ljava/lang/String; = "P-"

.field private static final CATEGORY_TYPE_TABLET:Ljava/lang/String; = "T-"

.field private static final CRYPTO_PROVIDER_L3:Ljava/lang/String; = "L3-"

.field private static final DASH:Ljava/lang/String; = "-"

.field private static final DEVICE_TYPE_PREFIX:Ljava/lang/String; = "PRV-"


# instance fields
.field private mCdmModelId:Ljava/lang/String;

.field private mDeviceCategory:Lcom/netflix/mediaclient/util/DeviceCategory;

.field private mDrmSystemId:Ljava/lang/String;

.field private mDrmUniqueDeviceId:Ljava/lang/String;

.field private mPhone:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/util/DeviceCategory;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DrmManager is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    if-nez p2, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Device category is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDeviceCategory:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p2, v0, :cond_2

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mPhone:Z

    .line 56
    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getDeviceId()[B

    move-result-object v0

    .line 57
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmSystemId:Ljava/lang/String;

    .line 58
    if-nez v0, :cond_3

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MediaDrm.uniqueDeviceId is null! We can not use this ESN implementation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmUniqueDeviceId:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->findCdmModelId(Lcom/netflix/mediaclient/util/DeviceCategory;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModelId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private findCdmModelId(Lcom/netflix/mediaclient/util/DeviceCategory;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2d

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "PRV-"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mPhone:Z

    if-eqz v0, :cond_4

    .line 69
    const-string/jumbo v0, "P-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v2, :cond_0

    .line 75
    const-string/jumbo v0, "L3-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v0, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MANUFACTURER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string/jumbo v0, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    const-string/jumbo v2, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Model was bigger than: 45. Using first 45 characters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getManufactorer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    const-string/jumbo v2, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Model ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmSystemId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_4
    const-string/jumbo v0, "T-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method protected findDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmUniqueDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected findModelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModelId:Ljava/lang/String;

    return-object v0
.end method

.method protected generateEsnPrefix()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->ESN_PREFIX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "PRV-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mPhone:Z

    if-eqz v1, :cond_2

    .line 108
    const-string/jumbo v1, "P-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_0

    .line 114
    const-string/jumbo v1, "L3-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 121
    if-lez v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    .line 125
    :cond_1
    return-void

    .line 110
    :cond_2
    const-string/jumbo v1, "T-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCryptoFactoryType()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x2

    return v0
.end method

.method protected getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDeviceCategory:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method
