.class public Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;
.super Ljava/lang/Object;
.source "SubtitleDownloadManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

.field private mBookmark:J

.field private mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

.field private mData:Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

.field private mDisplayAspectRatio:F

.field private mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

.field private mPlayer:Lcom/netflix/mediaclient/service/player/PlayerAgent;

.field private mStartPositionForSubtitleQoeInMs:J

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Player is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p2, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "User is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createExponentialBackOffPolicy(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/util/net/ExponentialBackOff;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    .line 55
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mPlayer:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    .line 56
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createParserAndStartDownload()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static createExponentialBackOffPolicy(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/util/net/ExponentialBackOff;
    .locals 8

    .prologue
    .line 223
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v7

    .line 224
    new-instance v0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getInitialIntervalInMs()I

    move-result v1

    .line 225
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getRandomizationFactor()D

    move-result-wide v2

    .line 226
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMultiplier()D

    move-result-wide v4

    .line 227
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMaxIntervalInMs()I

    move-result v6

    .line 228
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMaxElapsedTimeInMs()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;-><init>(IDDII)V

    .line 224
    return-object v0
.end method

.method private createParserAndStartDownload()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;
    .locals 10

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mData:Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

    .line 101
    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->canNotDownload:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    .line 142
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;->pop()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    if-nez v0, :cond_3

    .line 108
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "We tried all URLs, see if we should retry from start..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/net/BackOff;->canRetry()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "We can not retry again..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->canNotDownload:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/net/BackOff;->nextBackOffInMs()J

    move-result-wide v0

    .line 117
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mData:Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;->reset()V

    .line 118
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "We can retry again in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [ms]. Posting to handler..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mPlayer:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$1;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->retry:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    goto :goto_0

    .line 132
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitles download started from URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserSubtitlePreferences()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mPlayer:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    iget v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mDisplayAspectRatio:F

    iget-wide v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBookmark:J

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mStartPositionForSubtitleQoeInMs:J

    move-object v7, p0

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParserFactory;->createParser(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FJLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->load()V

    .line 142
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->downloading:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized changeSubtitle(Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;FJJ)V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New subtitle selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bookmark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startPositionForSubtitleQoeInMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mDisplayAspectRatio:F

    .line 74
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBookmark:J

    .line 75
    iput-wide p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mStartPositionForSubtitleQoeInMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-nez p1, :cond_1

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mData:Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mPlayer:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createExponentialBackOffPolicy(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/util/net/ExponentialBackOff;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createParserAndStartDownload()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 6

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    if-eqz v0, :cond_1

    .line 184
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Dumping last Qoe data if available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfSubtitlesExpectedToBeDisplayed()I

    move-result v2

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfDisplayedSubtitles()I

    move-result v3

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v0

    .line 188
    const-string/jumbo v1, ""

    .line 189
    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v1, "nf_subtitles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "For subtitle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " we where expected to show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and we showed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subtitles."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mPlayer:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reportSubtitleQoe(Ljava/lang/String;II)V

    .line 202
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mData:Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mDisplayAspectRatio:F

    .line 206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBookmark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized downloadFailed(Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    if-ne v2, p1, :cond_2

    .line 157
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Failed to download current subtitle, go for next..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createParserAndStartDownload()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    move-result-object v2

    .line 160
    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->downloading:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    if-ne v2, v3, :cond_0

    .line 161
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Parser created..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_0
    monitor-exit p0

    return v0

    .line 163
    :cond_0
    :try_start_1
    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->retry:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    if-ne v2, v3, :cond_1

    .line 164
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Will retry download..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "We failed all available links, report final failure!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 168
    goto :goto_0

    .line 172
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current subtitle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tried to download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "It looks that we changed subtitle since we tried to download last, ignore!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move v0, v1

    .line 177
    goto :goto_0
.end method

.method public declared-synchronized getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
