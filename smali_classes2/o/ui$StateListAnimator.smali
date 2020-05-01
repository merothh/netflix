.class Lo/ui$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Lo/Ae;

.field final e:Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;


# direct methods
.method public constructor <init>(Lo/Ae;Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;)V
    .locals 2

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/ui$StateListAnimator;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 462
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/ui$StateListAnimator;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 465
    iput-object p1, p0, Lo/ui$StateListAnimator;->c:Lo/Ae;

    .line 466
    iput-object p2, p0, Lo/ui$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 1

    .line 481
    iget-object v0, p0, Lo/ui$StateListAnimator;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 482
    iget-object p1, p0, Lo/ui$StateListAnimator;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    return p1
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lo/ui$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lo/ui$StateListAnimator$2;

    invoke-direct {v1, p0, p1}, Lo/ui$StateListAnimator$2;-><init>(Lo/ui$StateListAnimator;Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 473
    iget-object v0, p0, Lo/ui$StateListAnimator;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 486
    iget-object v0, p0, Lo/ui$StateListAnimator;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
