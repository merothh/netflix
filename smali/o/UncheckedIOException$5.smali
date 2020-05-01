.class Lo/UncheckedIOException$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UncheckedIOException;->a(Landroidx/fragment/app/Fragment;Lo/UncheckedIOException$TaskDescription;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lo/UncheckedIOException;

.field final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lo/UncheckedIOException;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lo/UncheckedIOException$5;->c:Lo/UncheckedIOException;

    iput-object p2, p0, Lo/UncheckedIOException$5;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lo/UncheckedIOException$5;->b:Landroid/view/View;

    iput-object p4, p0, Lo/UncheckedIOException$5;->e:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1117
    iget-object p1, p0, Lo/UncheckedIOException$5;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/UncheckedIOException$5;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1120
    iget-object p1, p0, Lo/UncheckedIOException$5;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    .line 1121
    iget-object v0, p0, Lo/UncheckedIOException$5;->e:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 1122
    iget-object p1, p0, Lo/UncheckedIOException$5;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/UncheckedIOException$5;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    .line 1123
    iget-object v0, p0, Lo/UncheckedIOException$5;->c:Lo/UncheckedIOException;

    iget-object v1, p0, Lo/UncheckedIOException$5;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/UncheckedIOException;->e(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
