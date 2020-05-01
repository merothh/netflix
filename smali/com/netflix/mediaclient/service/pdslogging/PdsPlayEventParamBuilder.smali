.class public Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
.super Ljava/lang/Object;
.source "PdsPlayEventParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppSessionId:Ljava/lang/String;

.field private mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

.field private mDurationMs:J

.field private mDxid:Ljava/lang/String;

.field private mEndPositionMs:J

.field private mEventLink:Lorg/json/JSONObject;

.field private mHasErrors:Z

.field private mListPos:I

.field private mOxid:Ljava/lang/String;

.field private mPlayTimes:Lorg/json/JSONObject;

.field private mPlayableId:Ljava/lang/String;

.field private mSessionEndTimeMs:J

.field private mSessionStartTimeMs:J

.field private mStartPositionMs:J

.field private mTrackId:I

.field private mUserSessionId:Ljava/lang/String;

.field private mVideoPos:I

.field private mXid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mXid:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mAppSessionId:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mUserSessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final build()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "version"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "method"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    const-string/jumbo v4, "rel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    const-string/jumbo v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "xid"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mXid:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "oxid"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mOxid:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "dxid"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDxid:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "movieId"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "clientTime"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "appid"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mAppSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sessionid"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mUserSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "isInBackground"

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "trackid"

    iget v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mTrackId:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "startPosition"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mStartPositionMs:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "position"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEndPositionMs:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "sessionStartEpoch"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mSessionStartTimeMs:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "sessionEndEpoch"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mSessionEndTimeMs:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mHasErrors:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "hasError"

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mHasErrors:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "trackId"

    iget v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mTrackId:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "rank"

    iget v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mVideoPos:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "row"

    iget v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mListPos:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "uiDownloadContext"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string/jumbo v5, "uiplaycontext"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "sessionparams"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayTimes:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "playTimes"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayTimes:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "stopEvents"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "params"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "error creating pds download event params"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public setBookmarkPosition(JJ)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mStartPositionMs:J

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEndPositionMs:J

    return-object p0
.end method

.method public setDownloadContext(Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    return-object p0
.end method

.method public setError(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mHasErrors:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mOxid:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDxid:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mTrackId:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mVideoPos:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mListPos:I

    :cond_0
    return-object p0
.end method

.method public setPlayDuration(J)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDurationMs:J

    return-object p0
.end method

.method public setPlayTimes(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayTimes:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setSessionTimes(JJ)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mSessionStartTimeMs:J

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mSessionEndTimeMs:J

    return-object p0
.end method
