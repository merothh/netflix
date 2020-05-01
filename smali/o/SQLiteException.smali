.class public Lo/SQLiteException;
.super Lo/SQLiteDatabaseCorruptException;
.source ""


# instance fields
.field a:I

.field b:[I

.field c:[I

.field d:I

.field e:J

.field f:[Z

.field private final g:[Landroid/graphics/drawable/Drawable;

.field h:I

.field private final i:Z

.field j:I

.field private final l:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lo/SQLiteException;-><init>([Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    .line 97
    invoke-direct {p0, p1}, Lo/SQLiteDatabaseCorruptException;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 98
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "At least one layer required!"

    invoke-static {v1, v0}, Lo/StringParceledListSlice;->a(ZLjava/lang/Object;)V

    .line 99
    iput-object p1, p0, Lo/SQLiteException;->g:[Landroid/graphics/drawable/Drawable;

    .line 100
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lo/SQLiteException;->c:[I

    .line 101
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lo/SQLiteException;->b:[I

    const/16 v0, 0xff

    .line 102
    iput v0, p0, Lo/SQLiteException;->h:I

    .line 103
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lo/SQLiteException;->f:[Z

    .line 104
    iput v2, p0, Lo/SQLiteException;->j:I

    .line 105
    iput-boolean p2, p0, Lo/SQLiteException;->i:Z

    .line 106
    iget-boolean p1, p0, Lo/SQLiteException;->i:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lo/SQLiteException;->l:I

    .line 107
    invoke-direct {p0}, Lo/SQLiteException;->g()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 338
    iget v0, p0, Lo/SQLiteException;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/SQLiteException;->j:I

    .line 339
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 340
    iget p3, p0, Lo/SQLiteException;->j:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lo/SQLiteException;->j:I

    .line 341
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private c(F)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 274
    :goto_0
    iget-object v4, p0, Lo/SQLiteException;->g:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 275
    iget-object v4, p0, Lo/SQLiteException;->f:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    .line 277
    :goto_1
    iget-object v5, p0, Lo/SQLiteException;->b:[I

    iget-object v6, p0, Lo/SQLiteException;->c:[I

    aget v6, v6, v2

    int-to-float v6, v6

    const/16 v7, 0xff

    mul-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float v4, v4, p1

    add-float/2addr v6, v4

    float-to-int v4, v6

    aput v4, v5, v2

    .line 278
    aget v4, v5, v2

    if-gez v4, :cond_1

    .line 279
    aput v1, v5, v2

    .line 281
    :cond_1
    iget-object v4, p0, Lo/SQLiteException;->b:[I

    aget v5, v4, v2

    if-le v5, v7, :cond_2

    .line 282
    aput v7, v4, v2

    .line 285
    :cond_2
    iget-object v4, p0, Lo/SQLiteException;->f:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, Lo/SQLiteException;->b:[I

    aget v4, v4, v2

    if-ge v4, v7, :cond_3

    const/4 v3, 0x0

    .line 288
    :cond_3
    iget-object v4, p0, Lo/SQLiteException;->f:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_4

    iget-object v4, p0, Lo/SQLiteException;->b:[I

    aget v4, v4, v2

    if-lez v4, :cond_4

    const/4 v3, 0x0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x2

    .line 155
    iput v0, p0, Lo/SQLiteException;->d:I

    .line 156
    iget-object v0, p0, Lo/SQLiteException;->c:[I

    iget v1, p0, Lo/SQLiteException;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 157
    iget-object v0, p0, Lo/SQLiteException;->c:[I

    const/16 v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 158
    iget-object v0, p0, Lo/SQLiteException;->b:[I

    iget v3, p0, Lo/SQLiteException;->l:I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 159
    iget-object v0, p0, Lo/SQLiteException;->b:[I

    aput v1, v0, v2

    .line 160
    iget-object v0, p0, Lo/SQLiteException;->f:[Z

    iget-boolean v1, p0, Lo/SQLiteException;->i:Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 161
    iget-object v0, p0, Lo/SQLiteException;->f:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 128
    iget v0, p0, Lo/SQLiteException;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/SQLiteException;->j:I

    .line 129
    invoke-virtual {p0}, Lo/SQLiteException;->invalidateSelf()V

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lo/SQLiteException;->d:I

    .line 178
    iget-object v0, p0, Lo/SQLiteException;->f:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 179
    invoke-virtual {p0}, Lo/SQLiteException;->invalidateSelf()V

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x2

    .line 260
    iput v0, p0, Lo/SQLiteException;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 261
    :goto_0
    iget-object v2, p0, Lo/SQLiteException;->g:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 262
    iget-object v2, p0, Lo/SQLiteException;->b:[I

    iget-object v3, p0, Lo/SQLiteException;->f:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0xff

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lo/SQLiteException;->invalidateSelf()V

    return-void
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lo/SQLiteException;->d:I

    .line 188
    iget-object v1, p0, Lo/SQLiteException;->f:[Z

    aput-boolean v0, v1, p1

    .line 189
    invoke-virtual {p0}, Lo/SQLiteException;->invalidateSelf()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lo/SQLiteException;->d:I

    .line 197
    iget-object v0, p0, Lo/SQLiteException;->f:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 198
    invoke-virtual {p0}, Lo/SQLiteException;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 300
    iget v0, p0, Lo/SQLiteException;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_4

    .line 313
    :cond_0
    iget v0, p0, Lo/SQLiteException;->a:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 315
    invoke-virtual {p0}, Lo/SQLiteException;->f()J

    move-result-wide v4

    iget-wide v6, p0, Lo/SQLiteException;->e:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    iget v4, p0, Lo/SQLiteException;->a:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 317
    invoke-direct {p0, v0}, Lo/SQLiteException;->c(F)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 318
    :goto_1
    iput v1, p0, Lo/SQLiteException;->d:I

    goto :goto_4

    .line 303
    :cond_3
    iget-object v0, p0, Lo/SQLiteException;->b:[I

    iget-object v4, p0, Lo/SQLiteException;->c:[I

    iget-object v5, p0, Lo/SQLiteException;->g:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    invoke-virtual {p0}, Lo/SQLiteException;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lo/SQLiteException;->e:J

    .line 306
    iget v0, p0, Lo/SQLiteException;->a:I

    if-nez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 308
    :goto_2
    invoke-direct {p0, v0}, Lo/SQLiteException;->c(F)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    .line 309
    :goto_3
    iput v1, p0, Lo/SQLiteException;->d:I

    .line 327
    :goto_4
    iget-object v1, p0, Lo/SQLiteException;->g:[Landroid/graphics/drawable/Drawable;

    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 328
    aget-object v1, v1, v2

    iget-object v3, p0, Lo/SQLiteException;->b:[I

    aget v3, v3, v2

    iget v4, p0, Lo/SQLiteException;->h:I

    mul-int v3, v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-direct {p0, p1, v1, v3}, Lo/SQLiteException;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    .line 332
    invoke-virtual {p0}, Lo/SQLiteException;->invalidateSelf()V

    :cond_7
    return-void
.end method

.method public e()V
    .locals 1

    .line 121
    iget v0, p0, Lo/SQLiteException;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/SQLiteException;->j:I

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 136
    iput p1, p0, Lo/SQLiteException;->a:I

    .line 138
    iget p1, p0, Lo/SQLiteException;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lo/SQLiteException;->d:I

    :cond_0
    return-void
.end method

.method protected f()J
    .locals 2

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlpha()I
    .locals 1

    .line 354
    iget v0, p0, Lo/SQLiteException;->h:I

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 112
    iget v0, p0, Lo/SQLiteException;->j:I

    if-nez v0, :cond_0

    .line 113
    invoke-super {p0}, Lo/SQLiteDatabaseCorruptException;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 347
    iget v0, p0, Lo/SQLiteException;->h:I

    if-eq v0, p1, :cond_0

    .line 348
    iput p1, p0, Lo/SQLiteException;->h:I

    .line 349
    invoke-virtual {p0}, Lo/SQLiteException;->invalidateSelf()V

    :cond_0
    return-void
.end method
