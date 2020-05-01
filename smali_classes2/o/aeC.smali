.class public Lo/aeC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aeC$TaskDescription;
    }
.end annotation


# direct methods
.method public static a(I)I
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static a(JJ)Z
    .locals 2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p2, p0

    cmp-long p0, v0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(II)I
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    if-lt p0, p1, :cond_0

    return v0

    :cond_0
    if-gez p0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static c(J)J
    .locals 2

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static d(J)Z
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 56
    invoke-static {v0, v1, p0, p1}, Lo/aeC;->a(JJ)Z

    move-result p0

    return p0
.end method

.method public static e(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 45
    div-long/2addr p0, v0

    return-wide p0
.end method
