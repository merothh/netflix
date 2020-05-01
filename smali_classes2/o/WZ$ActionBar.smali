.class final Lo/WZ$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WZ;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/WZ;


# direct methods
.method constructor <init>(Lo/WZ;)V
    .locals 0

    iput-object p1, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 29
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/WZ;->b(Lo/WZ;Z)V

    .line 30
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-static {v0}, Lo/WZ;->b(Lo/WZ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-virtual {v0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-virtual {v0}, Lo/WZ;->p()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-virtual {v0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-virtual {v0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 36
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-virtual {v0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 42
    :goto_0
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-static {v0}, Lo/WZ;->c(Lo/WZ;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lo/WZ$ActionBar;->b:Lo/WZ;

    invoke-virtual {v0}, Lo/WZ;->g()V

    :cond_1
    return-void
.end method
