.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;
.source "ISCSegment.java"


# static fields
.field public static final USER_TYPE_ISEG:Ljava/lang/String; = "com.netflix.iseg"


# instance fields
.field private segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

.field private segmentIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;IILjava/io/DataInputStream;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)V

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.iseg"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isUserType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ISCSegment does not have expected user type value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    invoke-direct {p0, p4, p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->loadBoxes(Ljava/io/DataInputStream;II)V

    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->verifyBoxes()V

    .line 39
    return-void
.end method

.method public static isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z
    .locals 2

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Header is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    const-string/jumbo v0, "com.netflix.iseg"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBoxes(Ljava/io/DataInputStream;II)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->contentSizeInBytes:J

    move v0, v1

    .line 54
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->readBox(Ljava/io/DataInputStream;II)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 56
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move v0, v1

    .line 57
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const-string/jumbo v3, "nf_subtitles_imv2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Left to parse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v3, "nf_subtitles_imv2"

    const-string/jumbo v4, "Either error or we do not have anything else to read!"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 56
    goto :goto_1

    .line 62
    :cond_2
    :try_start_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v3, "Clean exit for loadBoxes..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private readBox(Ljava/io/DataInputStream;II)J
    .locals 8

    .prologue
    .line 92
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    .line 94
    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "We found segment index and it already exist!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse segment index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;IILjava/io/DataInputStream;Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    .line 107
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SegmentIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    :goto_0
    return-wide v0

    .line 112
    :cond_3
    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    if-eqz v0, :cond_4

    .line 115
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "We found segment encryption info and it already exist!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse segmentEncryptionInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_5
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    .line 124
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SegmentEncryptionInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_6
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getContentSizeInBytes()J

    move-result-wide v4

    .line 131
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v2

    .line 133
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Uknown box: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skip it to nex box for [B]: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_7
    invoke-virtual {p1, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v0

    .line 138
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 139
    const-string/jumbo v4, "nf_subtitles_imv2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Really skipped [B]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method private verifyBoxes()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Segment index is missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    if-nez v0, :cond_1

    .line 79
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Encrypted info not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public getImageEncryptionInfoForImage(I)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    if-nez v1, :cond_1

    .line 157
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Segment encryption info is null, no encryption."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->getImageEncryptions()[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->getImageEncryptions()[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 162
    :cond_2
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Segment encryption info not found, no encryption."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->getImageEncryptions()[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    move-result-object v1

    array-length v1, v1

    if-gt v1, p1, :cond_4

    .line 167
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string/jumbo v1, "nf_subtitles_imv2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Segment encryption info not found for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->getImageEncryptions()[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " entries found! We should NOT be here"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->getImageEncryptions()[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    move-result-object v0

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getSegmentEncryptionInfo()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    return-object v0
.end method

.method public getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ISCSegment{segmentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", segmentEncryptionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->segmentEncryptionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method
