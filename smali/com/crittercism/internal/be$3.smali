.class final Lcom/crittercism/internal/be$3;
.super Lcom/crittercism/internal/di;


# instance fields
.field final synthetic a:Lcom/crittercism/internal/ax;

.field final synthetic b:Lcom/crittercism/internal/be;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/be;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/be$3;->a:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/be$3;->b:Lcom/crittercism/internal/be;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/be$3;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    iget-object v0, v0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    invoke-static {}, Lcom/crittercism/internal/be;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/be$3;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->l:Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/be$3;->b:Lcom/crittercism/internal/be;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/crittercism/internal/be;->l()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/be;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
