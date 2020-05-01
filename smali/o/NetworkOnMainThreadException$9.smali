.class Lo/NetworkOnMainThreadException$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic e:Lo/NetworkOnMainThreadException;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException;Z)V
    .locals 0

    .line 622
    iput-object p1, p0, Lo/NetworkOnMainThreadException$9;->e:Lo/NetworkOnMainThreadException;

    iput-boolean p2, p0, Lo/NetworkOnMainThreadException$9;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0

    .line 625
    iget-object p1, p0, Lo/NetworkOnMainThreadException$9;->e:Lo/NetworkOnMainThreadException;

    invoke-static {p1}, Lo/NetworkOnMainThreadException;->b(Lo/NetworkOnMainThreadException;)Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/NetworkOnMainThreadException$StateListAnimator;->d(Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;)V

    .line 627
    iget-boolean p1, p0, Lo/NetworkOnMainThreadException$9;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/NetworkOnMainThreadException$9;->e:Lo/NetworkOnMainThreadException;

    invoke-virtual {p1}, Lo/NetworkOnMainThreadException;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 629
    iget-object p1, p0, Lo/NetworkOnMainThreadException$9;->e:Lo/NetworkOnMainThreadException;

    invoke-virtual {p1}, Lo/NetworkOnMainThreadException;->f()V

    goto :goto_0

    .line 632
    :cond_0
    iget-object p1, p0, Lo/NetworkOnMainThreadException$9;->e:Lo/NetworkOnMainThreadException;

    invoke-static {p1}, Lo/NetworkOnMainThreadException;->b(Lo/NetworkOnMainThreadException;)Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p1

    new-instance p2, Lo/NetworkOnMainThreadException$9$2;

    invoke-direct {p2, p0}, Lo/NetworkOnMainThreadException$9$2;-><init>(Lo/NetworkOnMainThreadException$9;)V

    invoke-virtual {p1, p2}, Lo/NetworkOnMainThreadException$StateListAnimator;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
