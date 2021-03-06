.class public Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;
.super Ljava/lang/Object;
.source "PdsDownloadSession.java"


# static fields
.field private static final PROGRESS_PERCENT_INTERVAL:I = 0x1e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isManifestFetchInProgress:Z

.field private isPaused:Z

.field private lastNotifiedProgressPercentage:I

.field private mAppSessionId:Ljava/lang/String;

.field private mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

.field private mDxId:Ljava/lang/String;

.field private mLinkCancelDownload:Lorg/json/JSONObject;

.field private mLinkCompleteDownload:Lorg/json/JSONObject;

.field private mLinkPauseDownload:Lorg/json/JSONObject;

.field private mLinkProgressDownload:Lorg/json/JSONObject;

.field private mLinkResumeDownload:Lorg/json/JSONObject;

.field private mLinkStartDownload:Lorg/json/JSONObject;

.field private mLinkStopDownloadOnError:Lorg/json/JSONObject;

.field private mLinkStopDownloadOnExpiredManifest:Lorg/json/JSONObject;

.field private mLinkStopDownloadOnLicenseError:Lorg/json/JSONObject;

.field private mOxId:Ljava/lang/String;

.field private mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

.field private mPlayableId:Ljava/lang/String;

.field private mUserSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mPlayableId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mOxId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mDxId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mAppSessionId:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mUserSessionId:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    return-void
.end method

.method private areLinksPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStartDownload:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkCompleteDownload:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildDownloadEvent(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mAppSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mUserSessionId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->setDownloadContext(Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    move-result-object v0

    return-object v0
.end method

.method private sendEventForLink(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sending pds download event: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "rel"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->buildDownloadEvent(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendPdsEventViaLogging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPdsEventViaLogging(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->sendPdsEventViaLogging(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendStopDownloadEventForLink(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->setPaused(Z)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->buildDownloadEvent(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->setErrorInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendPdsEventViaLogging(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->flushEventsInLogging()V

    goto :goto_0
.end method

.method private shouldRateLimitProgressMessage(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->lastNotifiedProgressPercentage:I

    add-int/lit8 v2, v2, 0x1e

    if-lt p1, v2, :cond_1

    :cond_0
    iput p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->lastNotifiedProgressPercentage:I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rate limited progress message percentage: %d, lastNotifiedProgressPercentage: %d, interval: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->lastNotifiedProgressPercentage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getDxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mDxId:Ljava/lang/String;

    return-object v0
.end method

.method public getOxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mOxId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mPlayableId:Ljava/lang/String;

    return-object v0
.end method

.method public isManifestFetchInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->isManifestFetchInProgress:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->isPaused:Z

    return v0
.end method

.method public needToFetchManifest()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->areLinksPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->isManifestFetchInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDownloadCompleteMessage()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkCompleteDownload:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendEventForLink(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->flushEventsInLogging()V

    return-void
.end method

.method public sendDownloadPauseMessage()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkPauseDownload:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendEventForLink(Lorg/json/JSONObject;)V

    return-void
.end method

.method public sendDownloadProgressMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkProgressDownload:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->shouldRateLimitProgressMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkProgressDownload:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->buildDownloadEvent(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->setProgressPercentage(I)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendPdsEventViaLogging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendDownloadResumeMessage()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkResumeDownload:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendEventForLink(Lorg/json/JSONObject;)V

    return-void
.end method

.method public sendStartDownloadMessage()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStartDownload:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendEventForLink(Lorg/json/JSONObject;)V

    return-void
.end method

.method public sendStopDownloadOnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnError:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnError:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendStopDownloadEventForLink(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendStopDownloadOnExpiredManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnExpiredManifest:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnExpiredManifest:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendStopDownloadEventForLink(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendStopDownloadOnLicenseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnLicenseError:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnLicenseError:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendStopDownloadEventForLink(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDownloadContext(Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    return-object p0
.end method

.method public setLinks(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo v0, "startDownload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStartDownload:Lorg/json/JSONObject;

    const-string/jumbo v0, "pauseDownload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkPauseDownload:Lorg/json/JSONObject;

    const-string/jumbo v0, "resumeDownload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkResumeDownload:Lorg/json/JSONObject;

    const-string/jumbo v0, "completeDownload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkCompleteDownload:Lorg/json/JSONObject;

    const-string/jumbo v0, "cancelDownload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkCancelDownload:Lorg/json/JSONObject;

    const-string/jumbo v0, "reportProgress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkProgressDownload:Lorg/json/JSONObject;

    const-string/jumbo v0, "stopDownloadDueToRejectedLicense"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnLicenseError:Lorg/json/JSONObject;

    const-string/jumbo v0, "stopDownloadDueToError"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnError:Lorg/json/JSONObject;

    const-string/jumbo v0, "stopDownloadDueToExpiredManifest"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnExpiredManifest:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public setManifestFetchInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->isManifestFetchInProgress:Z

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->isPaused:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PdsDownloadSession{mPlayableId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOxId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mOxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDxId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mDxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkStartDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStartDownload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkPauseDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkPauseDownload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkResumeDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkResumeDownload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkCompleteDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkCompleteDownload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkCancelDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkCancelDownload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkProgressDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkProgressDownload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkStopDownloadOnLicenseError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnLicenseError:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkStopDownloadOnError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->mLinkStopDownloadOnError:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
