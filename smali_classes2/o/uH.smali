.class public Lo/uH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uH$StateListAnimator;,
        Lo/uH$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Lo/uG;

.field private b:S

.field private c:I

.field private d:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private e:[B

.field private f:Lo/uH$StateListAnimator;

.field private g:J

.field private i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/uH$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lo/uH;->c:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 39
    iput-object v0, p0, Lo/uH;->e:[B

    const/4 v0, 0x0

    .line 40
    iput-short v0, p0, Lo/uH;->b:S

    .line 41
    iput v0, p0, Lo/uH;->j:I

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lo/uH;->g:J

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/uH;->i:Ljava/util/LinkedList;

    .line 46
    instance-of v0, p1, Lo/uG;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lo/uG;

    iput-object p1, p0, Lo/uH;->a:Lo/uG;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lo/uH;->a:Lo/uG;

    :goto_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6

    .line 106
    iget-object v0, p0, Lo/uH;->a:Lo/uG;

    invoke-virtual {v0}, Lo/uG;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 107
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 112
    iget-object v0, p0, Lo/uH;->a:Lo/uG;

    invoke-virtual {v0}, Lo/uG;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    long-to-int v1, v0

    .line 113
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 114
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v4

    :cond_0
    const/16 p1, 0x44

    .line 117
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 118
    iget-object p1, p0, Lo/uH;->e:[B

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v4, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    const/16 p1, 0x20

    .line 119
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 120
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lo/uH;->g:J

    .line 121
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result p1

    iput-short p1, p0, Lo/uH;->b:S

    .line 122
    iput v4, p0, Lo/uH;->j:I

    .line 123
    :goto_0
    iget-short p1, p0, Lo/uH;->b:S

    if-ge v4, p1, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 125
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result p1

    .line 126
    iget v1, p0, Lo/uH;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lo/uH;->j:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lo/uH;->a:Lo/uG;

    if-eqz p1, :cond_2

    .line 129
    iget-wide v0, p0, Lo/uH;->g:J

    iget v2, p0, Lo/uH;->j:I

    int-to-long v4, v2

    invoke-virtual {p1, v0, v1, v4, v5}, Lo/uG;->e(JJ)V

    :cond_2
    return v3

    .line 108
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong master index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/uH;->a:Lo/uG;

    invoke-virtual {v4}, Lo/uG;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/uH;->a:Lo/uG;

    .line 109
    invoke-virtual {v4}, Lo/uG;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "vs. @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private b()V
    .locals 11

    .line 217
    iget-object v0, p0, Lo/uH;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 218
    new-array v7, v0, [J

    .line 219
    new-array v8, v0, [J

    .line 220
    new-array v9, v0, [J

    .line 221
    new-array v0, v0, [I

    .line 223
    iget-object v1, p0, Lo/uH;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/uH$ActionBar;

    .line 224
    invoke-static {v3}, Lo/uH$ActionBar;->a(Lo/uH$ActionBar;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    aput-wide v4, v7, v2

    .line 225
    invoke-static {v3}, Lo/uH$ActionBar;->b(Lo/uH$ActionBar;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    aput-wide v4, v8, v2

    .line 226
    invoke-static {v3}, Lo/uH$ActionBar;->d(Lo/uH$ActionBar;)J

    move-result-wide v4

    aput-wide v4, v9, v2

    .line 227
    invoke-static {v3}, Lo/uH$ActionBar;->e(Lo/uH$ActionBar;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_0
    iget-object v1, p0, Lo/uH;->a:Lo/uG;

    if-eqz v1, :cond_1

    .line 231
    new-instance v10, Lo/uH$StateListAnimator;

    invoke-virtual {v1}, Lo/uG;->a()Ljava/lang/String;

    move-result-object v2

    move-object v1, v10

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lo/uH$StateListAnimator;-><init>(Ljava/lang/String;[J[J[J[I)V

    iput-object v10, p0, Lo/uH;->f:Lo/uH$StateListAnimator;

    .line 232
    iget-object v1, p0, Lo/uH;->a:Lo/uG;

    iget-object v2, p0, Lo/uH;->f:Lo/uH$StateListAnimator;

    invoke-virtual {v1, v2}, Lo/uG;->e(Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    .line 233
    iget-object v1, p0, Lo/uH;->d:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v2, v0, v9, v8, v7}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 18

    move-object/from16 v0, p0

    .line 182
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 183
    iget-object v3, v0, Lo/uH;->f:Lo/uH$StateListAnimator;

    invoke-virtual {v3, v1, v2}, Lo/uH$StateListAnimator;->d(J)I

    move-result v1

    .line 184
    iget-object v2, v0, Lo/uH;->f:Lo/uH$StateListAnimator;

    invoke-virtual {v2, v1}, Lo/uH$StateListAnimator;->getTimeUs(I)J

    move-result-wide v4

    .line 185
    iget-object v2, v0, Lo/uH;->f:Lo/uH$StateListAnimator;

    invoke-virtual {v2, v1}, Lo/uH$StateListAnimator;->d(I)I

    move-result v2

    .line 186
    iget-object v3, v0, Lo/uH;->f:Lo/uH$StateListAnimator;

    invoke-virtual {v3, v1}, Lo/uH$StateListAnimator;->a(I)J

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    int-to-long v6, v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    goto/16 :goto_2

    .line 190
    :cond_0
    iget-object v3, v0, Lo/uH;->i:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/uH$ActionBar;

    invoke-static {v3}, Lo/uH$ActionBar;->c(Lo/uH$ActionBar;)[B

    move-result-object v3

    const/16 v6, 0x18

    new-array v7, v6, [B

    .line 194
    iget-object v8, v0, Lo/uH;->f:Lo/uH$StateListAnimator;

    const/4 v9, 0x1

    add-int/2addr v1, v9

    invoke-virtual {v8, v1}, Lo/uH$StateListAnimator;->getTimeUs(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_1

    .line 195
    iget-object v8, v0, Lo/uH;->f:Lo/uH$StateListAnimator;

    invoke-virtual {v8, v1}, Lo/uH$StateListAnimator;->getTimeUs(I)J

    move-result-wide v10

    sub-long v12, v10, v4

    const-wide/16 v14, -0x1

    const-wide/32 v16, 0x7fffffff

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v10

    long-to-int v1, v10

    goto :goto_0

    :cond_1
    const v1, 0x7fffffff

    :goto_0
    const/4 v8, 0x4

    new-array v10, v8, [B

    shr-int/lit8 v11, v1, 0x18

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    const/4 v12, 0x0

    aput-byte v11, v10, v12

    shr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v10, v9

    const/4 v9, 0x2

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v10, v9

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v9, 0x3

    aput-byte v1, v10, v9

    .line 201
    invoke-static {v10, v12, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v1, v0, Lo/uH;->e:[B

    invoke-static {v1, v12, v7, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    const/16 v8, 0x10

    .line 204
    invoke-static {v3, v12, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 207
    iget-object v3, v0, Lo/uH;->d:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3, v12, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v3

    .line 208
    invoke-interface {v3, v1, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    add-int/lit8 v7, v2, 0x18

    move-object/from16 v8, p1

    .line 211
    invoke-interface {v3, v8, v7, v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    add-int/lit8 v7, v2, 0x18

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v6, v1

    .line 213
    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 14

    .line 140
    iget-wide v0, p0, Lo/uH;->g:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    return v2

    .line 144
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lo/uH;->j:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 145
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lo/uH;->j:I

    const/4 v4, 0x1

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    .line 148
    :goto_0
    iget-short v1, p0, Lo/uH;->b:S

    if-ge p1, v1, :cond_4

    const/16 v1, 0x2c

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 150
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_3

    .line 154
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 155
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 156
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v1, 0x10

    new-array v8, v1, [B

    .line 159
    invoke-virtual {v0, v8, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 160
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    .line 161
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 162
    iget-object v1, p0, Lo/uH;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/uH$ActionBar;

    if-eqz v1, :cond_2

    .line 163
    invoke-static {v1}, Lo/uH$ActionBar;->d(Lo/uH$ActionBar;)J

    move-result-wide v12

    cmp-long v5, v12, v9

    if-nez v5, :cond_2

    .line 167
    new-instance v12, Lo/uH$ActionBar;

    invoke-static {v1}, Lo/uH$ActionBar;->b(Lo/uH$ActionBar;)I

    move-result v1

    add-int/2addr v7, v1

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lo/uH$ActionBar;-><init>(II[BJI)V

    .line 168
    iget-object v1, p0, Lo/uH;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lo/uH;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 171
    :cond_2
    new-instance v1, Lo/uH$ActionBar;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/uH$ActionBar;-><init>(II[BJI)V

    .line 172
    iget-object v5, p0, Lo/uH;->i:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_2
    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 177
    :cond_4
    invoke-direct {p0}, Lo/uH;->b()V

    return v4
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/uH;->d:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 3

    .line 65
    iget p2, p0, Lo/uH;->c:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lo/uH;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lo/uH;->e(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    iput v1, p0, Lo/uH;->c:I

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lo/uH;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    iput v2, p0, Lo/uH;->c:I

    .line 69
    iget-object p1, p0, Lo/uH;->d:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lo/uH;->a:Lo/uG;

    iget-object p2, p2, Lo/uG;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 71
    iget-object p1, p0, Lo/uH;->d:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
