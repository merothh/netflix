.class final Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic val$alphaAnimator:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$shouldAppear:Z

.field final synthetic val$view:Landroid/view/View;

.field private wasAnimationCancelled:Z


# direct methods
.method constructor <init>(ZLandroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$shouldAppear:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$alphaAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "AnimationUtils"

    const-string/jumbo v1, "onAnimationCancel"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->wasAnimationCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "AnimationUtils"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->wasAnimationCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$shouldAppear:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$shouldAppear:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$shouldAppear:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "AnimationUtils"

    const-string/jumbo v1, "Skipping view appearance animation - view is already in correct state."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$shouldAppear:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$alphaAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;->wasAnimationCancelled:Z

    goto :goto_0
.end method
