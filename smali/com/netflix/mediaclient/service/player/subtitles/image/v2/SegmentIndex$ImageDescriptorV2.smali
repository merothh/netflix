.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;
.source "SegmentIndex.java"


# direct methods
.method private constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mStartTime:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mDuration:I

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mStartTime:I

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mDuration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mEndTime:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mOriginX:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mOriginY:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mWidth:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mHeight:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mImageStartPosition:J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mSize:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/DataInputStream;Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;-><init>(Ljava/io/DataInputStream;)V

    return-void
.end method


# virtual methods
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
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mTotalIndex:I

    iget v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mTotalIndex:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mTotalIndex:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageDescriptorV2 [mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mStartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOriginX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mOriginX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOriginY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mOriginY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mWidth:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mHeight:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImageStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mImageStartPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLocalImagePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mLocalImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTotalIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex$ImageDescriptorV2;->mTotalIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
