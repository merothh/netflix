.class Lo/acc$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/acc;


# direct methods
.method constructor <init>(Lo/acc;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lo/acc$9;->a:Lo/acc;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lo/acc$9;->a:Lo/acc;

    invoke-virtual {p1}, Lo/acc;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Uma Banner shrinkAnimator end"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lo/acc$9;->a:Lo/acc;

    invoke-static {p1}, Lo/acc;->d(Lo/acc;)Lo/Kx;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Kx;->setHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
