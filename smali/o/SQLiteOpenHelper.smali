.class public Lo/SQLiteOpenHelper;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lo/SQLiteDoneException;


# instance fields
.field final a:Landroid/graphics/Path;

.field final b:Landroid/graphics/Paint;

.field final c:[F

.field d:[F

.field final e:Landroid/graphics/Path;

.field private f:Z

.field private g:I

.field private final h:[F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:I

.field private final n:Landroid/graphics/RectF;

.field private o:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 27
    iput-object v1, p0, Lo/SQLiteOpenHelper;->h:[F

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lo/SQLiteOpenHelper;->c:[F

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/SQLiteOpenHelper;->f:Z

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lo/SQLiteOpenHelper;->i:F

    .line 33
    iput v1, p0, Lo/SQLiteOpenHelper;->j:F

    .line 34
    iput v0, p0, Lo/SQLiteOpenHelper;->g:I

    .line 35
    iput-boolean v0, p0, Lo/SQLiteOpenHelper;->k:Z

    .line 36
    iput-boolean v0, p0, Lo/SQLiteOpenHelper;->l:Z

    .line 37
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lo/SQLiteOpenHelper;->a:Landroid/graphics/Path;

    .line 38
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lo/SQLiteOpenHelper;->e:Landroid/graphics/Path;

    .line 39
    iput v0, p0, Lo/SQLiteOpenHelper;->o:I

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    const/16 v0, 0xff

    .line 41
    iput v0, p0, Lo/SQLiteOpenHelper;->m:I

    .line 49
    invoke-virtual {p0, p1}, Lo/SQLiteOpenHelper;->a(I)V

    return-void
.end method

.method public static c(Landroid/graphics/drawable/ColorDrawable;)Lo/SQLiteOpenHelper;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 59
    new-instance v0, Lo/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-direct {v0, p0}, Lo/SQLiteOpenHelper;-><init>(I)V

    return-object v0
.end method

.method private c()V
    .locals 7

    .line 313
    iget-object v0, p0, Lo/SQLiteOpenHelper;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 314
    iget-object v0, p0, Lo/SQLiteOpenHelper;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 315
    iget-object v0, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 317
    iget-object v0, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    iget v1, p0, Lo/SQLiteOpenHelper;->i:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 318
    iget-boolean v0, p0, Lo/SQLiteOpenHelper;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 320
    iget-object v3, p0, Lo/SQLiteOpenHelper;->e:Landroid/graphics/Path;

    iget-object v4, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v3, p0, Lo/SQLiteOpenHelper;->c:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 323
    iget-object v4, p0, Lo/SQLiteOpenHelper;->h:[F

    aget v4, v4, v0

    iget v5, p0, Lo/SQLiteOpenHelper;->j:F

    add-float/2addr v4, v5

    iget v5, p0, Lo/SQLiteOpenHelper;->i:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lo/SQLiteOpenHelper;->e:Landroid/graphics/Path;

    iget-object v4, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 327
    :goto_1
    iget-object v0, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    iget v3, p0, Lo/SQLiteOpenHelper;->i:F

    neg-float v4, v3

    div-float/2addr v4, v2

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 329
    iget v0, p0, Lo/SQLiteOpenHelper;->j:F

    iget-boolean v3, p0, Lo/SQLiteOpenHelper;->k:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lo/SQLiteOpenHelper;->i:F

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-float/2addr v0, v3

    .line 330
    iget-object v3, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 331
    iget-boolean v3, p0, Lo/SQLiteOpenHelper;->f:Z

    if-eqz v3, :cond_3

    .line 332
    iget-object v1, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v2

    .line 333
    iget-object v2, p0, Lo/SQLiteOpenHelper;->a:Landroid/graphics/Path;

    iget-object v3, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 334
    :cond_3
    iget-boolean v2, p0, Lo/SQLiteOpenHelper;->k:Z

    if-eqz v2, :cond_6

    .line 335
    iget-object v2, p0, Lo/SQLiteOpenHelper;->d:[F

    if-nez v2, :cond_4

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 336
    iput-object v2, p0, Lo/SQLiteOpenHelper;->d:[F

    .line 338
    :cond_4
    :goto_3
    iget-object v2, p0, Lo/SQLiteOpenHelper;->d:[F

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 339
    iget-object v3, p0, Lo/SQLiteOpenHelper;->h:[F

    aget v3, v3, v1

    iget v4, p0, Lo/SQLiteOpenHelper;->i:F

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 341
    :cond_5
    iget-object v1, p0, Lo/SQLiteOpenHelper;->a:Landroid/graphics/Path;

    iget-object v3, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 343
    :cond_6
    iget-object v1, p0, Lo/SQLiteOpenHelper;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    iget-object v3, p0, Lo/SQLiteOpenHelper;->h:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 345
    :goto_4
    iget-object v1, p0, Lo/SQLiteOpenHelper;->n:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 165
    iget v0, p0, Lo/SQLiteOpenHelper;->o:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lo/SQLiteOpenHelper;->o:I

    .line 167
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lo/SQLiteOpenHelper;->f:Z

    .line 113
    invoke-direct {p0}, Lo/SQLiteOpenHelper;->c()V

    .line 114
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    return-void
.end method

.method public a([F)V
    .locals 4

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lo/SQLiteOpenHelper;->h:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1

    .line 134
    :cond_0
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "radii should have exactly 8 values"

    invoke-static {v0, v3}, Lo/StringParceledListSlice;->e(ZLjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lo/SQLiteOpenHelper;->h:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :goto_1
    invoke-direct {p0}, Lo/SQLiteOpenHelper;->c()V

    .line 138
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lo/SQLiteOpenHelper;->k:Z

    if-eq v0, p1, :cond_0

    .line 233
    iput-boolean p1, p0, Lo/SQLiteOpenHelper;->k:Z

    .line 234
    invoke-direct {p0}, Lo/SQLiteOpenHelper;->c()V

    .line 235
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lo/SQLiteOpenHelper;->l:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    iget v1, p0, Lo/SQLiteOpenHelper;->o:I

    iget v2, p0, Lo/SQLiteOpenHelper;->m:I

    invoke-static {v1, v2}, Lo/SQLiteDatatypeMismatchException;->e(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 96
    iget-object v0, p0, Lo/SQLiteOpenHelper;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    iget v0, p0, Lo/SQLiteOpenHelper;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    iget v1, p0, Lo/SQLiteOpenHelper;->g:I

    iget v2, p0, Lo/SQLiteOpenHelper;->m:I

    invoke-static {v1, v2}, Lo/SQLiteDatatypeMismatchException;->e(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    iget v1, p0, Lo/SQLiteOpenHelper;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v0, p0, Lo/SQLiteOpenHelper;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lo/SQLiteOpenHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 212
    iget v0, p0, Lo/SQLiteOpenHelper;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 213
    iput p1, p0, Lo/SQLiteOpenHelper;->j:F

    .line 214
    invoke-direct {p0}, Lo/SQLiteOpenHelper;->c()V

    .line 215
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public e(IF)V
    .locals 1

    .line 186
    iget v0, p0, Lo/SQLiteOpenHelper;->g:I

    if-eq v0, p1, :cond_0

    .line 187
    iput p1, p0, Lo/SQLiteOpenHelper;->g:I

    .line 188
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    .line 191
    :cond_0
    iget p1, p0, Lo/SQLiteOpenHelper;->i:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 192
    iput p2, p0, Lo/SQLiteOpenHelper;->i:F

    .line 193
    invoke-direct {p0}, Lo/SQLiteOpenHelper;->c()V

    .line 194
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 256
    iget-boolean v0, p0, Lo/SQLiteOpenHelper;->l:Z

    if-eq v0, p1, :cond_0

    .line 257
    iput-boolean p1, p0, Lo/SQLiteOpenHelper;->l:Z

    .line 258
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 288
    iget v0, p0, Lo/SQLiteOpenHelper;->m:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 309
    iget v0, p0, Lo/SQLiteOpenHelper;->o:I

    iget v1, p0, Lo/SQLiteOpenHelper;->m:I

    invoke-static {v0, v1}, Lo/SQLiteDatatypeMismatchException;->e(II)I

    move-result v0

    invoke-static {v0}, Lo/SQLiteDatatypeMismatchException;->e(I)I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 88
    invoke-direct {p0}, Lo/SQLiteOpenHelper;->c()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 275
    iget v0, p0, Lo/SQLiteOpenHelper;->m:I

    if-eq p1, v0, :cond_0

    .line 276
    iput p1, p0, Lo/SQLiteOpenHelper;->m:I

    .line 277
    invoke-virtual {p0}, Lo/SQLiteOpenHelper;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
