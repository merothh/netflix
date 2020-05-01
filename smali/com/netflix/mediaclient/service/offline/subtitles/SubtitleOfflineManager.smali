.class public Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;
.super Ljava/lang/Object;
.source "SubtitleOfflineManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_subtitles_offline"


# instance fields
.field private mBookmark:J

.field private mDisplayAspectRatio:F

.field private mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

.field private mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/servicemgr/IPlayer;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "User is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    if-nez p2, :cond_1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Player is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 36
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized changeSubtitle(Lcom/netflix/mediaclient/media/Subtitle;FJ)V
    .locals 11

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string/jumbo v2, "nf_subtitles_offline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New subtitle selected: bookmark: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iput p2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mDisplayAspectRatio:F

    .line 53
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mBookmark:J

    .line 55
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserSubtitlePreferences()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v5

    .line 56
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v6

    .line 58
    instance-of v2, p1, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    if-eqz v2, :cond_1

    .line 60
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    move-object v4, v0

    iget v7, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mDisplayAspectRatio:F

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mBookmark:J

    invoke-static/range {v3 .. v9}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleParserFactory;->createParser(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FJ)Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    .line 61
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;->load()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SubtitleOfflineManager handles only OfflineSubtitle!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mDisplayAspectRatio:F

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mBookmark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const-string/jumbo v0, "nf_subtitles_offline"

    const-string/jumbo v1, "getCurrentSubtitle:: parser is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
