.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "FetchLicenseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_FetchLicenseRequest"


# instance fields
.field private final licenseReqType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

.field private final mIsRefresh:Z

.field private final pqlQuery1:Ljava/lang/String;

.field private final requestParams:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->licenseReqType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->requestParams:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->mIsRefresh:Z

    const-string/jumbo v0, "[\'license\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->pqlQuery1:Ljava/lang/String;

    return-void
.end method

.method private doCallback(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->STREAMING:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->licenseReqType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onLicenseFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v1, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v2, "onLicenseFetched type:%s, licenseResponse: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->licenseReqType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-interface {v1, v0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onOfflineLicenseFetched(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private getTypeForError()Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->licenseReqType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->STREAMING:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->StreamingLicense:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->mIsRefresh:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->OfflineLicenseRefresh:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->OfflineLicense:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    goto :goto_0
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "bladerunnerParams"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->requestParams:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->doCallback(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    const-string/jumbo v0, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v1, "license"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->getTypeForError()Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getStatus(Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->hasLinksInPayload(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->doCallback(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->parseFalkorResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const-string/jumbo v0, "nf_msl_volley_FetchLicenseRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseFalkorResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v3, "error parsing json"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method
