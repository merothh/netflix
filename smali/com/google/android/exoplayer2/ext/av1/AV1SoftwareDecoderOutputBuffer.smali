.class public final Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/OutputBuffer;
.source ""


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public height:I

.field public mode:I

.field private final owner:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->owner:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    return-void
.end method

.method private initData(I)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    :goto_1
    return-void
.end method

.method private isSafeToMultiply(II)Z
    .locals 1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-lez p2, :cond_0

    const v0, 0x7fffffff

    .line 143
    div-int/2addr v0, p2

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public init(JI)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    .line 68
    iput p3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->mode:I

    return-void
.end method

.method public initForRgbFrame(II)Z
    .locals 1

    .line 76
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    .line 77
    iput p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->height:I

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int p1, p1, p2

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->initData(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public initForYuvFrame(IIIII)Z
    .locals 5

    .line 93
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    .line 94
    iput p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->height:I

    .line 95
    iput p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->colorspace:I

    int-to-long v0, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 96
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 97
    invoke-direct {p0, p3, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_4

    invoke-direct {p0, p4, p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    mul-int p2, p2, p3

    mul-int p1, p1, p4

    mul-int/lit8 p5, p1, 0x2

    add-int/2addr p5, p2

    const/4 v1, 0x2

    .line 103
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ge p5, p2, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0, p5}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->initData(I)V

    .line 108
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    if-nez p5, :cond_2

    new-array p5, v2, [Ljava/nio/ByteBuffer;

    .line 109
    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 112
    :cond_2
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, p5, v0

    .line 113
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object p5, p5, v0

    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 114
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, p5, v4

    .line 116
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object p5, p5, v4

    invoke-virtual {p5, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 117
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    add-int/2addr p2, p1

    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p5

    aput-object p5, p2, v1

    .line 119
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 120
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvStrides:[I

    if-nez p1, :cond_3

    new-array p1, v2, [I

    .line 121
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvStrides:[I

    .line 123
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvStrides:[I

    aput p3, p1, v0

    .line 124
    aput p4, p1, v4

    .line 125
    aput p4, p1, v1

    return v4

    :cond_4
    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->owner:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    return-void
.end method
