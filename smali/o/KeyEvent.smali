.class public Lo/KeyEvent;
.super Lo/Gravity;
.source ""


# instance fields
.field d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/Gravity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lo/KeyEvent;->d:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 26
    invoke-super {p0}, Lo/Gravity;->a()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lo/KeyEvent;->d:F

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x2

    .line 41
    iput v0, p0, Lo/KeyEvent;->g:I

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 31
    iget v0, p0, Lo/KeyEvent;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lo/KeyEvent;->d:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    int-to-float p1, p1

    .line 32
    iput p1, p0, Lo/KeyEvent;->d:F

    .line 33
    iget p1, p0, Lo/KeyEvent;->g:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lo/KeyEvent;->b()V

    .line 36
    :cond_1
    invoke-virtual {p0}, Lo/KeyEvent;->g()V

    :cond_2
    return-void
.end method
