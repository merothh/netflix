.class public Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;
.super Ljava/lang/Object;
.source "PdsDownloadEventParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final INVALID_PROGRESS_PERCENTAGE:I

.field private mAppSessionId:Ljava/lang/String;

.field private mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

.field private mErrorCode:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mEventLink:Lorg/json/JSONObject;

.field private mProgressPercentage:I

.field private mUserSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->INVALID_PROGRESS_PERCENTAGE:I

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    .line 32
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mAppSessionId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mUserSessionId:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mProgressPercentage:I

    .line 35
    return-void
.end method


# virtual methods
.method final build()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 64
    :cond_0
    :try_start_0
    const-string/jumbo v0, "version"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v0, "method"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    const-string/jumbo v4, "rel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v0, "url"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    const-string/jumbo v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 70
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 71
    const-string/jumbo v0, "clientTime"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v0, "appSessionId"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mAppSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v0, "userSessionId"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mUserSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v4, "isInBackground"

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v0, "trackerId"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getTrackId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    iget v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mProgressPercentage:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 78
    const-string/jumbo v0, "progressPercentage"

    iget v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mProgressPercentage:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mErrorCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const-string/jumbo v0, "errorCode"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    const-string/jumbo v0, "errorMessage"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_3
    const-string/jumbo v0, "uiDownloadContext"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v0, "params"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 74
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v3, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "error creating pds download event params"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public setDownloadContext(Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    .line 40
    return-object p0
.end method

.method public setErrorInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mErrorCode:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mErrorMessage:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public setProgressPercentage(I)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;->mProgressPercentage:I

    .line 46
    return-object p0
.end method
