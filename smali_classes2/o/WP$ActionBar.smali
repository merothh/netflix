.class final Lo/WP$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WP;->b(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic e:Lo/WP;


# direct methods
.method constructor <init>(Lo/WP;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lo/WP$ActionBar;->e:Lo/WP;

    iput-object p2, p0, Lo/WP$ActionBar;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 101
    iget-object v0, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->e()V

    .line 102
    iget-object v0, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-static {v0}, Lo/WP;->c(Lo/WP;)V

    .line 103
    iget-object v0, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->h()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 105
    iget-object v0, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-virtual {v2}, Lo/WP;->h()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 107
    iget-object v2, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-static {v2}, Lo/WP;->a(Lo/WP;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v2, "netflixBarView.animate()\u2026or(animateInInterpolator)"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x294

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 109
    iget-object v0, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-static {v1}, Lo/WP;->d(Lo/WP;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-static {v1}, Lo/WP;->a(Lo/WP;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "advisoryContainerView.an\u2026or(animateInInterpolator)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 114
    iget-object v0, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lo/WP$ActionBar;->e:Lo/WP;

    invoke-static {v1}, Lo/WP;->a(Lo/WP;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lo/WP$ActionBar;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
