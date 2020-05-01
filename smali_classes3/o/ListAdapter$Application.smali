.class final Lo/ListAdapter$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ListAdapter;

.field final synthetic e:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Lo/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/ListAdapter$Application;->e:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lo/ListAdapter$Application;->b:Lo/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lo/ListAdapter$Application;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 139
    iget-object v0, p0, Lo/ListAdapter$Application;->b:Lo/ListAdapter;

    invoke-virtual {v0, p1}, Lo/ListAdapter;->setAlpha(F)V

    :cond_1
    return-void
.end method
