.class public final Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static buildNalUnit([BII)[B
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v0, v0

    add-int/2addr v0, p2

    new-array v0, v0, [B

    sget-object v1, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    sget-object v2, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parseAacAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v9, 0xd

    const/4 v8, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x4

    new-instance v4, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v0, 0xf

    if-ne v3, v0, :cond_1

    const/16 v0, 0x18

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    :goto_0
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eq v5, v8, :cond_0

    const/16 v6, 0x1d

    if-ne v5, v6, :cond_6

    :cond_0
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v0, 0xf

    if-ne v5, v0, :cond_3

    const/16 v0, 0x18

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    :goto_1
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_6

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v3

    move v10, v3

    move v3, v0

    move v0, v10

    :goto_2
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v0, v4, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    if-ge v3, v9, :cond_2

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    sget-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v0, v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_4

    :cond_3
    if-ge v5, v9, :cond_4

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    sget-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v0, v0, v5

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_2
.end method
