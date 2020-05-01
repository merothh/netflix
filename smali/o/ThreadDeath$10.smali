.class Lo/ThreadDeath$10;
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
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lo/ThreadDeath;

.field final synthetic d:Lo/ThreadDeath$StateListAnimator;

.field final synthetic e:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lo/ThreadDeath;Lo/ThreadDeath$StateListAnimator;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lo/ThreadDeath$10;->c:Lo/ThreadDeath;

    iput-object p2, p0, Lo/ThreadDeath$10;->d:Lo/ThreadDeath$StateListAnimator;

    iput-object p3, p0, Lo/ThreadDeath$10;->e:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lo/ThreadDeath$10;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 366
    iget-object p1, p0, Lo/ThreadDeath$10;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 367
    iget-object p1, p0, Lo/ThreadDeath$10;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 368
    iget-object p1, p0, Lo/ThreadDeath$10;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 369
    iget-object p1, p0, Lo/ThreadDeath$10;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    iget-object p1, p0, Lo/ThreadDeath$10;->c:Lo/ThreadDeath;

    iget-object v0, p0, Lo/ThreadDeath$10;->d:Lo/ThreadDeath$StateListAnimator;

    iget-object v0, v0, Lo/ThreadDeath$StateListAnimator;->e:Landroidx/recyclerview/widget/RecyclerView$Intent;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo/ThreadDeath;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V

    .line 371
    iget-object p1, p0, Lo/ThreadDeath$10;->c:Lo/ThreadDeath;

    iget-object p1, p1, Lo/ThreadDeath;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/ThreadDeath$10;->d:Lo/ThreadDeath$StateListAnimator;

    iget-object v0, v0, Lo/ThreadDeath$StateListAnimator;->e:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object p1, p0, Lo/ThreadDeath$10;->c:Lo/ThreadDeath;

    invoke-virtual {p1}, Lo/ThreadDeath;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 361
    iget-object p1, p0, Lo/ThreadDeath$10;->c:Lo/ThreadDeath;

    iget-object v0, p0, Lo/ThreadDeath$10;->d:Lo/ThreadDeath$StateListAnimator;

    iget-object v0, v0, Lo/ThreadDeath$StateListAnimator;->e:Landroidx/recyclerview/widget/RecyclerView$Intent;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo/ThreadDeath;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V

    return-void
.end method
