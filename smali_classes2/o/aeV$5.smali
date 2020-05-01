.class final Lo/aeV$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aeV;->b(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:F

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic d:Z

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(ZLandroid/view/View;Landroid/view/ViewPropertyAnimator;F)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lo/aeV$5;->d:Z

    iput-object p2, p0, Lo/aeV$5;->e:Landroid/view/View;

    iput-object p3, p0, Lo/aeV$5;->c:Landroid/view/ViewPropertyAnimator;

    iput p4, p0, Lo/aeV$5;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "AnimationUtils"

    const-string v0, "onAnimationCancel"

    .line 286
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lo/aeV$5;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "AnimationUtils"

    const-string v0, "onAnimationEnd"

    .line 277
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean p1, p0, Lo/aeV$5;->a:Z

    if-nez p1, :cond_0

    .line 280
    iget-object p1, p0, Lo/aeV$5;->e:Landroid/view/View;

    iget-boolean v0, p0, Lo/aeV$5;->d:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 258
    iget-boolean p1, p0, Lo/aeV$5;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/aeV$5;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    iget-object p1, p0, Lo/aeV$5;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lo/aeV$5;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aeV$5;->e:Landroid/view/View;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lo/aeV$5;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "AnimationUtils"

    const-string v0, "Skipping view appearance animation - view is already in correct state."

    .line 260
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p1, p0, Lo/aeV$5;->e:Landroid/view/View;

    iget-boolean v0, p0, Lo/aeV$5;->d:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 264
    iget-object p1, p0, Lo/aeV$5;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 268
    iget-object p1, p0, Lo/aeV$5;->e:Landroid/view/View;

    iget v0, p0, Lo/aeV$5;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object p1, p0, Lo/aeV$5;->e:Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lo/aeV$5;->a:Z

    :goto_0
    return-void
.end method
