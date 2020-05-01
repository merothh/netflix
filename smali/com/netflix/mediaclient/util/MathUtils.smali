.class public Lcom/netflix/mediaclient/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ceiling(II)I
    .locals 1

    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static divideIntsWithRounding(II)I
    .locals 2

    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static isEven(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static randomInRange(JII)I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p0, p1}, Ljava/util/Random;-><init>(J)V

    sub-int v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method
