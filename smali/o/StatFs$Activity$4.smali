.class Lo/StatFs$Activity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatFs$Activity;-><init>(Lo/StatFs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lo/SystemVibrator;

.field final synthetic c:Lo/StatFs$Activity;

.field final synthetic e:Lo/StatFs;


# direct methods
.method constructor <init>(Lo/StatFs$Activity;Lo/StatFs;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lo/StatFs$Activity$4;->c:Lo/StatFs$Activity;

    iput-object p2, p0, Lo/StatFs$Activity$4;->e:Lo/StatFs;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 640
    iput-object p1, p0, Lo/StatFs$Activity$4;->a:Lo/SystemVibrator;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 649
    iget-object p1, p0, Lo/StatFs$Activity$4;->a:Lo/SystemVibrator;

    if-eqz p1, :cond_1

    .line 650
    iget-object p1, p0, Lo/StatFs$Activity$4;->c:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->g(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    .line 651
    invoke-static {p1, v0}, Lo/PowerSaveState;->e(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 652
    iget-object p1, p0, Lo/StatFs$Activity$4;->c:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->i(Lo/StatFs$Activity;)Lo/StatFs$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 653
    iget-object p1, p0, Lo/StatFs$Activity$4;->c:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->i(Lo/StatFs$Activity;)Lo/StatFs$StateListAnimator;

    move-result-object p1

    invoke-interface {p1}, Lo/StatFs$StateListAnimator;->d()V

    .line 655
    :cond_0
    iget-object p1, p0, Lo/StatFs$Activity$4;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->c(Lo/StatFs;)Lo/SimpleClock$Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 656
    iget-object p1, p0, Lo/StatFs$Activity$4;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->c(Lo/StatFs;)Lo/SimpleClock$Activity;

    move-result-object p1

    iget-object v0, p0, Lo/StatFs$Activity$4;->a:Lo/SystemVibrator;

    invoke-interface {p1, v0}, Lo/SimpleClock$Activity;->a(Lo/SystemVibrator;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 644
    iget-object p1, p0, Lo/StatFs$Activity$4;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object p1

    iput-object p1, p0, Lo/StatFs$Activity$4;->a:Lo/SystemVibrator;

    return-void
.end method
