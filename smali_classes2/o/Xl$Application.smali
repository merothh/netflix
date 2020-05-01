.class public final Lo/Xl$Application;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xl;->e(ZJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Xl;

.field final synthetic c:Z

.field private d:Z

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/Xl;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lo/Xl$Application;->b:Lo/Xl;

    iput-boolean p2, p0, Lo/Xl$Application;->c:Z

    iput-boolean p3, p0, Lo/Xl$Application;->e:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lo/Xl$Application;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-boolean p1, p0, Lo/Xl$Application;->c:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lo/Xl$Application;->d:Z

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lo/Xl$Application;->b:Lo/Xl;

    invoke-virtual {p1}, Lo/Xl;->d()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lo/Xl$Application;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lo/Xl$Application;->b:Lo/Xl;

    invoke-virtual {p1}, Lo/Xl;->d()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 132
    :cond_1
    iget-object p1, p0, Lo/Xl$Application;->b:Lo/Xl;

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1, v0}, Lo/Xl;->a(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method
