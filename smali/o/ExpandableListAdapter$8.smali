.class Lo/ExpandableListAdapter$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExpandableListAdapter;->e(FFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ExpandableListAdapter;


# direct methods
.method constructor <init>(Lo/ExpandableListAdapter;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lo/ExpandableListAdapter$8;->a:Lo/ExpandableListAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 170
    iget-object p1, p0, Lo/ExpandableListAdapter$8;->a:Lo/ExpandableListAdapter;

    invoke-static {p1}, Lo/ExpandableListAdapter;->d(Lo/ExpandableListAdapter;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 164
    iget-object p1, p0, Lo/ExpandableListAdapter$8;->a:Lo/ExpandableListAdapter;

    invoke-static {p1}, Lo/ExpandableListAdapter;->d(Lo/ExpandableListAdapter;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method
