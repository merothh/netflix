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

    .prologue
    .line 17
    const-class v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadEventParamBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mXid:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayableId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    .line 47
    iput-object p4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mAppSessionId:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mUserSessionId:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method final build()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 108
    :cond_0
    :try_start_0
    const-string/jumbo v0, "version"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v0, "method"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    const-string/jumbo v4, "rel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v0, "url"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEventLink:Lorg/json/JSONObject;

    const-string/jumbo v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 115
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 116
    const-string/jumbo v0, "xid"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mXid:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v0, "oxid"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mOxid:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v0, "dxid"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDxid:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v0, "movieId"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v0, "clientTime"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v0, "appid"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mAppSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v0, "sessionid"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mUserSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v4, "isInBackground"

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v0, "trackid"

    iget v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mTrackId:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v0, "startPosition"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mStartPositionMs:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v0, "position"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEndPositionMs:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v0, "sessionStartEpoch"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mSessionStartTimeMs:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v0, "sessionEndEpoch"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mSessionEndTimeMs:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mHasErrors:Z

    if-eqz v0, :cond_1

    .line 132
    const-string/jumbo v0, "hasError"

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mHasErrors:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 135
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 136
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 137
    const-string/jumbo v5, "trackId"

    iget v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mTrackId:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v5, "rank"

    iget v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mVideoPos:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    const-string/jumbo v5, "row"

    iget v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mListPos:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    iget-object v5, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    if-eqz v5, :cond_2

    .line 142
    const-string/jumbo v5, "uiDownloadContext"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_2
    const-string/jumbo v5, "uiplaycontext"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v4, "sessionparams"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayTimes:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 149
    const-string/jumbo v0, "playTimes"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayTimes:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 153
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 156
    const-string/jumbo v4, "stopEvents"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v0, "params"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 123
    goto/16 :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    sget-object v3, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "error creating pds download event params"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public setBookmarkPosition(JJ)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mStartPositionMs:J

    .line 75
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mEndPositionMs:J

    .line 76
    return-object p0
.end method

.method public setDownloadContext(Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    .line 64
    return-object p0
.end method

.method public setError(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    .prologue
    .line 96
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mHasErrors:Z

    .line 97
    return-object p0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mOxid:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDxid:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mTrackId:I

    .line 55
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mVideoPos:I

    .line 56
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mListPos:I

    .line 58
    :cond_0
    return-object p0
.end method

.method public setPlayDuration(J)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mDurationMs:J

    .line 81
    return-object p0
.end method

.method public setPlayTimes(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mPlayTimes:Lorg/json/JSONObject;

    .line 86
    return-object p0
.end method

.method public setSessionTimes(JJ)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mSessionStartTimeMs:J

    .line 91
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->mSessionEndTimeMs:J

    .line 92
    return-object p0
.end method
