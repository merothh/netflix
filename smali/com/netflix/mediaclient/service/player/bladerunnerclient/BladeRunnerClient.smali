.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;
.super Ljava/lang/Object;
.source "BladeRunnerClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private context:Landroid/content/Context;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field private mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_bladerunnerClient"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/content/Context;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->buildYearlyWarningStatusCode(Landroid/content/Context;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method private buildLinkRequestParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "building param for link %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->setLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildYearlyWarningMessage(Landroid/content/Context;JLjava/util/Locale;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMMM d, yyyy"

    invoke-direct {v0, v1, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080260

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "yearly warning msg: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method

.method private buildYearlyWarningStatusCode(Landroid/content/Context;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->buildYearlyWarningMessage(Landroid/content/Context;JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_WARNING_DL_N_TIMES_BEFORE_DATE:Lcom/netflix/mediaclient/StatusCode;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;I)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    return-object v1
.end method

.method private getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error parsing link %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public activateOfflineLicense(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "activateOfflineLicense"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$2;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)V

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "activating license"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->buildLinkRequestParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;

    invoke-direct {v2, v1, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    goto :goto_0
.end method

.method public deactivateOfflineLicense(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;

    invoke-direct {v0, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;-><init>(Z)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;->setLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;

    invoke-direct {v1, v0, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    return-void
.end method

.method public downloadComplete(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->buildLinkRequestParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchDownloadComplete;

    invoke-direct {v1, v0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchDownloadComplete;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    return-void
.end method

.method public fetchLicense(Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->getLicenseLink()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;->getBase64Challenge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->buildBaseParams(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->STREAMING:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    return-void
.end method

.method public fetchManifests([Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->uiversion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->flavor(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->playableIds([Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;

    invoke-direct {v1, v0, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    return-void
.end method

.method public fetchOfflineLicense(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 5

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->buildBaseParams(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;

    invoke-direct {v1, p0, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "fetching offline license"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;

    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    return-void
.end method

.method public fetchOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->uiversion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->type(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->downaloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->playableIds([Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;

    invoke-direct {v1, v0, p5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    return-void
.end method

.method public refreshOfflineLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 5

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->buildBaseParams(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->setInvokeLocation(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$3;

    invoke-direct {v1, p0, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$3;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "refreshing offline license"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;

    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    return-void
.end method

.method public refreshOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 6

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshOfflineManifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->uiversion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->type(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->downaloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->playableIds([Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;

    invoke-direct {v1, v0, p5, p6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    goto :goto_0
.end method

.method public syncActiveLicensesToServer(Ljava/util/List;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;->setDeactiveLinks(Ljava/util/List;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;

    invoke-direct {v1, v0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    return-void
.end method
