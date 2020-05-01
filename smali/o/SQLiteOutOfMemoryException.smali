.class public abstract Lo/SQLiteOutOfMemoryException;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lo/SQLiteDoneException;
.implements Lo/SQLiteSession;


# instance fields
.field private A:Z

.field private B:Z

.field private D:Lo/SQLiteQuery;

.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected final d:Landroid/graphics/Path;

.field protected e:F

.field f:[F

.field final g:Landroid/graphics/RectF;

.field protected h:I

.field protected final i:Landroid/graphics/Path;

.field final j:[F

.field final k:Landroid/graphics/RectF;

.field final l:Landroid/graphics/RectF;

.field final m:Landroid/graphics/Matrix;

.field final n:Landroid/graphics/RectF;

.field o:Landroid/graphics/RectF;

.field final p:Landroid/graphics/Matrix;

.field final q:Landroid/graphics/Matrix;

.field final r:Landroid/graphics/Matrix;

.field final s:Landroid/graphics/Matrix;

.field t:Landroid/graphics/Matrix;

.field u:Landroid/graphics/Matrix;

.field final v:Landroid/graphics/Matrix;

.field private final w:[F

.field private x:F

.field private final y:Landroid/graphics/drawable/Drawable;

.field private z:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->a:Z

    .line 42
    iput-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->c:Z

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lo/SQLiteOutOfMemoryException;->e:F

    .line 44
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lo/SQLiteOutOfMemoryException;->d:Landroid/graphics/Path;

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Lo/SQLiteOutOfMemoryException;->b:Z

    .line 46
    iput v0, p0, Lo/SQLiteOutOfMemoryException;->h:I

    .line 47
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->i:Landroid/graphics/Path;

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 49
    iput-object v4, p0, Lo/SQLiteOutOfMemoryException;->w:[F

    new-array v3, v3, [F

    .line 50
    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->j:[F

    .line 53
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    .line 54
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->k:Landroid/graphics/RectF;

    .line 55
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->n:Landroid/graphics/RectF;

    .line 56
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->l:Landroid/graphics/RectF;

    .line 59
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->m:Landroid/graphics/Matrix;

    .line 60
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->s:Landroid/graphics/Matrix;

    .line 62
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->r:Landroid/graphics/Matrix;

    .line 63
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->p:Landroid/graphics/Matrix;

    .line 64
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->q:Landroid/graphics/Matrix;

    .line 69
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/SQLiteOutOfMemoryException;->v:Landroid/graphics/Matrix;

    .line 70
    iput v1, p0, Lo/SQLiteOutOfMemoryException;->x:F

    .line 71
    iput-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->B:Z

    .line 72
    iput-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->z:Z

    .line 74
    iput-boolean v2, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    .line 38
    iput-object p1, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lo/SQLiteOutOfMemoryException;->a:Z

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    .line 87
    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->invalidateSelf()V

    return-void
.end method

.method public a([F)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lo/SQLiteOutOfMemoryException;->w:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 120
    iput-boolean v2, p0, Lo/SQLiteOutOfMemoryException;->c:Z

    goto :goto_3

    .line 122
    :cond_0
    array-length v3, p1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "radii should have exactly 8 values"

    invoke-static {v3, v5}, Lo/StringParceledListSlice;->e(ZLjava/lang/Object;)V

    .line 123
    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->w:[F

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iput-boolean v2, p0, Lo/SQLiteOutOfMemoryException;->c:Z

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    .line 126
    iget-boolean v5, p0, Lo/SQLiteOutOfMemoryException;->c:Z

    aget v6, p1, v3

    cmpl-float v6, v6, v0

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lo/SQLiteOutOfMemoryException;->c:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_3
    :goto_3
    iput-boolean v1, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    .line 130
    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->invalidateSelf()V

    return-void
.end method

.method b()Z
    .locals 2

    .line 341
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lo/SQLiteOutOfMemoryException;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected c()V
    .locals 4

    .line 235
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->D:Lo/SQLiteQuery;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->r:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lo/SQLiteQuery;->a(Landroid/graphics/Matrix;)V

    .line 237
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->D:Lo/SQLiteQuery;

    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lo/SQLiteQuery;->a(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 240
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 243
    :goto_0
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 244
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 245
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->l:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 246
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->B:Z

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->o:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lo/SQLiteOutOfMemoryException;->o:Landroid/graphics/RectF;

    goto :goto_1

    .line 250
    :cond_1
    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 252
    :goto_1
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->o:Landroid/graphics/RectF;

    iget v1, p0, Lo/SQLiteOutOfMemoryException;->e:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 253
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->t:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 254
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/SQLiteOutOfMemoryException;->t:Landroid/graphics/Matrix;

    .line 256
    :cond_2
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->o:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2

    .line 258
    :cond_3
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->t:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 262
    :cond_4
    :goto_2
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->r:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->s:Landroid/graphics/Matrix;

    .line 263
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->t:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->u:Landroid/graphics/Matrix;

    .line 265
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 266
    :cond_5
    iput-boolean v1, p0, Lo/SQLiteOutOfMemoryException;->b:Z

    .line 268
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->r:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 269
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->v:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 270
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->B:Z

    if-eqz v0, :cond_6

    .line 271
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->v:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 273
    :cond_6
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->v:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 275
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->p:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 276
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->s:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 277
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->B:Z

    if-eqz v0, :cond_8

    .line 278
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->u:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 279
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->t:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lo/SQLiteOutOfMemoryException;->u:Landroid/graphics/Matrix;

    goto :goto_3

    .line 281
    :cond_7
    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 283
    :cond_8
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->u:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    .line 284
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 288
    :cond_9
    :goto_3
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 289
    iput-boolean v1, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    .line 290
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_a
    return-void
.end method

.method public clearColorFilter()V
    .locals 1

    .line 385
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method protected d()V
    .locals 8

    .line 295
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    if-eqz v0, :cond_7

    .line 296
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 297
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    iget v1, p0, Lo/SQLiteOutOfMemoryException;->e:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 298
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 300
    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->i:Landroid/graphics/Path;

    iget-object v4, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    .line 301
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 300
    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->j:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 304
    iget-object v4, p0, Lo/SQLiteOutOfMemoryException;->w:[F

    aget v4, v4, v0

    iget v5, p0, Lo/SQLiteOutOfMemoryException;->x:F

    add-float/2addr v4, v5

    iget v5, p0, Lo/SQLiteOutOfMemoryException;->e:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->i:Landroid/graphics/Path;

    iget-object v4, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 308
    :goto_1
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    iget v3, p0, Lo/SQLiteOutOfMemoryException;->e:F

    neg-float v4, v3

    div-float/2addr v4, v2

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 310
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 311
    iget v0, p0, Lo/SQLiteOutOfMemoryException;->x:F

    iget-boolean v3, p0, Lo/SQLiteOutOfMemoryException;->B:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lo/SQLiteOutOfMemoryException;->e:F

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-float/2addr v0, v3

    .line 312
    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 313
    iget-boolean v3, p0, Lo/SQLiteOutOfMemoryException;->a:Z

    if-eqz v3, :cond_3

    .line 314
    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->d:Landroid/graphics/Path;

    iget-object v4, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    .line 315
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    .line 316
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    .line 317
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 314
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 319
    :cond_3
    iget-boolean v2, p0, Lo/SQLiteOutOfMemoryException;->B:Z

    if-eqz v2, :cond_6

    .line 320
    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->f:[F

    if-nez v2, :cond_4

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 321
    iput-object v2, p0, Lo/SQLiteOutOfMemoryException;->f:[F

    :cond_4
    const/4 v2, 0x0

    .line 323
    :goto_3
    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->j:[F

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 324
    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->f:[F

    iget-object v4, p0, Lo/SQLiteOutOfMemoryException;->w:[F

    aget v4, v4, v2

    iget v5, p0, Lo/SQLiteOutOfMemoryException;->e:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 326
    :cond_5
    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->d:Landroid/graphics/Path;

    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/SQLiteOutOfMemoryException;->f:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 328
    :cond_6
    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->d:Landroid/graphics/Path;

    iget-object v3, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/SQLiteOutOfMemoryException;->w:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 330
    :goto_4
    iget-object v2, p0, Lo/SQLiteOutOfMemoryException;->g:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 331
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->d:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 332
    iput-boolean v1, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    :cond_7
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->B:Z

    if-eq v0, p1, :cond_0

    .line 193
    iput-boolean p1, p0, Lo/SQLiteOutOfMemoryException;->B:Z

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    .line 195
    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 401
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RoundedDrawable#draw"

    .line 402
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 405
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 406
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 172
    iget v0, p0, Lo/SQLiteOutOfMemoryException;->x:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 173
    iput p1, p0, Lo/SQLiteOutOfMemoryException;->x:F

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    .line 175
    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public e(IF)V
    .locals 1

    .line 146
    iget v0, p0, Lo/SQLiteOutOfMemoryException;->h:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lo/SQLiteOutOfMemoryException;->e:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iput p1, p0, Lo/SQLiteOutOfMemoryException;->h:I

    .line 148
    iput p2, p0, Lo/SQLiteOutOfMemoryException;->e:F

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lo/SQLiteOutOfMemoryException;->A:Z

    .line 150
    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public e(Lo/SQLiteQuery;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lo/SQLiteOutOfMemoryException;->D:Lo/SQLiteQuery;

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->z:Z

    if-eq v0, p1, :cond_0

    .line 217
    iput-boolean p1, p0, Lo/SQLiteOutOfMemoryException;->z:Z

    .line 218
    invoke-virtual {p0}, Lo/SQLiteOutOfMemoryException;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lo/SQLiteOutOfMemoryException;->z:Z

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 391
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 380
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 356
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 351
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 361
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 396
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lo/SQLiteOutOfMemoryException;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
