.class public Lo/SQLiteDiskIOException;
.super Lo/SQLiteDirectCursorDriver;
.source ""


# instance fields
.field final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Matrix;

.field private d:I

.field private e:I

.field private final j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lo/SQLiteDirectCursorDriver;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lo/SQLiteDiskIOException;->c:Landroid/graphics/Matrix;

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/SQLiteDiskIOException;->j:Landroid/graphics/RectF;

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    .line 49
    rem-int/lit8 p1, p2, 0x5a

    sub-int/2addr p2, p1

    iput p2, p0, Lo/SQLiteDiskIOException;->e:I

    if-ltz p3, :cond_0

    const/16 p1, 0x8

    if-gt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 50
    :goto_0
    iput p3, p0, Lo/SQLiteDiskIOException;->d:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;)V
    .locals 1

    .line 135
    invoke-virtual {p0, p1}, Lo/SQLiteDiskIOException;->b(Landroid/graphics/Matrix;)V

    .line 136
    iget-object v0, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 58
    iget v0, p0, Lo/SQLiteDiskIOException;->e:I

    if-gtz v0, :cond_1

    iget v0, p0, Lo/SQLiteDiskIOException;->d:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 65
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 66
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->draw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 83
    iget v0, p0, Lo/SQLiteDiskIOException;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/SQLiteDiskIOException;->e:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-super {p0}, Lo/SQLiteDirectCursorDriver;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 86
    :cond_1
    :goto_0
    invoke-super {p0}, Lo/SQLiteDirectCursorDriver;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 72
    iget v0, p0, Lo/SQLiteDiskIOException;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/SQLiteDiskIOException;->e:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-super {p0}, Lo/SQLiteDirectCursorDriver;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 75
    :cond_1
    :goto_0
    invoke-super {p0}, Lo/SQLiteDirectCursorDriver;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 94
    invoke-virtual {p0}, Lo/SQLiteDiskIOException;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    iget v1, p0, Lo/SQLiteDiskIOException;->e:I

    if-gtz v1, :cond_1

    iget v1, p0, Lo/SQLiteDiskIOException;->d:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 98
    :cond_1
    :goto_0
    iget v1, p0, Lo/SQLiteDiskIOException;->d:I

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    const/high16 v5, 0x43870000    # 270.0f

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 114
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    iget v2, p0, Lo/SQLiteDiskIOException;->e:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 106
    :cond_2
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 107
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 103
    :cond_3
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 110
    :cond_4
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 111
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 100
    :cond_5
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 119
    :goto_1
    iget-object v1, p0, Lo/SQLiteDiskIOException;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 120
    iget-object v1, p0, Lo/SQLiteDiskIOException;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/SQLiteDiskIOException;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 121
    iget-object v1, p0, Lo/SQLiteDiskIOException;->j:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 122
    iget-object p1, p0, Lo/SQLiteDiskIOException;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/SQLiteDiskIOException;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 123
    iget-object p1, p0, Lo/SQLiteDiskIOException;->j:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget-object v1, p0, Lo/SQLiteDiskIOException;->j:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lo/SQLiteDiskIOException;->j:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lo/SQLiteDiskIOException;->j:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    return-void
.end method
