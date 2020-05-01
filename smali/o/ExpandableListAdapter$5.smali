.class Lo/ExpandableListAdapter$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 124
    iput-object p1, p0, Lo/ExpandableListAdapter$5;->b:Lo/ExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/ExpandableListAdapter$5;->b:Lo/ExpandableListAdapter;

    invoke-static {v0}, Lo/ExpandableListAdapter;->e(Lo/ExpandableListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method
