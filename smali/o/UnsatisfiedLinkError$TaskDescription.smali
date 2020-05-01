.class Lo/UnsatisfiedLinkError$TaskDescription;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnsatisfiedLinkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/UnsatisfiedLinkError;

.field private c:Z


# direct methods
.method constructor <init>(Lo/UnsatisfiedLinkError;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lo/UnsatisfiedLinkError$TaskDescription;->b:Lo/UnsatisfiedLinkError;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 549
    iput-boolean p1, p0, Lo/UnsatisfiedLinkError$TaskDescription;->c:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 572
    iput-boolean p1, p0, Lo/UnsatisfiedLinkError$TaskDescription;->c:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 557
    iget-boolean p1, p0, Lo/UnsatisfiedLinkError$TaskDescription;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 558
    iput-boolean v0, p0, Lo/UnsatisfiedLinkError$TaskDescription;->c:Z

    return-void

    .line 561
    :cond_0
    iget-object p1, p0, Lo/UnsatisfiedLinkError$TaskDescription;->b:Lo/UnsatisfiedLinkError;

    iget-object p1, p1, Lo/UnsatisfiedLinkError;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    .line 562
    iget-object p1, p0, Lo/UnsatisfiedLinkError$TaskDescription;->b:Lo/UnsatisfiedLinkError;

    iput v0, p1, Lo/UnsatisfiedLinkError;->g:I

    .line 563
    invoke-virtual {p1, v0}, Lo/UnsatisfiedLinkError;->e(I)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object p1, p0, Lo/UnsatisfiedLinkError$TaskDescription;->b:Lo/UnsatisfiedLinkError;

    const/4 v0, 0x2

    iput v0, p1, Lo/UnsatisfiedLinkError;->g:I

    .line 566
    invoke-virtual {p1}, Lo/UnsatisfiedLinkError;->d()V

    :goto_0
    return-void
.end method
