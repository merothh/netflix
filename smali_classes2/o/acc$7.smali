.class Lo/acc$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/acc;


# direct methods
.method constructor <init>(Lo/acc;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lo/acc$7;->a:Lo/acc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 214
    iget-object v0, p0, Lo/acc$7;->a:Lo/acc;

    invoke-virtual {v0}, Lo/acc;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Uma Banner shrinkAnimator update"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lo/acc$7;->a:Lo/acc;

    iget-object v0, v0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/acc$7;->a:Lo/acc;

    invoke-static {v0}, Lo/acc;->e(Lo/acc;)Landroid/widget/Space;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/acc$7;->a:Lo/acc;

    .line 219
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 220
    iget-object p1, p0, Lo/acc$7;->a:Lo/acc;

    invoke-static {p1}, Lo/acc;->d(Lo/acc;)Lo/Kx;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Kx;->setHeaderView(Landroid/view/View;)V

    .line 221
    iget-object p1, p0, Lo/acc$7;->a:Lo/acc;

    iget-object p1, p1, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lo/acc$7;->a:Lo/acc;

    invoke-virtual {p1}, Lo/acc;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/acc$7;->a:Lo/acc;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float p1, p1, v4

    sub-float/2addr v3, p1

    float-to-int p1, v3

    .line 226
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_1
    return-void
.end method
