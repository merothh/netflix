.class public Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;
.source "StreamingTextSubtitleParser.java"


# instance fields
.field protected mCacheName:Ljava/lang/String;

.field protected mDisplayed:Z

.field protected mNumberOfDisplays:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 3

    .prologue
    .line 57
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;-><init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 58
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Create text based subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->getCacheName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->mCacheName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected handleDownloadedSubtitleData([BLjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "MEDIA_SUBTITLE_DATA 100"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    .line 156
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;[BLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method protected handleImport()Z
    .locals 5

    .prologue
    .line 82
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Check if cache exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->mCacheName:Ljava/lang/String;

    const-string/jumbo v2, "manifest_ttml.xml"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->readFileWithUTF8Encoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Importing subtitles metadata from cached file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->parse(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Imported data from existing cache!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "We failed to parse subtitle metadata from cached file"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleSubtitleData(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 109
    invoke-static {}, Lcom/netflix/mediaclient/service/net/DnsManager;->getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Download file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitles download started from URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz v1, :cond_1

    array-length v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    .line 118
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "Name servers missing"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->subtitles:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v3, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResourceDirectly(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 149
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Subtitles download start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 121
    :cond_3
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 122
    const-string/jumbo v4, "nf_subtitles"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Name server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected injectContent([B)V
    .locals 4

    .prologue
    .line 190
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Downloaded subtitles metadata:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->parse(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->mCacheName:Ljava/lang/String;

    const-string/jumbo v2, "manifest_ttml.xml"

    invoke-interface {v0, v1, v2, p1}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->saveFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Text subtitle xml saved to cache."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Failed to cache text subtitle xml!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Failed to cache text subtitle xml!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->reportHandledException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->handleImport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->handleSubtitleData(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
