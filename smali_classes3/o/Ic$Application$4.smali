.class final Lo/Ic$Application$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ic$Application;-><init>(Lo/Ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Ic$Application;


# direct methods
.method constructor <init>(Lo/Ic$Application;)V
    .locals 0

    iput-object p1, p0, Lo/Ic$Application$4;->a:Lo/Ic$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 190
    iget-object v0, p0, Lo/Ic$Application$4;->a:Lo/Ic$Application;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v3, 0x4325c000    # 165.75f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lo/Ic$Application;->c(Lo/Ic$Application;I)V

    .line 191
    iget-object v0, p0, Lo/Ic$Application$4;->a:Lo/Ic$Application;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v1, p1

    mul-float v1, v1, v3

    float-to-int p1, v1

    invoke-static {v0, p1}, Lo/Ic$Application;->e(Lo/Ic$Application;I)V

    .line 192
    iget-object p1, p0, Lo/Ic$Application$4;->a:Lo/Ic$Application;

    iget-object p1, p1, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {p1}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lo/Ic$Application$4;->a:Lo/Ic$Application;

    iget-object p1, p1, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {p1}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_0
    return-void

    .line 191
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
