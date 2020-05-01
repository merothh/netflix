.class Lo/ExpandableListAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExpandableListAdapter;->a(IIIILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ExpandableListAdapter;


# direct methods
.method constructor <init>(Lo/ExpandableListAdapter;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lo/ExpandableListAdapter$1;->b:Lo/ExpandableListAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 135
    iget-object p1, p0, Lo/ExpandableListAdapter$1;->b:Lo/ExpandableListAdapter;

    invoke-static {p1}, Lo/ExpandableListAdapter;->b(Lo/ExpandableListAdapter;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method
