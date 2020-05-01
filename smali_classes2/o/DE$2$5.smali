.class Lo/DE$2$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DE$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DE$2;


# direct methods
.method constructor <init>(Lo/DE$2;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lo/DE$2$5;->a:Lo/DE$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 332
    iget-object p1, p0, Lo/DE$2$5;->a:Lo/DE$2;

    iget-object p1, p1, Lo/DE$2;->a:Lo/DE;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/DE;->c(Lo/DE;Z)Z

    .line 333
    iget-object p1, p0, Lo/DE$2$5;->a:Lo/DE$2;

    iget-object p1, p1, Lo/DE$2;->a:Lo/DE;

    iget-object p1, p1, Lo/DE;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
