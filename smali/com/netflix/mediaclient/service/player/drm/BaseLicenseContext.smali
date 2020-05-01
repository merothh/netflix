.class public abstract Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;
.super Ljava/lang/Object;
.source "BaseLicenseContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_baseLicenseContext"


# instance fields
.field private drmLicenseContextId:Ljava/lang/String;

.field private licenseData:[B

.field private mBase64Challenge:Ljava/lang/String;

.field private mDrmHeader:[B

.field private mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

.field private mLicenseLink:Lorg/json/JSONObject;

.field private mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

.field private providerSessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;[BLorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->setmLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V

    .line 46
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mDrmHeader:[B

    .line 47
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mLicenseLink:Lorg/json/JSONObject;

    .line 48
    return-void
.end method


# virtual methods
.method public addLicenseReponse(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "nf_baseLicenseContext"

    const-string/jumbo v1, "parsing license response start."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string/jumbo v0, "drmLicenseContextId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->drmLicenseContextId:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "providerSessionToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->providerSessionToken:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "licenseResponseBase64"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->licenseData:[B

    .line 81
    const-string/jumbo v0, "nf_baseLicenseContext"

    const-string/jumbo v1, "parsing license response end."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object p1
.end method

.method public getBase64Challenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mBase64Challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmHeader()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mDrmHeader:[B

    return-object v0
.end method

.method public getLicenseData()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->licenseData:[B

    return-object v0
.end method

.method public getLicenseLink()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mLicenseLink:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLicenseType()Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    return-object v0
.end method

.method public getmLicenseType()Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    return-object v0
.end method

.method public setChallenge([B)V
    .locals 1

    .prologue
    .line 64
    invoke-static {p1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mBase64Challenge:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setmLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_STANDARD:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    if-ne p1, v0, :cond_0

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    if-ne p1, v0, :cond_1

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->LIMITED:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    if-ne p1, v0, :cond_2

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    goto :goto_0
.end method
