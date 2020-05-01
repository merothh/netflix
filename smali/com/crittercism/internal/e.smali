.class public final Lcom/crittercism/internal/e;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;

.field final b:Ljava/util/Set;

.field final c:Ljava/util/Set;

.field private d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/crittercism/internal/e;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/e;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/e;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/e;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/crittercism/internal/e;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2}, Lcom/crittercism/internal/e;->a(Ljava/util/List;)V

    invoke-virtual {p0, p3}, Lcom/crittercism/internal/e;->b(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/crittercism/internal/c$a;->e:Lcom/crittercism/internal/c$a;

    invoke-virtual {p0, p1, v0}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/c;Lcom/crittercism/internal/c$a;)V

    return-void
.end method

.method public final a(Lcom/crittercism/internal/c;Lcom/crittercism/internal/c$a;)V
    .locals 3

    iget-boolean v0, p1, Lcom/crittercism/internal/c;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/crittercism/internal/c;->b:Z

    iput-object p2, p1, Lcom/crittercism/internal/c;->c:Lcom/crittercism/internal/c$a;

    iget-object v0, p0, Lcom/crittercism/internal/e;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/crittercism/internal/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/crittercism/internal/e$a;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/c;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/f;)V
    .locals 2

    iget-object v1, p0, Lcom/crittercism/internal/e;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    iget-object v1, p0, Lcom/crittercism/internal/e;->b:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/crittercism/internal/e;->b:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3

    iget-object v1, p0, Lcom/crittercism/internal/e;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/e;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/crittercism/internal/e;->c:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
