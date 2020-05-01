.class final Lo/Xs$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xs;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic d:Lo/Xs;

.field final synthetic e:Lo/Lw;


# direct methods
.method constructor <init>(Lo/Xs;Lo/Lw;Z)V
    .locals 0

    iput-object p1, p0, Lo/Xs$TaskDescription;->d:Lo/Xs;

    iput-object p2, p0, Lo/Xs$TaskDescription;->e:Lo/Lw;

    iput-boolean p3, p0, Lo/Xs$TaskDescription;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animation"

    .line 40
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 41
    iget-object v0, p0, Lo/Xs$TaskDescription;->e:Lo/Lw;

    iget-boolean v1, p0, Lo/Xs$TaskDescription;->a:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42dc0000    # 110.0f

    sub-float p1, v1, p1

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/Lw;->c(F)V

    return-void

    .line 40
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
