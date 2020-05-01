.class Lo/ExpandableListAdapter$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 151
    iput-object p1, p0, Lo/ExpandableListAdapter$4;->a:Lo/ExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 155
    iget-object v0, p0, Lo/ExpandableListAdapter$4;->a:Lo/ExpandableListAdapter;

    invoke-static {v0}, Lo/ExpandableListAdapter;->e(Lo/ExpandableListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 156
    iget-object v0, p0, Lo/ExpandableListAdapter$4;->a:Lo/ExpandableListAdapter;

    invoke-virtual {v0, p1}, Lo/ExpandableListAdapter;->setAlpha(F)V

    return-void
.end method
