.class public final Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# instance fields
.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthAspectRatio:F

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIFZZIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    iput p2, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->width:I

    iput p3, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->height:I

    iput p4, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    iput-boolean p5, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    iput-boolean p6, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    iput p7, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->frameNumLength:I

    iput p8, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCountType:I

    iput p9, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    iput-boolean p10, p0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    return-void
.end method
