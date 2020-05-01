.class public Lcom/facebook/drawee/generic/RoundingParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

.field private b:Z

.field private c:[F

.field private d:I

.field private e:F

.field private f:F

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    .line 49
    iput v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    .line 51
    iput v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->h:I

    .line 52
    iput v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:F

    .line 53
    iput-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->i:Z

    .line 54
    iput-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->j:Z

    return-void
.end method

.method private j()[F
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 163
    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    return-object v0
.end method


# virtual methods
.method public a(F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "the border width cannot be < 0"

    .line 198
    invoke-static {v0, v1}, Lo/StringParceledListSlice;->e(ZLjava/lang/Object;)V

    .line 199
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    return-object p0
.end method

.method public a()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    return v0
.end method

.method public b()F
    .locals 1

    .line 205
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    return v0
.end method

.method public c()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    return-object v0
.end method

.method public d(I)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 151
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    .line 152
    sget-object p1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->c:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    return-object p0
.end method

.method public d(Z)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    return-object p0
.end method

.method public d()[F
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    return v0
.end method

.method public e(F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "the padding cannot be < 0"

    .line 239
    invoke-static {v0, v1}, Lo/StringParceledListSlice;->e(ZLjava/lang/Object;)V

    .line 240
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:F

    return-object p0
.end method

.method public e(FFFF)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/facebook/drawee/generic/RoundingParams;->j()[F

    move-result-object v0

    const/4 v1, 0x1

    .line 98
    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x3

    .line 99
    aput p2, v0, p1

    const/4 p1, 0x2

    aput p2, v0, p1

    const/4 p1, 0x5

    .line 100
    aput p3, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x7

    .line 101
    aput p4, v0, p1

    const/4 p1, 0x6

    aput p4, v0, p1

    return-object p0
.end method

.method public e(I)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 213
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->h:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    check-cast p1, Lcom/facebook/drawee/generic/RoundingParams;

    .line 297
    iget-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    iget-boolean v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 301
    :cond_2
    iget v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    iget v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    if-eq v1, v2, :cond_3

    return v0

    .line 305
    :cond_3
    iget v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 309
    :cond_4
    iget v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->h:I

    iget v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->h:I

    if-eq v1, v2, :cond_5

    return v0

    .line 313
    :cond_5
    iget v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->f:F

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 317
    :cond_6
    iget-object v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iget-object v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v1, v2, :cond_7

    return v0

    .line 321
    :cond_7
    iget-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->i:Z

    iget-boolean v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->i:Z

    if-eq v1, v2, :cond_8

    return v0

    .line 325
    :cond_8
    iget-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->j:Z

    iget-boolean v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->j:Z

    if-eq v1, v2, :cond_9

    return v0

    .line 329
    :cond_9
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    iget-object p1, p1, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    return v0
.end method

.method public f()F
    .locals 1

    .line 246
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:F

    return v0
.end method

.method public g()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->i:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->j:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 334
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 335
    iget-boolean v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 336
    iget-object v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 338
    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 340
    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 341
    iget-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 342
    iget-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->j:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->h:I

    return v0
.end method
