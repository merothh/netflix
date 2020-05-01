.class final Lcom/crittercism/internal/be$1;
.super Lcom/crittercism/internal/di;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/crittercism/internal/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/be$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/crittercism/internal/be$1;->b:Lcom/crittercism/internal/ax;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/crittercism/internal/be$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be;)Lcom/crittercism/internal/be$a;

    move-result-object v2

    sget-object v3, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/crittercism/internal/be$1;->b:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->l:Lcom/crittercism/internal/bq;

    invoke-virtual {v2, v0}, Lcom/crittercism/internal/bq;->b(Lcom/crittercism/internal/cf;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
