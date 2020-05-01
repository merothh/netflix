.class public Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;
.super Ljava/lang/Object;
.source "PdsPlaySession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppSessionId:Ljava/lang/String;

.field private mCurrentBookmarkMs:J

.field private mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

.field private mDxid:Ljava/lang/String;

.field private mOxid:Ljava/lang/String;

.field private mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

.field private mPdsStopPlayLink:Lorg/json/JSONObject;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private mPlayDurationInMs:J

.field private mPlayStartClientTime:J

.field private mPlayableId:Ljava/lang/String;

.field private mStartPositionMs:J

.field private mStopEventSent:Z

.field private mUserSessionId:Ljava/lang/String;

.field private mXid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mXid:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayableId:Ljava/lang/String;

    .line 43
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mCurrentBookmarkMs:J

    .line 44
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mStartPositionMs:J

    .line 45
    iput-object p5, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mAppSessionId:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mUserSessionId:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    .line 48
    iput-object p8, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 49
    return-void
.end method

.method private sendPdsEventViaLogging(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->sendPdsEventViaLogging(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyPlayProgress(J)V
    .locals 5

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mCurrentBookmarkMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 116
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayDurationInMs:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mCurrentBookmarkMs:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayDurationInMs:J

    .line 117
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mCurrentBookmarkMs:J

    .line 121
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayStartClientTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayStartClientTime:J

    .line 124
    :cond_1
    return-void
.end method

.method public onManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V
    .locals 3

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 60
    :cond_0
    if-eqz v0, :cond_1

    .line 61
    const-string/jumbo v1, "stopPlayback"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPdsStopPlayLink:Lorg/json/JSONObject;

    .line 62
    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPdsStopPlayLink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPdsStopPlayLink:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getOxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mOxid:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getDxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mDxid:Ljava/lang/String;

    .line 66
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getDownloadContext()Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    .line 67
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mCurrentBookmarkMs:J

    .line 85
    return-void
.end method

.method public stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 90
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mStopEventSent:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ignore duplicate stop message, playableId: %s, errorCode: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mXid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayableId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPdsStopPlayLink:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mAppSessionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mUserSessionId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 96
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mOxid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mDxid:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    .line 98
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->setDownloadContext(Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayDurationInMs:J

    .line 99
    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->setPlayDuration(J)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->setPlayTimes(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mStartPositionMs:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mCurrentBookmarkMs:J

    .line 101
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->setBookmarkPosition(JJ)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPlayStartClientTime:J

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->setSessionTimes(JJ)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->setError(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayEventParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->sendPdsEventViaLogging(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->flushEventsInLogging()V

    .line 109
    iput-boolean v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;->mStopEventSent:Z

    goto :goto_0
.end method
