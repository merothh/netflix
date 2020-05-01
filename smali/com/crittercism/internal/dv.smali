.class public final Lcom/crittercism/internal/dv;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/crittercism/internal/dt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/crittercism/internal/dt;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/dv;->a:Lcom/crittercism/internal/dt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/crittercism/internal/av;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/cq;->j:Lcom/crittercism/internal/cq;

    iget-object v0, v0, Lcom/crittercism/internal/cq;->m:Ljava/lang/String;

    sget-object v1, Lcom/crittercism/internal/cq;->j:Lcom/crittercism/internal/cq;

    iget-object v1, v1, Lcom/crittercism/internal/cq;->n:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/crittercism/internal/av;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/crittercism/internal/dt;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/dt;-><init>(I)V

    iget v0, v1, Lcom/crittercism/internal/dt;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/crittercism/internal/dt;->a:I

    iput-object v1, p0, Lcom/crittercism/internal/dv;->a:Lcom/crittercism/internal/dt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
