.class Lo/StatFs$Activity$2;
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
.field final synthetic a:Lo/StatFs$Activity;

.field final synthetic e:Lo/StatFs;


# direct methods
.method constructor <init>(Lo/StatFs$Activity;Lo/StatFs;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lo/StatFs$Activity$2;->a:Lo/StatFs$Activity;

    iput-object p2, p0, Lo/StatFs$Activity$2;->e:Lo/StatFs;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 630
    iget-object p1, p0, Lo/StatFs$Activity$2;->a:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->f(Lo/StatFs$Activity;)Lo/StatFs$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 631
    iget-object p1, p0, Lo/StatFs$Activity$2;->a:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->f(Lo/StatFs$Activity;)Lo/StatFs$StateListAnimator;

    move-result-object p1

    invoke-interface {p1}, Lo/StatFs$StateListAnimator;->d()V

    :cond_0
    return-void
.end method
