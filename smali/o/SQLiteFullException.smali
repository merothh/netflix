.class public Lo/SQLiteFullException;
.super Lo/SQLiteDirectCursorDriver;
.source ""


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/Matrix;

.field private e:Landroid/graphics/Matrix;


# direct methods
.method private a()V
    .locals 2

    .line 91
    iget v0, p0, Lo/SQLiteFullException;->c:I

    invoke-virtual {p0}, Lo/SQLiteFullException;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/SQLiteFullException;->b:I

    .line 92
    invoke-virtual {p0}, Lo/SQLiteFullException;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 93
    :cond_0
    invoke-direct {p0}, Lo/SQLiteFullException;->c()V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lo/SQLiteFullException;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lo/SQLiteFullException;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lo/SQLiteFullException;->c:I

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lo/SQLiteFullException;->b:I

    if-lez v2, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    iget-object v0, p0, Lo/SQLiteFullException;->e:Landroid/graphics/Matrix;

    iput-object v0, p0, Lo/SQLiteFullException;->d:Landroid/graphics/Matrix;

    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lo/SQLiteFullException;->d:Landroid/graphics/Matrix;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->a(Landroid/graphics/Matrix;)V

    .line 125
    iget-object v0, p0, Lo/SQLiteFullException;->d:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 46
    invoke-direct {p0}, Lo/SQLiteFullException;->c()V

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Lo/SQLiteFullException;->a()V

    .line 72
    iget-object v0, p0, Lo/SQLiteFullException;->d:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Lo/SQLiteFullException;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 75
    iget-object v1, p0, Lo/SQLiteFullException;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 76
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 87
    invoke-direct {p0}, Lo/SQLiteFullException;->c()V

    return-void
.end method
