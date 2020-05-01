.class Lo/ExpandableListAdapter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExpandableListAdapter;->d(IIIILandroid/view/animation/Interpolator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ExpandableListAdapter;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/ExpandableListAdapter;Z)V
    .locals 0

    .line 102
    iput-object p1, p0, Lo/ExpandableListAdapter$3;->a:Lo/ExpandableListAdapter;

    iput-boolean p2, p0, Lo/ExpandableListAdapter$3;->e:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 105
    iget-boolean p1, p0, Lo/ExpandableListAdapter$3;->e:Z

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lo/ExpandableListAdapter$3;->a:Lo/ExpandableListAdapter;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/ExpandableListAdapter;->setVisibility(I)V

    .line 108
    :cond_0
    iget-object p1, p0, Lo/ExpandableListAdapter$3;->a:Lo/ExpandableListAdapter;

    invoke-static {p1}, Lo/ExpandableListAdapter;->a(Lo/ExpandableListAdapter;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method
