.class Lo/uH$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private final c:[J

.field private final d:[J

.field private final e:[I

.field private final i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[J[J[J[I)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lo/uH$StateListAnimator;->a:Ljava/lang/String;

    .line 263
    iput-object p2, p0, Lo/uH$StateListAnimator;->c:[J

    .line 264
    iput-object p3, p0, Lo/uH$StateListAnimator;->d:[J

    .line 265
    iput-object p4, p0, Lo/uH$StateListAnimator;->b:[J

    .line 266
    iput-object p5, p0, Lo/uH$StateListAnimator;->e:[I

    .line 267
    iget-object p1, p0, Lo/uH$StateListAnimator;->c:[J

    array-length p1, p1

    iput p1, p0, Lo/uH$StateListAnimator;->i:I

    return-void
.end method


# virtual methods
.method a(I)J
    .locals 3

    .line 310
    iget-object v0, p0, Lo/uH$StateListAnimator;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method d(I)I
    .locals 1

    .line 314
    iget-object v0, p0, Lo/uH$StateListAnimator;->e:[I

    aget p1, v0, p1

    return p1
.end method

.method d(J)I
    .locals 2

    .line 306
    iget-object v0, p0, Lo/uH$StateListAnimator;->b:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    return p1
.end method

.method public getDurationUs(IJ)J
    .locals 0

    .line 282
    iget p2, p0, Lo/uH$StateListAnimator;->i:I

    if-ge p1, p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lo/uH$StateListAnimator;->d:[J

    aget-wide p1, p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p1, -0x1

    :goto_1
    return-wide p1
.end method

.method public getFirstSegmentNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentCount(J)I
    .locals 0

    .line 297
    iget p1, p0, Lo/uH$StateListAnimator;->i:I

    return p1
.end method

.method public getSegmentNum(JJ)I
    .locals 0

    .line 272
    iget-object p3, p0, Lo/uH$StateListAnimator;->d:[J

    const/4 p4, 0x1

    invoke-static {p3, p1, p2, p4, p4}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    return p1
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 7

    .line 287
    iget v0, p0, Lo/uH$StateListAnimator;->i:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v2, p0, Lo/uH$StateListAnimator;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/uH$StateListAnimator;->b:[J

    aget-wide v3, v1, p1

    iget-object v1, p0, Lo/uH$StateListAnimator;->e:[I

    aget p1, v1, p1

    int-to-long v5, p1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 3

    .line 277
    iget v0, p0, Lo/uH$StateListAnimator;->i:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/uH$StateListAnimator;->c:[J

    aget-wide v1, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v1, -0x1

    :goto_1
    return-wide v1
.end method

.method public isExplicit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
