.class final Lo/WP$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WP;->d(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/WP;


# direct methods
.method constructor <init>(Lo/WP;)V
    .locals 0

    iput-object p1, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 141
    iget-object v0, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->b()V

    .line 142
    iget-object v0, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-virtual {v1}, Lo/WP;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-static {v1}, Lo/WP;->e(Lo/WP;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 147
    iget-object v0, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-static {v1}, Lo/WP;->d(Lo/WP;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-static {v1}, Lo/WP;->e(Lo/WP;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 153
    iget-object v0, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lo/WP$Activity;->d:Lo/WP;

    invoke-static {v1}, Lo/WP;->e(Lo/WP;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x341

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 156
    new-instance v1, Lo/WP$Activity$3;

    invoke-direct {v1, p0}, Lo/WP$Activity$3;-><init>(Lo/WP$Activity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
