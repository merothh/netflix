.class Lo/StatFs$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatFs;-><init>(Landroid/content/Context;Lo/SimpleClock$Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/StatFs;

.field final synthetic d:Lo/SimpleClock$Activity;


# direct methods
.method constructor <init>(Lo/StatFs;Lo/SimpleClock$Activity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lo/StatFs$4;->a:Lo/StatFs;

    iput-object p2, p0, Lo/StatFs$4;->d:Lo/SimpleClock$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/StatFs$4;->a:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->c(Lo/StatFs;)Lo/SimpleClock$Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lo/StatFs$4;->d:Lo/SimpleClock$Activity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lo/SimpleClock$Activity;->d(F)V

    :cond_0
    return-void
.end method
