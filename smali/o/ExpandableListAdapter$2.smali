.class Lo/ExpandableListAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExpandableListAdapter;->d(IIIILandroid/view/animation/Interpolator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ExpandableListAdapter;


# direct methods
.method constructor <init>(Lo/ExpandableListAdapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/ExpandableListAdapter$2;->c:Lo/ExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lo/ExpandableListAdapter$2;->c:Lo/ExpandableListAdapter;

    invoke-virtual {v0}, Lo/ExpandableListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    iget-object p1, p0, Lo/ExpandableListAdapter$2;->c:Lo/ExpandableListAdapter;

    invoke-virtual {p1}, Lo/ExpandableListAdapter;->requestLayout()V

    return-void
.end method
