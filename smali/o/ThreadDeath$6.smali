.class Lo/ThreadDeath$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ThreadDeath;->a(Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$Intent;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:I

.field final synthetic d:Landroid/view/View;

.field final synthetic e:I

.field final synthetic h:Lo/ThreadDeath;


# direct methods
.method constructor <init>(Lo/ThreadDeath;Landroidx/recyclerview/widget/RecyclerView$Intent;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lo/ThreadDeath$6;->h:Lo/ThreadDeath;

    iput-object p2, p0, Lo/ThreadDeath$6;->a:Landroidx/recyclerview/widget/RecyclerView$Intent;

    iput p3, p0, Lo/ThreadDeath$6;->c:I

    iput-object p4, p0, Lo/ThreadDeath$6;->d:Landroid/view/View;

    iput p5, p0, Lo/ThreadDeath$6;->e:I

    iput-object p6, p0, Lo/ThreadDeath$6;->b:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 300
    iget p1, p0, Lo/ThreadDeath$6;->c:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lo/ThreadDeath$6;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    :cond_0
    iget p1, p0, Lo/ThreadDeath$6;->e:I

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lo/ThreadDeath$6;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 310
    iget-object p1, p0, Lo/ThreadDeath$6;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 311
    iget-object p1, p0, Lo/ThreadDeath$6;->h:Lo/ThreadDeath;

    iget-object v0, p0, Lo/ThreadDeath$6;->a:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {p1, v0}, Lo/ThreadDeath;->j(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 312
    iget-object p1, p0, Lo/ThreadDeath$6;->h:Lo/ThreadDeath;

    iget-object p1, p1, Lo/ThreadDeath;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/ThreadDeath$6;->a:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object p1, p0, Lo/ThreadDeath$6;->h:Lo/ThreadDeath;

    invoke-virtual {p1}, Lo/ThreadDeath;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 295
    iget-object p1, p0, Lo/ThreadDeath$6;->h:Lo/ThreadDeath;

    iget-object v0, p0, Lo/ThreadDeath$6;->a:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {p1, v0}, Lo/ThreadDeath;->m(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method
