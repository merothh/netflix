.class public Lo/NetworkSpecifier;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(JJII)J
    .locals 2

    shr-long v0, p0, p4

    xor-long/2addr p0, v0

    mul-long p2, p2, p0

    int-to-long p0, p5

    add-long/2addr p2, p0

    return-wide p2
.end method

.method static a(II)[J
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [J

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    int-to-long p0, p1

    and-long/2addr p0, v4

    or-long/2addr p0, v2

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    :goto_0
    if-ge p0, v0, :cond_0

    add-int/lit8 p1, p0, -0x1

    .line 36
    aget-wide v2, v1, p1

    invoke-static {v2, v3, p0}, Lo/NetworkSpecifier;->e(JI)J

    move-result-wide v2

    aput-wide v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static b([J[JI)V
    .locals 9

    .line 92
    rem-int/lit8 v0, p2, 0x4

    aget-wide v0, p0, v0

    const-wide/32 v2, 0x7ffffdcd

    mul-long v0, v0, v2

    add-int/lit8 v4, p2, 0x2

    rem-int/lit8 v4, v4, 0x4

    aget-wide v5, p1, v4

    add-long/2addr v0, v5

    const-wide/32 v5, 0x7fffffff

    rem-long/2addr v0, v5

    add-int/lit8 p2, p2, 0x3

    .line 95
    rem-int/lit8 p2, p2, 0x4

    aget-wide v7, p0, p2

    mul-long v7, v7, v2

    aget-wide v2, p1, v4

    add-long/2addr v7, v2

    div-long/2addr v7, v5

    aput-wide v7, p1, p2

    .line 97
    aput-wide v0, p0, p2

    return-void
.end method

.method private static e(JI)J
    .locals 6

    const-wide/32 v2, 0x6c078965

    const/16 v4, 0x1e

    move-wide v0, p0

    move v5, p2

    .line 56
    invoke-static/range {v0 .. v5}, Lo/NetworkSpecifier;->a(JJII)J

    move-result-wide p0

    return-wide p0
.end method
