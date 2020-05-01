.class Lo/URL$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/URL;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/URL$Application;

.field final synthetic d:Lo/URL;


# direct methods
.method constructor <init>(Lo/URL;Lo/URL$Application;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lo/URL$3;->d:Lo/URL;

    iput-object p2, p0, Lo/URL$3;->c:Lo/URL$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 571
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 572
    iget-object v0, p0, Lo/URL$3;->d:Lo/URL;

    iget-object v1, p0, Lo/URL$3;->c:Lo/URL$Application;

    invoke-virtual {v0, p1, v1}, Lo/URL;->d(FLo/URL$Application;)V

    .line 573
    iget-object v0, p0, Lo/URL$3;->d:Lo/URL;

    iget-object v1, p0, Lo/URL$3;->c:Lo/URL$Application;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lo/URL;->a(FLo/URL$Application;Z)V

    .line 574
    iget-object p1, p0, Lo/URL$3;->d:Lo/URL;

    invoke-virtual {p1}, Lo/URL;->invalidateSelf()V

    return-void
.end method
