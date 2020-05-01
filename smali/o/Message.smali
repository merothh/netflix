.class Lo/Message;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Message$StateListAnimator;,
        Lo/Message$Activity;
    }
.end annotation


# static fields
.field private static d:Lo/Message;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lo/Message$StateListAnimator;

.field private final c:Landroid/os/Handler;

.field private e:Lo/Message$StateListAnimator;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo/Message$3;

    invoke-direct {v2, p0}, Lo/Message$3;-><init>(Lo/Message;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/Message;->c:Landroid/os/Handler;

    return-void
.end method

.method static c()Lo/Message;
    .locals 1

    .line 30
    sget-object v0, Lo/Message;->d:Lo/Message;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lo/Message;

    invoke-direct {v0}, Lo/Message;-><init>()V

    sput-object v0, Lo/Message;->d:Lo/Message;

    .line 33
    :cond_0
    sget-object v0, Lo/Message;->d:Lo/Message;

    return-object v0
.end method

.method private c(Lo/Message$StateListAnimator;I)Z
    .locals 2

    .line 195
    iget-object v0, p1, Lo/Message$StateListAnimator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Message$Activity;

    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lo/Message;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    invoke-interface {v0, p2}, Lo/Message$Activity;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lo/Message$StateListAnimator;)V
    .locals 4

    .line 214
    iget v0, p1, Lo/Message$StateListAnimator;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    .line 220
    iget v1, p1, Lo/Message$StateListAnimator;->b:I

    if-lez v1, :cond_1

    .line 221
    iget v0, p1, Lo/Message$StateListAnimator;->b:I

    goto :goto_0

    .line 222
    :cond_1
    iget v1, p1, Lo/Message$StateListAnimator;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    .line 225
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/Message;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lo/Message;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 180
    iget-object v0, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    if-eqz v0, :cond_1

    .line 181
    iput-object v0, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    .line 184
    iget-object v1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    iget-object v1, v1, Lo/Message$StateListAnimator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Message$Activity;

    if-eqz v1, :cond_0

    .line 186
    invoke-interface {v1, p1}, Lo/Message$Activity;->e(Z)V

    goto :goto_0

    .line 189
    :cond_0
    iput-object v0, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Lo/Message$Activity;)Z
    .locals 1

    .line 210
    iget-object v0, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/Message$StateListAnimator;->b(Lo/Message$Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i(Lo/Message$Activity;)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/Message$StateListAnimator;->b(Lo/Message$Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lo/Message$Activity;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    invoke-direct {p0, p1}, Lo/Message;->i(Lo/Message$Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    .line 116
    iget-object p1, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    iget-boolean p1, p1, Lo/Message$StateListAnimator;->e:Z

    invoke-direct {p0, p1}, Lo/Message;->e(Z)V

    .line 120
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(ILo/Message$Activity;Z)V
    .locals 2

    .line 66
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-direct {p0, p2}, Lo/Message;->i(Lo/Message$Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object p2, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    iput p1, p2, Lo/Message$StateListAnimator;->b:I

    .line 73
    iget-object p1, p0, Lo/Message;->c:Landroid/os/Handler;

    iget-object p2, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    invoke-direct {p0, p1}, Lo/Message;->d(Lo/Message$StateListAnimator;)V

    .line 75
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    invoke-direct {p0, p2}, Lo/Message;->g(Lo/Message$Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object p2, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    iput p1, p2, Lo/Message$StateListAnimator;->b:I

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Lo/Message$StateListAnimator;

    invoke-direct {v1, p1, p3, p2}, Lo/Message$StateListAnimator;-><init>(IZLo/Message$Activity;)V

    iput-object v1, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    .line 84
    :goto_0
    iget-object p1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lo/Message;->c(Lo/Message$StateListAnimator;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    .line 92
    invoke-direct {p0, p3}, Lo/Message;->e(Z)V

    .line 94
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lo/Message$Activity;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    invoke-direct {p0, p1}, Lo/Message;->i(Lo/Message$Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    invoke-direct {p0, p1}, Lo/Message;->d(Lo/Message$StateListAnimator;)V

    .line 148
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lo/Message$Activity;I)V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-direct {p0, p1}, Lo/Message;->i(Lo/Message$Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object p1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    invoke-direct {p0, p1, p2}, Lo/Message;->c(Lo/Message$StateListAnimator;I)Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lo/Message;->g(Lo/Message$Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    invoke-direct {p0, p1, p2}, Lo/Message;->c(Lo/Message$StateListAnimator;I)Z

    .line 104
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lo/Message$Activity;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    invoke-direct {p0, p1}, Lo/Message;->i(Lo/Message$Activity;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lo/Message$Activity;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-direct {p0, p1}, Lo/Message;->i(Lo/Message$Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lo/Message;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lo/Message$Activity;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-direct {p0, p1}, Lo/Message;->i(Lo/Message$Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    invoke-direct {p0, p1}, Lo/Message;->d(Lo/Message$StateListAnimator;)V

    .line 132
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method e(Lo/Message$StateListAnimator;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lo/Message;->e:Lo/Message$StateListAnimator;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lo/Message;->b:Lo/Message$StateListAnimator;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    .line 232
    invoke-direct {p0, p1, v1}, Lo/Message;->c(Lo/Message$StateListAnimator;I)Z

    .line 234
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Lo/Message$Activity;)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lo/Message;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    invoke-direct {p0, p1}, Lo/Message;->i(Lo/Message$Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lo/Message;->g(Lo/Message$Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
