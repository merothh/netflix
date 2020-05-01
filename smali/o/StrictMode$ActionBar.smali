.class Lo/StrictMode$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Landroid/animation/ValueAnimator;

.field final synthetic b:Lo/StrictMode;

.field private c:I

.field private d:F

.field private final e:Landroid/animation/ValueAnimator;

.field private g:Ljava/lang/CharSequence;

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>(Lo/StrictMode;)V
    .locals 2

    .line 302
    iput-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 282
    iput p1, p0, Lo/StrictMode$ActionBar;->c:I

    .line 287
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lo/StrictMode$ActionBar;->e:Landroid/animation/ValueAnimator;

    .line 290
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lo/StrictMode$ActionBar;->a:Landroid/animation/ValueAnimator;

    .line 304
    iget-object p1, p0, Lo/StrictMode$ActionBar;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 305
    iget-object p1, p0, Lo/StrictMode$ActionBar;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    iget-object p1, p0, Lo/StrictMode$ActionBar;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 307
    iget-object p1, p0, Lo/StrictMode$ActionBar;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    iget-object p1, p0, Lo/StrictMode$ActionBar;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/StrictMode;Lo/StrictMode$3;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lo/StrictMode$ActionBar;-><init>(Lo/StrictMode;)V

    return-void
.end method

.method private b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 342
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    .line 384
    iget v0, p0, Lo/StrictMode$ActionBar;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private varargs c(ILandroid/animation/ValueAnimator;[F)V
    .locals 0

    .line 336
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 337
    iput p1, p0, Lo/StrictMode$ActionBar;->c:I

    .line 338
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/CharSequence;I)V
    .locals 0

    .line 312
    iput p1, p0, Lo/StrictMode$ActionBar;->i:I

    .line 313
    iput-object p2, p0, Lo/StrictMode$ActionBar;->g:Ljava/lang/CharSequence;

    .line 314
    iput p3, p0, Lo/StrictMode$ActionBar;->j:I

    .line 315
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->a(Lo/StrictMode;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p1

    iput p1, p0, Lo/StrictMode$ActionBar;->d:F

    .line 317
    iget-object p1, p0, Lo/StrictMode$ActionBar;->e:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lo/StrictMode$ActionBar;->b(Landroid/animation/ValueAnimator;)V

    .line 318
    iget-object p1, p0, Lo/StrictMode$ActionBar;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lo/StrictMode$ActionBar;->b(Landroid/animation/ValueAnimator;)V

    .line 319
    iget p1, p0, Lo/StrictMode$ActionBar;->i:I

    if-nez p1, :cond_0

    .line 320
    iget-object p1, p0, Lo/StrictMode$ActionBar;->e:Landroid/animation/ValueAnimator;

    invoke-static {}, Lo/StrictMode;->b()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object p1, p0, Lo/StrictMode$ActionBar;->e:Landroid/animation/ValueAnimator;

    invoke-static {}, Lo/StrictMode;->a()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    :goto_0
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->a(Lo/StrictMode;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p1

    iput p1, p0, Lo/StrictMode$ActionBar;->d:F

    .line 325
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->d(Lo/StrictMode;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_1

    iget p1, p0, Lo/StrictMode$ActionBar;->i:I

    if-eqz p1, :cond_1

    .line 327
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->d(Lo/StrictMode;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lo/StrictMode$ActionBar;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object p1, p0, Lo/StrictMode$ActionBar;->a:Landroid/animation/ValueAnimator;

    new-array p3, p2, [F

    fill-array-data p3, :array_0

    invoke-direct {p0, p2, p1, p3}, Lo/StrictMode$ActionBar;->c(ILandroid/animation/ValueAnimator;[F)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 331
    iget-object p3, p0, Lo/StrictMode$ActionBar;->e:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-direct {p0, p1, p3, p2}, Lo/StrictMode$ActionBar;->c(ILandroid/animation/ValueAnimator;[F)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 355
    iget p1, p0, Lo/StrictMode$ActionBar;->c:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    iput v1, p0, Lo/StrictMode$ActionBar;->c:I

    .line 376
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->a(Lo/StrictMode;)Landroid/view/ViewGroup;

    move-result-object p1

    iget v0, p0, Lo/StrictMode$ActionBar;->j:I

    iget-object v1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {v1}, Lo/StrictMode;->c(Lo/StrictMode;)I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_1

    .line 358
    :cond_1
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->d(Lo/StrictMode;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/StrictMode$ActionBar;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-direct {p0}, Lo/StrictMode$ActionBar;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 360
    iget-object p1, p0, Lo/StrictMode$ActionBar;->g:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 361
    iget-object p1, p0, Lo/StrictMode$ActionBar;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 364
    :cond_2
    iput v1, p0, Lo/StrictMode$ActionBar;->c:I

    return-void

    .line 368
    :cond_3
    iget-object p1, p0, Lo/StrictMode$ActionBar;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 371
    :goto_0
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->a(Lo/StrictMode;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p1

    iput p1, p0, Lo/StrictMode$ActionBar;->d:F

    .line 372
    iget-object p1, p0, Lo/StrictMode$ActionBar;->a:Landroid/animation/ValueAnimator;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v2, p1, v0}, Lo/StrictMode$ActionBar;->c(ILandroid/animation/ValueAnimator;[F)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 403
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 408
    iget-object v1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {v1}, Lo/StrictMode;->d(Lo/StrictMode;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 411
    iget v1, p0, Lo/StrictMode$ActionBar;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 414
    iget v1, p0, Lo/StrictMode$ActionBar;->d:F

    mul-float v1, v1, p1

    .line 415
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->d(Lo/StrictMode;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget-object v2, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {v2}, Lo/StrictMode;->d(Lo/StrictMode;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lo/RemoteException;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr p1, v2

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 416
    iget-object v0, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {v0}, Lo/StrictMode;->c(Lo/StrictMode;)I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    .line 417
    iget-object v0, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {v0}, Lo/StrictMode;->a(Lo/StrictMode;)Landroid/view/ViewGroup;

    move-result-object v0

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 421
    iget v1, p0, Lo/StrictMode$ActionBar;->d:F

    mul-float v1, v1, v0

    .line 422
    iget v0, p0, Lo/StrictMode$ActionBar;->j:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->c(Lo/StrictMode;)I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    .line 423
    iget-object p1, p0, Lo/StrictMode$ActionBar;->b:Lo/StrictMode;

    invoke-static {p1}, Lo/StrictMode;->a(Lo/StrictMode;)Landroid/view/ViewGroup;

    move-result-object p1

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_1
    :goto_0
    return-void
.end method
