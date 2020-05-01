.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;
.super Ljava/lang/Object;
.source "BaseSubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field protected mCallback:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;

.field protected mIndexOfLastSearch:I

.field protected mLastRenderedPositionInTitleInMs:J

.field protected mNumberOfSubtitlesExpectedToBeDisplayed:I

.field protected mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

.field protected mReady:Z

.field protected mStartPlayPositionInTitleInMs:J

.field protected mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mIndexOfLastSearch:I

    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    .line 67
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mCallback:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;

    .line 68
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mStartPlayPositionInTitleInMs:J

    .line 69
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    .line 70
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 71
    return-void
.end method


# virtual methods
.method protected getCacheName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cache for playable id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPlayableId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and language "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cache for playable id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPlayableId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPlayableId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getSubtitleCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cache created for playable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPlayableId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cache name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :cond_2
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cache name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 139
    :goto_1
    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    instance-of v0, v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mReady:Z

    return v0
.end method

.method protected onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 7

    .prologue
    .line 100
    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mCallback:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "onError: callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mCallback:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-interface {v0, v1, p3, p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;->downloadFailed(Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Ljava/lang/String;)Z

    move-result v4

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V

    .line 109
    return v4

    .line 105
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "onError: no callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected reportHandledException(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    instance-of v0, v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/ServiceAgent;->reportHandledException(Ljava/lang/Exception;)V

    .line 158
    :cond_0
    return-void
.end method

.method public declared-synchronized seeked(I)V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Seeked to..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mIndexOfLastSearch:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
