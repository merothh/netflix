.class Lo/NetworkOnMainThreadException$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/NetworkOnMainThreadException;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lo/NetworkOnMainThreadException$2;->e:Lo/NetworkOnMainThreadException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 597
    iget-object p1, p0, Lo/NetworkOnMainThreadException$2;->e:Lo/NetworkOnMainThreadException;

    invoke-virtual {p1}, Lo/NetworkOnMainThreadException;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 602
    sget-object p1, Lo/NetworkOnMainThreadException;->c:Landroid/os/Handler;

    new-instance v0, Lo/NetworkOnMainThreadException$2$1;

    invoke-direct {v0, p0}, Lo/NetworkOnMainThreadException$2$1;-><init>(Lo/NetworkOnMainThreadException$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
