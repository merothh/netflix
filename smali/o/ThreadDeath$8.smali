.class Lo/ThreadDeath$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ThreadDeath;->e(Lo/ThreadDeath$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ThreadDeath$StateListAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/view/ViewPropertyAnimator;

.field final synthetic e:Lo/ThreadDeath;


# direct methods
.method constructor <init>(Lo/ThreadDeath;Lo/ThreadDeath$StateListAnimator;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lo/ThreadDeath$8;->e:Lo/ThreadDeath;

    iput-object p2, p0, Lo/ThreadDeath$8;->b:Lo/ThreadDeath$StateListAnimator;

    iput-object p3, p0, Lo/ThreadDeath$8;->d:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lo/ThreadDeath$8;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 387
    iget-object p1, p0, Lo/ThreadDeath$8;->d:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 388
    iget-object p1, p0, Lo/ThreadDeath$8;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object p1, p0, Lo/ThreadDeath$8;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    iget-object p1, p0, Lo/ThreadDeath$8;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 391
    iget-object p1, p0, Lo/ThreadDeath$8;->e:Lo/ThreadDeath;

    iget-object v0, p0, Lo/ThreadDeath$8;->b:Lo/ThreadDeath$StateListAnimator;

    iget-object v0, v0, Lo/ThreadDeath$StateListAnimator;->d:Landroidx/recyclerview/widget/RecyclerView$Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/ThreadDeath;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V

    .line 392
    iget-object p1, p0, Lo/ThreadDeath$8;->e:Lo/ThreadDeath;

    iget-object p1, p1, Lo/ThreadDeath;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/ThreadDeath$8;->b:Lo/ThreadDeath$StateListAnimator;

    iget-object v0, v0, Lo/ThreadDeath$StateListAnimator;->d:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object p1, p0, Lo/ThreadDeath$8;->e:Lo/ThreadDeath;

    invoke-virtual {p1}, Lo/ThreadDeath;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 383
    iget-object p1, p0, Lo/ThreadDeath$8;->e:Lo/ThreadDeath;

    iget-object v0, p0, Lo/ThreadDeath$8;->b:Lo/ThreadDeath$StateListAnimator;

    iget-object v0, v0, Lo/ThreadDeath$StateListAnimator;->d:Landroidx/recyclerview/widget/RecyclerView$Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/ThreadDeath;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V

    return-void
.end method
