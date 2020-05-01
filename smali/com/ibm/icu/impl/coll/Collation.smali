.class public final Lcom/ibm/icu/impl/coll/Collation;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ceFromCE32(I)J
    .locals 5

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x20

    const/16 v2, 0xc0

    if-ge v0, v2, :cond_0

    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    int-to-long v2, v2

    shl-long v1, v2, v1

    const v3, 0xff00

    and-int/2addr p0, v3

    int-to-long v3, p0

    const/16 p0, 0x10

    shl-long/2addr v3, p0

    or-long/2addr v1, v3

    shl-int/lit8 p0, v0, 0x8

    int-to-long v3, p0

    or-long v0, v1, v3

    return-wide v0

    :cond_0
    sub-int/2addr p0, v0

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    int-to-long v2, p0

    shl-long v0, v2, v1

    const-wide/32 v2, 0x5000500

    or-long/2addr v0, v2

    return-wide v0

    :cond_1
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static ceFromLongPrimaryCE32(I)J
    .locals 4

    and-int/lit16 p0, p0, -0x100

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide/32 v2, 0x5000500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static ceFromLongSecondaryCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffff00L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static ceFromSimpleCE32(I)J
    .locals 5

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const v2, 0xff00

    and-int/2addr v2, p0

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static digitFromCE32(I)C
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit8 p0, p0, 0xf

    int-to-char p0, p0

    return p0
.end method

.method static getThreeBytePrimaryForOffsetData(IJ)J
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int p2, p1

    shr-int/lit8 p1, p2, 0x8

    sub-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x7f

    mul-int p0, p0, p1

    and-int/lit16 p1, p2, 0x80

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 567
    :goto_0
    invoke-static {v0, v1, p1, p0}, Lcom/ibm/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    move-result-wide p0

    return-wide p0
.end method

.method static hasCE32Tag(II)Z
    .locals 1

    .line 346
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static incThreeBytePrimaryByOffset(JZI)J
    .locals 5

    const/16 v0, 0x8

    shr-long v1, p0, v0

    long-to-int v2, v1

    and-int/lit16 v1, v2, 0xff

    add-int/lit8 v1, v1, -0x2

    add-int/2addr p3, v1

    .line 488
    rem-int/lit16 v1, p3, 0xfe

    add-int/lit8 v1, v1, 0x2

    shl-int/lit8 v0, v1, 0x8

    int-to-long v0, v0

    .line 489
    div-int/lit16 p3, p3, 0xfe

    const/16 v2, 0x10

    if-eqz p2, :cond_0

    shr-long v3, p0, v2

    long-to-int p2, v3

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 p2, p2, -0x4

    add-int/2addr p3, p2

    .line 494
    rem-int/lit16 p2, p3, 0xfb

    add-int/lit8 p2, p2, 0x4

    shl-int/2addr p2, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    .line 495
    div-int/lit16 p3, p3, 0xfb

    goto :goto_0

    :cond_0
    shr-long v3, p0, v2

    long-to-int p2, v3

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 p2, p2, -0x2

    add-int/2addr p3, p2

    .line 498
    rem-int/lit16 p2, p3, 0xfe

    add-int/lit8 p2, p2, 0x2

    shl-int/2addr p2, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    .line 499
    div-int/lit16 p3, p3, 0xfe

    :goto_0
    const-wide v2, 0xff000000L

    and-long/2addr p0, v2

    int-to-long p2, p3

    const/16 v2, 0x18

    shl-long/2addr p2, v2

    add-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static indexFromCE32(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0xd

    return p0
.end method

.method static isContractionCE32(I)Z
    .locals 1

    const/16 v0, 0x9

    .line 374
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    return p0
.end method

.method static isLongPrimaryCE32(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 350
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    return p0
.end method

.method static isPrefixCE32(I)Z
    .locals 1

    const/16 v0, 0x8

    .line 370
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    return p0
.end method

.method static isSelfContainedCE32(I)Z
    .locals 3

    .line 363
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 364
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 365
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 366
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static isSpecialCE32(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static latinCE0FromCE32(I)J
    .locals 4

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/32 v2, 0x5000000

    or-long/2addr v0, v2

    const/high16 v2, 0xff0000

    and-int/2addr p0, v2

    shr-int/lit8 p0, p0, 0x8

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static latinCE1FromCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xff00

    and-long/2addr v0, v2

    const/16 p0, 0x10

    shl-long/2addr v0, p0

    const-wide/16 v2, 0x500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static lengthFromCE32(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static makeCE(J)J
    .locals 2

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    const-wide/32 v0, 0x5000500

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static primaryFromLongPrimaryCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffff00L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static tagFromCE32(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method static unassignedCEFromCodePoint(I)J
    .locals 2

    .line 589
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/Collation;->unassignedPrimaryFromCodePoint(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static unassignedPrimaryFromCodePoint(I)J
    .locals 4

    add-int/lit8 p0, p0, 0x1

    .line 577
    rem-int/lit8 v0, p0, 0x12

    mul-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    .line 578
    div-int/lit8 p0, p0, 0x12

    .line 580
    rem-int/lit16 v2, p0, 0xfe

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 581
    div-int/lit16 p0, p0, 0xfe

    .line 583
    rem-int/lit16 p0, p0, 0xfb

    add-int/lit8 p0, p0, 0x4

    shl-int/lit8 p0, p0, 0x10

    int-to-long v2, p0

    or-long/2addr v0, v2

    const-wide v2, 0xfe000000L

    or-long/2addr v0, v2

    return-wide v0
.end method
