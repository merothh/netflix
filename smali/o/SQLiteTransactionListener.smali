.class public Lo/SQLiteTransactionListener;
.super Lo/SQLiteDirectCursorDriver;
.source ""

# interfaces
.implements Lo/SQLiteStatement;


# instance fields
.field private c:Lo/SQLiteQueryBuilder;

.field d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lo/SQLiteDirectCursorDriver;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lo/SQLiteTransactionListener;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lo/SQLiteTransactionListener;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lo/SQLiteTransactionListener;->c:Lo/SQLiteQueryBuilder;

    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0}, Lo/SQLiteQueryBuilder;->d()V

    .line 81
    :cond_1
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->draw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Lo/SQLiteTransactionListener;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lo/SQLiteTransactionListener;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 84
    iget-object v0, p0, Lo/SQLiteTransactionListener;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lo/SQLiteTransactionListener;->d:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {p0}, Lo/SQLiteTransactionListener;->invalidateSelf()V

    return-void
.end method

.method public e(Lo/SQLiteQueryBuilder;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lo/SQLiteTransactionListener;->c:Lo/SQLiteQueryBuilder;

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lo/SQLiteTransactionListener;->c:Lo/SQLiteQueryBuilder;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lo/SQLiteQueryBuilder;->c(Z)V

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Lo/SQLiteDirectCursorDriver;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method
