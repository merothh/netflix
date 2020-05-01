.class Lo/StatFs$Activity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatFs$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/StatFs$Activity;


# direct methods
.method constructor <init>(Lo/StatFs$Activity;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    .line 587
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 549
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 550
    invoke-direct {p0, v0}, Lo/StatFs$Activity$1;->b(F)I

    move-result v1

    .line 552
    iget-object v2, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    invoke-static {v2}, Lo/StatFs$Activity;->c(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    invoke-static {v2}, Lo/StatFs$Activity;->a(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-ne p1, v2, :cond_0

    goto/16 :goto_0

    .line 557
    :cond_0
    iget-object v2, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    invoke-static {v2}, Lo/StatFs$Activity;->g(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 560
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/StatFs$TaskDescription;->setAlpha(I)V

    .line 561
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->f(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/StatFs$TaskDescription;->setAlpha(I)V

    goto :goto_1

    .line 563
    :cond_1
    iget-object v2, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    invoke-static {v2}, Lo/StatFs$Activity;->h(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 566
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->l(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/StatFs$TaskDescription;->setAlpha(I)V

    goto :goto_1

    .line 568
    :cond_2
    iget-object v2, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    invoke-static {v2}, Lo/StatFs$Activity;->j(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 571
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->n(Lo/StatFs;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const p1, 0x3f2e147b    # 0.68f

    const v1, 0x3ea3d70a    # 0.32f

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    .line 575
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/StatFs$TaskDescription;->c(F)V

    .line 576
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->f(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/StatFs$TaskDescription;->c(F)V

    .line 577
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->b(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 578
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->b(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 581
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-virtual {p1}, Lo/StatFs;->requestLayout()V

    goto :goto_1

    .line 555
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/StatFs$Activity$1;->b:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->e(Lo/StatFs$Activity;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/StatFs$TaskDescription;->b(I)V

    :cond_4
    :goto_1
    return-void
.end method
