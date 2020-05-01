.class final Lcom/crittercism/internal/ax$8;
.super Lcom/crittercism/internal/di;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Ljava/lang/Throwable;J)V
    .locals 1

    iput-object p1, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$8;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcom/crittercism/internal/ax$8;->b:J

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/crittercism/internal/bi;

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->a:Ljava/lang/Throwable;

    iget-wide v2, p0, Lcom/crittercism/internal/ax$8;->b:J

    invoke-direct {v1, v0, v2, v3}, Lcom/crittercism/internal/bi;-><init>(Ljava/lang/Throwable;J)V

    const-string/jumbo v0, "current_session"

    iget-object v2, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->i:Lcom/crittercism/internal/bq;

    invoke-virtual {v1, v0, v2}, Lcom/crittercism/internal/bi;->a(Ljava/lang/String;Lcom/crittercism/internal/bq;)V

    const-string/jumbo v0, "he"

    iput-object v0, v1, Lcom/crittercism/internal/bi;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->a:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/crittercism/internal/co;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->a:Ljava/lang/Throwable;

    check-cast v0, Lcom/crittercism/internal/co;

    iget-boolean v0, v0, Lcom/crittercism/internal/co;->a:Z

    iput-boolean v0, v1, Lcom/crittercism/internal/bi;->g:Z

    :goto_1
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->k:Lcom/crittercism/internal/bq;

    new-instance v2, Lcom/crittercism/internal/bw;

    iget-object v3, v1, Lcom/crittercism/internal/bi;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/crittercism/internal/bi;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/crittercism/internal/bw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bi;->a(Lcom/crittercism/internal/bq;)V

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->k:Lcom/crittercism/internal/bq;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bi;->b(Lcom/crittercism/internal/bq;)V

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->b(Lcom/crittercism/internal/cf;)Z

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    invoke-virtual {v0}, Lcom/crittercism/internal/cv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crittercism/internal/df;

    iget-object v1, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/df;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v3, v3, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v3, v3, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    const-string/jumbo v4, "/android_v2/handle_exceptions"

    const/4 v5, 0x0

    sget-object v6, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    iget-object v1, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    iget-object v2, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->q:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v0, Lcom/crittercism/internal/df;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/di;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/crittercism/internal/bi;->g:Z

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    invoke-virtual {v0}, Lcom/crittercism/internal/cv;->b()V

    goto/16 :goto_0
.end method
