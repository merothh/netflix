.class Lo/SliceSpec;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SliceSpec$StateListAnimator;
    }
.end annotation


# instance fields
.field private c:Z

.field private final d:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo/SliceSpec$StateListAnimator;

    invoke-direct {v2}, Lo/SliceSpec$StateListAnimator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/SliceSpec;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lo/Slice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    iget-boolean v0, p0, Lo/SliceSpec;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lo/SliceSpec;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v1, p0, Lo/SliceSpec;->c:Z

    .line 24
    invoke-interface {p1}, Lo/Slice;->j()V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lo/SliceSpec;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
