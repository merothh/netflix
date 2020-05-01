.class public final Lo/ListAdapter$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;

.field final synthetic e:Lo/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Lo/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/ListAdapter$StateListAnimator;->a:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lo/ListAdapter$StateListAnimator;->e:Lo/ListAdapter;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lo/ListAdapter$StateListAnimator;->e:Lo/ListAdapter;

    invoke-virtual {p1}, Lo/ListAdapter;->g()Lo/ListAdapter$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 120
    iget-object v0, p0, Lo/ListAdapter$StateListAnimator;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 122
    invoke-interface {p1, v0}, Lo/ListAdapter$TaskDescription;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 123
    invoke-interface {p1, v0}, Lo/ListAdapter$TaskDescription;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
