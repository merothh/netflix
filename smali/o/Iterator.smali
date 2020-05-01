.class Lo/Iterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Iterator$Application;,
        Lo/Iterator$StateListAnimator;,
        Lo/Iterator$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/State$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/State$StateListAnimator<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private volatile c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lo/Iterator$StateListAnimator;

.field private final e:Lo/Iterator$TaskDescription;

.field private volatile g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;Lo/Iterator$TaskDescription;Lo/State$StateListAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lo/Iterator$TaskDescription;",
            "Lo/State$StateListAnimator<",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lo/Iterator$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Iterator$StateListAnimator;-><init>(Lo/Iterator$5;)V

    iput-object v0, p0, Lo/Iterator;->d:Lo/Iterator$StateListAnimator;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/Iterator;->g:Ljava/util/List;

    .line 37
    new-instance v0, Lo/LongBinaryOperator;

    invoke-direct {v0, p1}, Lo/LongBinaryOperator;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lo/Iterator;->b:Ljava/util/concurrent/Executor;

    .line 38
    iput-object p2, p0, Lo/Iterator;->e:Lo/Iterator$TaskDescription;

    .line 39
    iput-object p3, p0, Lo/Iterator;->a:Lo/State$StateListAnimator;

    return-void
.end method

.method static synthetic b(Lo/Iterator;ILjava/util/List;Lo/Spliterator;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lo/Iterator;->e(ILjava/util/List;Lo/Spliterator;)V

    return-void
.end method

.method private declared-synchronized c(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;I)Z"
        }
    .end annotation

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lo/Iterator;->d:Lo/Iterator$StateListAnimator;

    invoke-virtual {v0, p2}, Lo/Iterator$StateListAnimator;->c(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 189
    iput-object p1, p0, Lo/Iterator;->c:Ljava/util/List;

    if-nez p1, :cond_0

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Iterator;->g:Ljava/util/List;

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Iterator;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 197
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 200
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lo/Iterator;Ljava/util/List;I)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lo/Iterator;->c(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lo/Iterator;)Lo/Iterator$TaskDescription;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/Iterator;->e:Lo/Iterator$TaskDescription;

    return-object p0
.end method

.method private e(ILjava/util/List;Lo/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lo/Spliterator;",
            ")V"
        }
    .end annotation

    .line 168
    sget-object v0, Lo/BaseStream;->e:Lo/BaseStream;

    new-instance v1, Lo/Iterator$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lo/Iterator$2;-><init>(Lo/Iterator;Ljava/util/List;ILo/Spliterator;)V

    invoke-virtual {v0, v1}, Lo/BaseStream;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lo/Iterator;->d:Lo/Iterator$StateListAnimator;

    invoke-virtual {v0}, Lo/Iterator$StateListAnimator;->e()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lo/Iterator;->d()Z

    move-result v0

    .line 99
    iget-object v1, p0, Lo/Iterator;->d:Lo/Iterator$StateListAnimator;

    invoke-virtual {v1}, Lo/Iterator$StateListAnimator;->c()I

    move-result v1

    .line 100
    invoke-direct {p0, p1, v1}, Lo/Iterator;->c(Ljava/util/List;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 120
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lo/Iterator;->d:Lo/Iterator$StateListAnimator;

    invoke-virtual {v0}, Lo/Iterator$StateListAnimator;->c()I

    move-result v4

    .line 124
    iget-object v6, p0, Lo/Iterator;->c:Ljava/util/List;

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v6, :cond_0

    .line 129
    invoke-static {v6}, Lo/Spliterator;->e(Ljava/util/List;)Lo/Spliterator;

    move-result-object v0

    invoke-direct {p0, v4, p1, v0}, Lo/Iterator;->e(ILjava/util/List;Lo/Spliterator;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 133
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_3

    .line 143
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    new-instance v3, Lo/Iterator$Application;

    iget-object v0, p0, Lo/Iterator;->a:Lo/State$StateListAnimator;

    invoke-direct {v3, v6, p1, v0}, Lo/Iterator$Application;-><init>(Ljava/util/List;Ljava/util/List;Lo/State$StateListAnimator;)V

    .line 151
    iget-object v0, p0, Lo/Iterator;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lo/Iterator$5;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lo/Iterator$5;-><init>(Lo/Iterator;Lo/Iterator$Application;ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 145
    :cond_3
    :goto_0
    invoke-static {p1}, Lo/Spliterator;->d(Ljava/util/List;)Lo/Spliterator;

    move-result-object v0

    invoke-direct {p0, v4, p1, v0}, Lo/Iterator;->e(ILjava/util/List;Lo/Spliterator;)V

    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x0

    if-eqz v6, :cond_5

    .line 136
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 137
    invoke-static {v6}, Lo/Spliterator;->b(Ljava/util/List;)Lo/Spliterator;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, p1

    .line 139
    :goto_2
    invoke-direct {p0, v4, p1, v0}, Lo/Iterator;->e(ILjava/util/List;Lo/Spliterator;)V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lo/Iterator;->d:Lo/Iterator$StateListAnimator;

    invoke-virtual {v0}, Lo/Iterator$StateListAnimator;->d()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lo/Iterator;->g:Ljava/util/List;

    return-object v0
.end method
