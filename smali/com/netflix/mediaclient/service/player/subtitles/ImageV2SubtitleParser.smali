.class public Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;
.source "ImageV2SubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"


# instance fields
.field protected mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

.field private mSaveImagesToCache:Z

.field protected mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;-><init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Create image V2 based subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->handleDownloadSegmentIndexes()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;)I
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getCurrentSegmentIndex()I

    move-result v0

    return v0
.end method

.method private decodeImageIfNeeded([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;ILjava/lang/String;I)[B
    .locals 3

    :try_start_0
    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getImageEncryptionInfoForImage(I)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;->getDecryptor(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;

    move-result-object v1

    invoke-interface {v1, p1, v0, p4, p5}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;->decrypt([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to decrypt image"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->shouldDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Current segment is not downloaded yet, go and fetch current range (this and next segment)..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadNextRange(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Current segment is not downloaded, go and fetch next range (2 segments after current one)..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadNextRange(I)V

    goto :goto_0
.end method

.method private downloadSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V
    .locals 9

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Download segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " if needed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->shouldDownload()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment is already downloaded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Downloading segment "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " from URL "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", start position [b]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", size [b]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDecryptionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->downloadStarted()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegment:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentSize()J

    move-result-wide v6

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;

    invoke-direct {v8, p0, p1, v2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    goto :goto_0
.end method

.method private getCurrentSegmentIndex()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Indexes not available yet!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastKnownPosition:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->inRange(J)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mIndexOfLastSearch:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Start searching from index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-nez v2, :cond_3

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Indexes not available yet!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Searching for index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->inRange(J)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mIndexOfLastSearch:I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private handleDownloadMasterIndexContainer()V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Subtitle data is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/net/DnsManager;->getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;->getNameServers()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Subtitle URL is empty!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {p0, v1, v0, v2, v4}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle master index size is wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {p0, v1, v0, v2, v4}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesMasterIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexOffset()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v6

    int-to-long v6, v6

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$1;

    invoke-direct {v8, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$1;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;[Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    goto/16 :goto_0
.end method

.method private handleDownloadSegmentIndexes()V
    .locals 9

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Start to download segment indexes"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentIndexesSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegmentIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentOffset()J

    move-result-wide v4

    int-to-long v6, v0

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;

    invoke-direct {v8, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;I)V

    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    return-void
.end method

.method private handleImport()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Try to import data from existing cache!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->importMasterIndexContainer()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to parse master index container from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Parsed master index container from cache"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->importSegmentIndexContainers()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Parsed segment index containers from cache"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Ready to serve subtitles..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mReady:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getCurrentSegmentIndex()I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Download segment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadNextRange(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to parse segment index file from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private importMasterIndexContainer()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "master.idx"

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reading master index file from cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v2}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->parseMasterIndexContainer([B)Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nf_subtitles_imv2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loading master index file from cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " was success "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to load and parse Master index from cache"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "nf_subtitles_imv2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Check if image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " exist in cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->setLocalImagePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "nf_subtitles_imv2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to parse segment"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->downloadStarted()V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private importSegmentIndexContainers()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "segment.idx"

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reading segment index file from cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentIndexesSize()I

    move-result v0

    invoke-static {v2}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->parseSegmentIndexes([BI)Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nf_subtitles_imv2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loaded segment index file from cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to load and parse segment index from cache"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected downloadSegment(I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Download segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " if needed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Invalid index requested!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment index is null, this should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "No need to download segment images, succesfully loaded from cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Image(s) missing, go and download..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V

    goto :goto_0
.end method

.method public declared-synchronized getNumberOfDisplayedSubtitles()I
    .locals 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_1

    move v3, v1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v2, v2

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    invoke-interface {v6}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getNumberOfDisplays()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberOfSubtitlesExpectedToBeDisplayed()I
    .locals 12

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mIndexOfLastSearch:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User just seeked, there was no pts update after that, just return already known value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_6

    move v3, v1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v2, v2

    if-ge v3, v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v10, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->isVisibleInGivenTimeRange(JJ)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v1, v0

    :cond_6
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " where supposed to be visible between "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mStartPlayPositionInTitleInMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " for total of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRootContainerExtentX()S
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;->getRootContainerExtentX()S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootContainerExtentY()S
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;->getRootContainerExtentY()S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
    .locals 9

    const/4 v4, 0x0

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastKnownPosition:J

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Segment found for ts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getAllVisibleSubtitleBlocks(J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V

    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    const/16 v5, 0x7d0

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Ljava/util/List;Ljava/util/List;IJ)V

    return-object v1

    :cond_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0
.end method

.method protected initCache()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getCacheName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->initCache()Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->handleImport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Sucesfully imported cached data!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Unable to import from cached data, go and start downloading itrk!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->handleDownloadMasterIndexContainer()V

    goto :goto_0
.end method

.method protected parseMasterIndexContainer([B)Z
    .locals 8

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Master index received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "nf_subtitles_imv2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Header succeafully parsed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-direct {v4, v0, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string/jumbo v1, "master.idx"

    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->saveFileSafelyToCache(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :catch_0
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    :goto_1
    if-eqz v0, :cond_2

    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to close master index input stream"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to parse master index"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected parseSegment([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_1

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Response data for segment is NULL"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v6

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    array-length v0, v0

    if-ge v3, v0, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    aget-object v8, v0, v3

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getImageStartPosition()J

    move-result-wide v0

    sub-long/2addr v0, v6

    long-to-int v0, v0

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getSize()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Extract image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", start byte "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", end byte "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getContainer()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    move-result-object v2

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getTotalIndex()I

    move-result v5

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->decodeImageIfNeeded([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;ILjava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->saveFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->setLocalImagePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to parse segment"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/net/DnsManager;->getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;->getNameServers()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsing:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto/16 :goto_0
.end method

.method protected parseSegmentIndexes([BI)Z
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Response data for segment indexes is NULL"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes of all segment indexes. Expecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    array-length v2, p1

    if-eq v2, p2, :cond_4

    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Size mismatch!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, p1

    if-ge v2, p2, :cond_2

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Not enough data, abort parsing"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "More data than expected, start parsing..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentCount()I

    move-result v7

    new-array v2, v7, [Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    move v2, v1

    move v3, v1

    move v4, v0

    :goto_2
    if-ge v2, v7, :cond_5

    :try_start_0
    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v8, v6}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    new-instance v9, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    invoke-direct {v9, v8, v4, v3, v6}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;IILjava/io/DataInputStream;)V

    iget-object v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aput-object v9, v8, v2

    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getDuration()I

    move-result v8

    add-int/2addr v4, v8

    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSampleCount()I

    move-result v8

    add-int/2addr v3, v8

    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->setIndex(I)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "nf_subtitles_imv2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Segment index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Expected data, start parsing..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_3
    if-eqz v0, :cond_6

    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to close segment indexes input stream"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to parse segment index"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto :goto_3
.end method

.method public seeked(I)V
    .locals 12

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->seeked(I)V

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastKnownPosition:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_2

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v10, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->isVisibleInGivenTimeRange(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    int-to-long v8, p1

    invoke-interface {v7, v8, v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->seeked(J)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mStartPlayPositionInTitleInMs:J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where supposed to be visible between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mStartPlayPositionInTitleInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastKnownPosition:J

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V

    return-void
.end method
