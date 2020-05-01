.class public Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
.super Ljava/io/IOException;
.source "MediaCodecUtil.java"


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer/MediaCodecUtil$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
