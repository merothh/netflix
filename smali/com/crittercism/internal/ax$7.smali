.class final Lcom/crittercism/internal/ax$7;
.super Lcom/crittercism/internal/di;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Ljava/lang/Throwable;J)V
    .locals 1

    iput-object p1, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$7;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcom/crittercism/internal/ax$7;->b:J

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget-object v1, v0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget v0, v0, Lcom/crittercism/internal/ax;->B:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    new-instance v0, Lcom/crittercism/internal/bi;

    iget-object v2, p0, Lcom/crittercism/internal/ax$7;->a:Ljava/lang/Throwable;

    iget-wide v4, p0, Lcom/crittercism/internal/ax$7;->b:J

    invoke-direct {v0, v2, v4, v5}, Lcom/crittercism/internal/bi;-><init>(Ljava/lang/Throwable;J)V

    const-string/jumbo v2, "current_session"

    iget-object v3, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget-object v3, v3, Lcom/crittercism/internal/ax;->i:Lcom/crittercism/internal/bq;

    invoke-virtual {v0, v2, v3}, Lcom/crittercism/internal/bi;->a(Ljava/lang/String;Lcom/crittercism/internal/bq;)V

    iget-object v2, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/bi;->a(Lcom/crittercism/internal/bq;)V

    const-string/jumbo v2, "he"

    iput-object v2, v0, Lcom/crittercism/internal/bi;->e:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/crittercism/internal/bi;->g:Z

    iget-object v2, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    invoke-virtual {v2}, Lcom/crittercism/internal/cv;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/crittercism/internal/bi;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Lcom/crittercism/internal/cu;

    sget-object v3, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    invoke-direct {v2, v3}, Lcom/crittercism/internal/cu;-><init>(Lcom/crittercism/internal/ar;)V

    sget-object v3, Lcom/crittercism/internal/bp;->b:Lcom/crittercism/internal/bp;

    iget-object v3, v3, Lcom/crittercism/internal/bp;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/crittercism/internal/cu;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/crittercism/internal/cu;

    move-result-object v0

    new-instance v2, Lcom/crittercism/internal/dj;

    new-instance v3, Lcom/crittercism/internal/dc;

    new-instance v4, Lcom/crittercism/internal/db;

    iget-object v5, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget-object v5, v5, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    iget-object v5, v5, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v5, v5, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    const-string/jumbo v6, "/android_v2/handle_exceptions"

    invoke-direct {v4, v5, v6}, Lcom/crittercism/internal/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/crittercism/internal/db;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/crittercism/internal/dc;-><init>(Ljava/net/URL;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/crittercism/internal/dj;-><init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;Lcom/crittercism/internal/cy;)V

    invoke-virtual {v2}, Lcom/crittercism/internal/dj;->run()V

    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget v2, v0, Lcom/crittercism/internal/ax;->B:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/crittercism/internal/ax;->B:I

    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    invoke-virtual {v0}, Lcom/crittercism/internal/cv;->b()V

    :cond_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
