.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;
.source "SegmentIndex.java"


# static fields
.field public static final USER_TYPE:Ljava/lang/String; = "com.netflix.sidx"


# instance fields
.field private assetID:Ljava/util/UUID;

.field private duration:I

.field private mContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

.field private mDownloadSegment:Z

.field private mEndTime:I

.field private mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

.field private mIndex:I

.field private mSegmentSize:J

.field private mSegmentStartPosition:J

.field private mStartTime:I

.field private sampleCount:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;IILjava/io/DataInputStream;Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mDownloadSegment:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    const-string/jumbo v2, "com.netflix.sidx"

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isUserType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SegmentIndex does not have expected user type value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Content size of box in bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getContentSizeInBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    invoke-static {p4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readUUID(Ljava/io/DataInputStream;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    invoke-virtual {p4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->duration:I

    invoke-virtual {p4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->sampleCount:I

    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mStartTime:I

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mStartTime:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->duration:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mEndTime:I

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->sampleCount:I

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->sampleCount:I

    if-ge v0, v2, :cond_2

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsing image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " metadata."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    new-instance v3, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;

    const/4 v4, 0x0

    invoke-direct {v3, p4, v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;-><init>(Ljava/io/DataInputStream;Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$1;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    aget-object v3, v2, v0

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v3, p3}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->setTotalIndex(I)V

    const-string/jumbo v3, "nf_subtitles_imv2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Parsing image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " metadata done."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    move p3, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->sampleCount:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getImageStartPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mSegmentStartPosition:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getImageStartPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mSegmentStartPosition:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getSize()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mSegmentSize:J

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_subtitles_imv2"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Header is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "com.netflix.sidx"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized downloadStarted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mDownloadSegment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mIndex:I

    iget v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mIndex:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAllVisibleSubtitleBlocks(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->inRange(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-interface {v4, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->inRange(J)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-direct {v5, v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAssetID()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    return-object v0
.end method

.method public getContainer()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->duration:I

    return v0
.end method

.method public getEndTime()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mEndTime:I

    return v0
.end method

.method public getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mIndex:I

    return v0
.end method

.method public getSampleCount()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->sampleCount:I

    return v0
.end method

.method public getSegmentSize()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mSegmentSize:J

    return-wide v0
.end method

.method public getSegmentStartPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mSegmentStartPosition:J

    return-wide v0
.end method

.method public getStartTime()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mStartTime:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mIndex:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public inRange(J)Z
    .locals 3

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mStartTime:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mEndTime:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mIndex:I

    return-void
.end method

.method public declared-synchronized shouldDownload()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mDownloadSegment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SegmentIndex{assetID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->assetID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->sampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDownloadSegment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mDownloadSegment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSegmentStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mSegmentStartPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSegmentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mSegmentSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mStartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
