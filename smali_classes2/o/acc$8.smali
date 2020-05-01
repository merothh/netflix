.class Lo/acc$8;
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
.field final synthetic c:Lo/acc;


# direct methods
.method constructor <init>(Lo/acc;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lo/acc$8;->c:Lo/acc;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lo/acc$8;->c:Lo/acc;

    invoke-virtual {p1}, Lo/acc;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Uma Banner shrinkAnimator start"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lo/acc$8;->c:Lo/acc;

    invoke-static {p1}, Lo/acc;->b(Lo/acc;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
