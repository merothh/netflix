.class Lo/VoiceInteractor$Dialog;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Dialog"
.end annotation


# instance fields
.field final synthetic c:Lo/VoiceInteractor;


# direct methods
.method public constructor <init>(Lo/VoiceInteractor;Landroid/content/Context;)V
    .locals 0

    .line 2490
    iput-object p1, p0, Lo/VoiceInteractor$Dialog;->c:Lo/VoiceInteractor;

    .line 2491
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private c(II)Z
    .locals 1

    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 2520
    invoke-virtual {p0}, Lo/VoiceInteractor$Dialog;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lo/VoiceInteractor$Dialog;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2496
    iget-object v0, p0, Lo/VoiceInteractor$Dialog;->c:Lo/VoiceInteractor;

    invoke-virtual {v0, p1}, Lo/VoiceInteractor;->c(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2497
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2506
    invoke-direct {p0, v0, v1}, Lo/VoiceInteractor$Dialog;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2507
    iget-object p1, p0, Lo/VoiceInteractor$Dialog;->c:Lo/VoiceInteractor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/VoiceInteractor;->j(I)V

    const/4 p1, 0x1

    return p1

    .line 2511
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 2516
    invoke-virtual {p0}, Lo/VoiceInteractor$Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/DialogInterface;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/VoiceInteractor$Dialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
