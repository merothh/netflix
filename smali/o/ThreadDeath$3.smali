.class Lo/ThreadDeath$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ThreadDeath;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView$Intent;

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic e:Lo/ThreadDeath;


# direct methods
.method constructor <init>(Lo/ThreadDeath;Landroidx/recyclerview/widget/RecyclerView$Intent;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lo/ThreadDeath$3;->e:Lo/ThreadDeath;

    iput-object p2, p0, Lo/ThreadDeath$3;->b:Landroidx/recyclerview/widget/RecyclerView$Intent;

    iput-object p3, p0, Lo/ThreadDeath$3;->a:Landroid/view/View;

    iput-object p4, p0, Lo/ThreadDeath$3;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lo/ThreadDeath$3;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lo/ThreadDeath$3;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 247
    iget-object p1, p0, Lo/ThreadDeath$3;->e:Lo/ThreadDeath;

    iget-object v0, p0, Lo/ThreadDeath$3;->b:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {p1, v0}, Lo/ThreadDeath;->k(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 248
    iget-object p1, p0, Lo/ThreadDeath$3;->e:Lo/ThreadDeath;

    iget-object p1, p1, Lo/ThreadDeath;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/ThreadDeath$3;->b:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object p1, p0, Lo/ThreadDeath$3;->e:Lo/ThreadDeath;

    invoke-virtual {p1}, Lo/ThreadDeath;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lo/ThreadDeath$3;->e:Lo/ThreadDeath;

    iget-object v0, p0, Lo/ThreadDeath$3;->b:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {p1, v0}, Lo/ThreadDeath;->o(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method
