.class abstract Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;
.source "BaseImageSubtitleParser.java"


# instance fields
.field protected mKey:Ljava/lang/String;

.field protected mLastKnownPosition:J

.field protected mUseCache:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;-><init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->mUseCache:Z

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->mLastKnownPosition:J

    return-void
.end method


# virtual methods
.method protected downloadNextRange(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->downloadSegment(I)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->downloadSegment(I)V

    return-void
.end method

.method protected abstract downloadSegment(I)V
.end method

.method protected abstract initCache()Ljava/lang/String;
.end method

.method protected saveFileSafelyToCache(Ljava/lang/String;[B)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->saveFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
