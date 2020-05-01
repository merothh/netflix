.class Lo/DE$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DE;->e(Lo/DE$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DE;

.field final synthetic d:Lo/DE$ActionBar;


# direct methods
.method constructor <init>(Lo/DE;Lo/DE$ActionBar;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lo/DE$2;->a:Lo/DE;

    iput-object p2, p0, Lo/DE$2;->d:Lo/DE$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 323
    iget-object p1, p0, Lo/DE$2;->a:Lo/DE;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/DE;->c(Lo/DE;Z)Z

    .line 324
    iget-object p1, p0, Lo/DE$2;->a:Lo/DE;

    iget-object p1, p1, Lo/DE;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lo/DE$2;->a:Lo/DE;

    .line 326
    invoke-virtual {v0}, Lo/DE;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lo/DE$2$5;

    invoke-direct {v0, p0}, Lo/DE$2$5;-><init>(Lo/DE$2;)V

    .line 327
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 338
    iget-object p1, p0, Lo/DE$2;->d:Lo/DE$ActionBar;

    invoke-interface {p1}, Lo/DE$ActionBar;->d()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 315
    iget-object p1, p0, Lo/DE$2;->a:Lo/DE;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/DE;->c(Lo/DE;Z)Z

    return-void
.end method
