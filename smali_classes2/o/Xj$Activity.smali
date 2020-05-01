.class final Lo/Xj$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xj;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Xj;


# direct methods
.method constructor <init>(Lo/Xj;)V
    .locals 0

    iput-object p1, p0, Lo/Xj$Activity;->d:Lo/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 25
    iget-object v0, p0, Lo/Xj$Activity;->d:Lo/Xj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Xj;->d(Lo/Xj;Z)V

    .line 26
    iget-object v0, p0, Lo/Xj$Activity;->d:Lo/Xj;

    invoke-static {v0}, Lo/Xj;->e(Lo/Xj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lo/Xj$Activity;->d:Lo/Xj;

    invoke-virtual {v0}, Lo/Xj;->f()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lo/Xj$Activity;->d:Lo/Xj;

    invoke-virtual {v0}, Lo/Xj;->p()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lo/Xj$Activity;->d:Lo/Xj;

    invoke-virtual {v0}, Lo/Xj;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lo/Xj$Activity;->d:Lo/Xj;

    invoke-virtual {v0}, Lo/Xj;->f()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 32
    iget-object v0, p0, Lo/Xj$Activity;->d:Lo/Xj;

    invoke-virtual {v0}, Lo/Xj;->f()Landroid/widget/TextView;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method
