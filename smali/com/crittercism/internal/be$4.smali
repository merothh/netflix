.class final Lcom/crittercism/internal/be$4;
.super Lcom/crittercism/internal/di;


# instance fields
.field final synthetic a:Lcom/crittercism/internal/be;

.field final synthetic b:Lcom/crittercism/internal/be;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/be;Lcom/crittercism/internal/be;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/crittercism/internal/be$4;->b:Lcom/crittercism/internal/be;

    iput-object p2, p0, Lcom/crittercism/internal/be$4;->a:Lcom/crittercism/internal/be;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/crittercism/internal/be$4;->b:Lcom/crittercism/internal/be;

    iget-object v0, v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 1689
    iget-object v0, v0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    .line 2483
    iget-object v0, v0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 621
    invoke-static {}, Lcom/crittercism/internal/be;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/crittercism/internal/be$4;->b:Lcom/crittercism/internal/be;

    iget-object v0, v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 3046
    iget-object v0, v0, Lcom/crittercism/internal/ax;->l:Lcom/crittercism/internal/bq;

    .line 622
    iget-object v1, p0, Lcom/crittercism/internal/be$4;->a:Lcom/crittercism/internal/be;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-static {}, Lcom/crittercism/internal/be;->l()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 625
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/be;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
