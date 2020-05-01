.class public Lo/vL;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ewmavPlaybackDuration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "epd"
    .end annotation
.end field

.field public playbackDurationCountEwmav:[D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pdce"
    .end annotation
.end field

.field public playbackDurationCountTotal:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pdct"
    .end annotation
.end field

.field public totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lo/vL;->ewmavPlaybackDuration:J

    const/16 v0, 0xc8

    new-array v1, v0, [I

    .line 20
    iput-object v1, p0, Lo/vL;->playbackDurationCountTotal:[I

    new-array v0, v0, [D

    .line 21
    iput-object v0, p0, Lo/vL;->playbackDurationCountEwmav:[D

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lo/vL;->totalCount:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 13

    .line 43
    iget v0, p0, Lo/vL;->totalCount:I

    const/4 v1, -0x1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    const/16 v8, 0xc8

    if-ge v0, v8, :cond_0

    .line 45
    iget-object v8, p0, Lo/vL;->playbackDurationCountEwmav:[D

    aget-wide v9, v8, v0

    mul-int/lit16 v11, v0, 0x7530

    add-int/lit16 v11, v11, 0x3a98

    int-to-double v11, v11

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    .line 46
    aget-wide v9, v8, v0

    add-double/2addr v4, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v0, v4, v2

    if-eqz v0, :cond_2

    div-double/2addr v6, v4

    const-wide v2, 0x4156e36000000000L    # 6000000.0

    cmpl-double v0, v6, v2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    double-to-int v0, v6

    move v1, v0

    :cond_2
    :goto_1
    return v1
.end method

.method public d(J)I
    .locals 12

    const/4 v0, -0x1

    const-wide/32 v1, 0x5b8d80

    cmp-long v3, p1, v1

    if-gez v3, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    .line 62
    iget v1, p0, Lo/vL;->totalCount:I

    if-lez v1, :cond_3

    const-wide/16 v1, 0x7530

    .line 65
    div-long/2addr p1, v1

    long-to-int p2, p1

    const-wide/16 v1, 0x0

    move p1, p2

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    const/16 v7, 0xc8

    if-ge p1, v7, :cond_0

    .line 67
    iget-object v7, p0, Lo/vL;->playbackDurationCountEwmav:[D

    aget-wide v8, v7, p1

    sub-int v10, p1, p2

    mul-int/lit16 v10, v10, 0x7530

    add-int/lit16 v10, v10, 0x3a98

    int-to-double v10, v10

    mul-double v8, v8, v10

    add-double/2addr v5, v8

    .line 68
    aget-wide v8, v7, p1

    add-double/2addr v3, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    cmpl-double p1, v3, v1

    if-eqz p1, :cond_2

    div-double/2addr v5, v3

    const-wide p1, 0x4156e36000000000L    # 6000000.0

    cmpl-double v1, v5, p1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    double-to-int p1, v5

    move v0, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method public d(JDD)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 28
    iget v0, p0, Lo/vL;->totalCount:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lo/vL;->totalCount:I

    long-to-double v2, p1

    mul-double v2, v2, p3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double p3, v4, p3

    .line 29
    iget-wide v6, p0, Lo/vL;->ewmavPlaybackDuration:J

    long-to-double v6, v6

    mul-double p3, p3, v6

    add-double/2addr v2, p3

    double-to-long p3, v2

    iput-wide p3, p0, Lo/vL;->ewmavPlaybackDuration:J

    const-wide/16 p3, 0x7530

    .line 30
    div-long/2addr p1, p3

    const-wide/16 p3, 0xc7

    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    const/16 p1, 0xc7

    goto :goto_1

    :cond_1
    long-to-int p1, p1

    .line 31
    :goto_1
    iget-object p2, p0, Lo/vL;->playbackDurationCountTotal:[I

    aget p3, p2, p1

    if-ne p3, v1, :cond_2

    goto :goto_2

    :cond_2
    aget p3, p2, p1

    add-int/lit8 v1, p3, 0x1

    :goto_2
    aput v1, p2, p1

    const/4 p2, 0x0

    :goto_3
    const/16 p3, 0xc8

    if-ge p2, p3, :cond_3

    .line 33
    iget-object p3, p0, Lo/vL;->playbackDurationCountEwmav:[D

    aget-wide v0, p3, p2

    sub-double v2, v4, p5

    mul-double v0, v0, v2

    aput-wide v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 35
    :cond_3
    iget-object p2, p0, Lo/vL;->playbackDurationCountEwmav:[D

    aget-wide p3, p2, p1

    add-double/2addr p3, p5

    aput-wide p3, p2, p1

    :cond_4
    return-void
.end method
