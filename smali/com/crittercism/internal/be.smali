.class public final Lcom/crittercism/internal/be;
.super Lcom/crittercism/app/Transaction;

# interfaces
.implements Lcom/crittercism/internal/cf;


# static fields
.field private static c:Ljava/util/concurrent/ExecutorService;

.field private static d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static o:Ljava/util/List;

.field private static volatile p:J

.field private static volatile q:J

.field private static volatile r:Z

.field private static final s:[I

.field private static t:Lcom/crittercism/internal/be;

.field private static u:Lcom/crittercism/internal/bf;


# instance fields
.field b:Lcom/crittercism/internal/be$a;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:Ljava/util/Map;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/crittercism/internal/dy;

    invoke-direct {v0}, Lcom/crittercism/internal/dy;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    new-instance v1, Lcom/crittercism/internal/dy;

    invoke-direct {v1}, Lcom/crittercism/internal/dy;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/crittercism/internal/be;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    sput-wide v2, Lcom/crittercism/internal/be;->p:J

    sput-wide v2, Lcom/crittercism/internal/be;->q:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/crittercism/internal/be;->r:Z

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/crittercism/internal/be;->s:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    new-instance v0, Lcom/crittercism/internal/bf;

    invoke-direct {v0}, Lcom/crittercism/internal/bf;-><init>()V

    sput-object v0, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data
.end method

.method public constructor <init>(Lcom/crittercism/internal/ax;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/16 v2, 0xff

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    iput-wide v4, p0, Lcom/crittercism/internal/be;->f:J

    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const-string/jumbo v1, "Transaction name exceeds 255 characters! Truncating to first 255 characters."

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    :goto_0
    sget-object v1, Lcom/crittercism/internal/be$a;->a:Lcom/crittercism/internal/be$a;

    iput-object v1, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    iput-object p1, p0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    sget-object v1, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v1}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    iput-wide v4, p0, Lcom/crittercism/internal/be;->f:J

    sget-object v1, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    iget-object v1, v1, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    return-void

    :cond_1
    iput-object p2, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/crittercism/internal/be;)V
    .locals 2

    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p1, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    iget-wide v0, p1, Lcom/crittercism/internal/be;->f:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    iget v0, p1, Lcom/crittercism/internal/be;->g:I

    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    iget-wide v0, p1, Lcom/crittercism/internal/be;->h:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->h:J

    iget-wide v0, p1, Lcom/crittercism/internal/be;->i:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->i:J

    iget-object v0, p1, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    iput-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    iget-object v0, p1, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    iput-object v0, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    iget-object v0, p1, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    iget-wide v0, p1, Lcom/crittercism/internal/be;->j:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->j:J

    iget-wide v0, p1, Lcom/crittercism/internal/be;->m:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->m:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 6

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    iput v4, p0, Lcom/crittercism/internal/be;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-static {}, Lcom/crittercism/internal/be$a;->values()[Lcom/crittercism/internal/be$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/eb;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->h:J

    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/eb;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->i:J

    const/4 v0, 0x7

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->j:J

    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/crittercism/internal/be;)Lcom/crittercism/internal/be$a;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    return-object v0
.end method

.method public static a(Lcom/crittercism/internal/ax;Z)Ljava/util/List;
    .locals 12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    monitor-enter v0

    :try_start_1
    iget-object v7, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v8, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v7, v8, :cond_1

    iput-wide v4, v0, Lcom/crittercism/internal/be;->i:J

    sget-object v7, Lcom/crittercism/internal/be$a;->g:Lcom/crittercism/internal/be$a;

    iput-object v7, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    invoke-static {}, Lcom/crittercism/internal/be;->m()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-wide v8, Lcom/crittercism/internal/be;->p:J

    iget-wide v10, v0, Lcom/crittercism/internal/be;->m:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/crittercism/internal/be;->j:J

    sub-long v8, v2, v8

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/crittercism/internal/be;->j:J

    :cond_0
    :goto_1
    invoke-direct {v0}, Lcom/crittercism/internal/be;->p()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_2
    new-instance v0, Lcom/crittercism/internal/be$2;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be$2;-><init>(Lcom/crittercism/internal/ax;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    if-nez p1, :cond_3

    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    return-object v6

    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be$a;->c:Lcom/crittercism/internal/be$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Lcom/crittercism/internal/au;)V
    .locals 6

    :try_start_0
    invoke-interface {p0}, Lcom/crittercism/internal/au;->x()Lcom/crittercism/internal/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crittercism/internal/bq;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bo;

    check-cast v0, Lcom/crittercism/internal/bx;

    invoke-virtual {v0}, Lcom/crittercism/internal/bx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v5, Lcom/crittercism/internal/be;

    invoke-direct {v5, v0}, Lcom/crittercism/internal/be;-><init>(Lorg/json/JSONArray;)V

    iput-wide v2, v5, Lcom/crittercism/internal/be;->i:J

    sget-object v0, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    iput-object v0, v5, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    invoke-interface {p0}, Lcom/crittercism/internal/au;->y()Lcom/crittercism/internal/bq;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lcom/crittercism/internal/bq;->a()V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1
.end method

.method public static a(Lcom/crittercism/internal/ax;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/crittercism/internal/be;->q:J

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    monitor-enter v0

    :try_start_1
    iget-object v3, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v4, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v3, v4, :cond_0

    iget-wide v4, v0, Lcom/crittercism/internal/be;->m:J

    sget-wide v6, Lcom/crittercism/internal/be;->p:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    iget-wide v4, v0, Lcom/crittercism/internal/be;->m:J

    sget-wide v6, Lcom/crittercism/internal/be;->q:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    iget-wide v4, v0, Lcom/crittercism/internal/be;->j:J

    sget-wide v6, Lcom/crittercism/internal/be;->q:J

    iget-wide v8, v0, Lcom/crittercism/internal/be;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/crittercism/internal/be;->j:J

    :cond_0
    :goto_1
    invoke-direct {v0}, Lcom/crittercism/internal/be;->p()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    iget-wide v4, v0, Lcom/crittercism/internal/be;->j:J

    sget-wide v6, Lcom/crittercism/internal/be;->q:J

    sget-wide v8, Lcom/crittercism/internal/be;->p:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/crittercism/internal/be;->j:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/crittercism/internal/be$1;

    invoke-direct {v0, v1, p0}, Lcom/crittercism/internal/be$1;-><init>(Ljava/util/List;Lcom/crittercism/internal/ax;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    return-void

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private a(Lcom/crittercism/internal/be$a;J)V
    .locals 2

    sget-object v0, Lcom/crittercism/internal/be$a;->c:Lcom/crittercism/internal/be$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/be$a;->e:Lcom/crittercism/internal/be$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/crittercism/internal/be;->p()V

    invoke-direct {p0, p1, p2, p3}, Lcom/crittercism/internal/be;->b(Lcom/crittercism/internal/be$a;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->f:Lcom/crittercism/internal/be$a;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is not running. Either it has not been started or it has been stopped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Transaction is not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/crittercism/internal/bf;)V
    .locals 0

    sput-object p0, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "Ignoring Transaction.setValue(int) call. Negative parameter provided."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->a:Lcom/crittercism/internal/be$a;

    if-ne v0, v1, :cond_1

    iput p1, p0, Lcom/crittercism/internal/be;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v0, v1, :cond_2

    iput p1, p0, Lcom/crittercism/internal/be;->g:I

    new-instance v0, Lcom/crittercism/internal/be;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/be;)V

    new-instance v1, Lcom/crittercism/internal/be$7;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/be$7;-><init>(Lcom/crittercism/internal/be;Lcom/crittercism/internal/be;)V

    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " no longer in progress. Ignoring setValue(int) call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Transaction no longer in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be$a;->e:Lcom/crittercism/internal/be$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b(Lcom/crittercism/internal/ax;)V
    .locals 8

    :try_start_0
    new-instance v1, Lcom/crittercism/internal/be;

    const-string/jumbo v0, "App Load"

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/String;)V

    sput-object v1, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/crittercism/internal/be;->n()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    sget-object v4, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    iput-object v4, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v2

    sub-long v4, v6, v4

    iput-wide v4, v0, Lcom/crittercism/internal/be;->h:J

    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    iput-wide v2, v0, Lcom/crittercism/internal/be;->m:J

    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    sget-object v2, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    sget-object v3, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    iget-object v3, v3, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bf;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    sget-object v2, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    sget-object v3, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcom/crittercism/internal/be;

    sget-object v2, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    invoke-direct {v0, v2}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/be;)V

    new-instance v2, Lcom/crittercism/internal/be$3;

    invoke-direct {v2, p0, v0}, Lcom/crittercism/internal/be$3;-><init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/be;)V

    sget-object v3, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    sget-object v2, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    iget-wide v4, v2, Lcom/crittercism/internal/be;->f:J

    invoke-direct {v0, v4, v5}, Lcom/crittercism/internal/be;->d(J)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/crittercism/internal/be$a;J)V
    .locals 4

    iput-object p1, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "txn state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    invoke-virtual {v1}, Lcom/crittercism/internal/be$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->i:J

    invoke-static {}, Lcom/crittercism/internal/be;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/crittercism/internal/be;->p:J

    iget-wide v2, p0, Lcom/crittercism/internal/be;->m:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/crittercism/internal/be;->j:J

    sub-long v0, p2, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/crittercism/internal/be;->j:J

    :cond_0
    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/crittercism/internal/be;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/be;)V

    new-instance v1, Lcom/crittercism/internal/be$6;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/be$6;-><init>(Lcom/crittercism/internal/be;Lcom/crittercism/internal/be;)V

    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    :try_start_1
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic b(Lcom/crittercism/internal/be;)V
    .locals 0

    invoke-direct {p0}, Lcom/crittercism/internal/be;->q()V

    return-void
.end method

.method static synthetic c(Lcom/crittercism/internal/be;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized c(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(J)V
    .locals 3

    invoke-static {}, Lcom/crittercism/internal/be;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/be;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crittercism/internal/be$5;

    invoke-direct {v1, p0}, Lcom/crittercism/internal/be$5;-><init>(Lcom/crittercism/internal/be;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/crittercism/internal/be;->r:Z

    return-void
.end method

.method public static g()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/crittercism/internal/be;->p:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    if-eqz v1, :cond_0

    sget-wide v2, Lcom/crittercism/internal/be;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    sget-object v1, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    monitor-enter v1

    :try_start_1
    sget-object v2, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    iget-wide v4, v2, Lcom/crittercism/internal/be;->j:J

    sget-wide v6, Lcom/crittercism/internal/be;->p:J

    sget-object v3, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    iget-wide v8, v3, Lcom/crittercism/internal/be;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/crittercism/internal/be;->j:J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    monitor-enter v0

    :try_start_2
    iget-object v2, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v3, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/crittercism/internal/be;->j:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/crittercism/internal/be;->d(J)V

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_2
    :try_start_5
    iget-object v2, v0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    if-nez v2, :cond_1

    iget-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    invoke-direct {v0, v2, v3}, Lcom/crittercism/internal/be;->d(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static h()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    invoke-virtual {v0}, Lcom/crittercism/internal/be;->b()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static i()V
    .locals 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

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

    :try_start_1
    iget-object v2, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v3, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    iget-object v3, v0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bf;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    invoke-direct {v0}, Lcom/crittercism/internal/be;->p()V

    iget-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    invoke-direct {v0, v2, v3}, Lcom/crittercism/internal/be;->d(J)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic k()Z
    .locals 1

    sget-boolean v0, Lcom/crittercism/internal/be;->r:Z

    return v0
.end method

.method static synthetic l()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    return-object v0
.end method

.method private static m()Z
    .locals 4

    sget-wide v0, Lcom/crittercism/internal/be;->p:J

    sget-wide v2, Lcom/crittercism/internal/be;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static n()J
    .locals 10

    const/4 v0, 0x1

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    new-array v1, v0, [J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/stat"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-class v4, Landroid/os/Process;

    const-string/jumbo v5, "readProcFile"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [I

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, [J

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, [F

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    sget-object v7, Lcom/crittercism/internal/be;->s:[I

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const/4 v7, 0x0

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const/4 v7, 0x0

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_0

    :cond_0
    aget-wide v0, v1, v9

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private declared-synchronized o()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->a:Lcom/crittercism/internal/be$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    iput-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->h:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->m:J

    sget-object v0, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bf;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/crittercism/internal/be;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/be;)V

    new-instance v1, Lcom/crittercism/internal/be$4;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/be$4;-><init>(Lcom/crittercism/internal/be;Lcom/crittercism/internal/be;)V

    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/be;->d(J)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " has already been started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Transaction has already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method private declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
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

.method private declared-synchronized q()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v3, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/crittercism/internal/be$a;->f:Lcom/crittercism/internal/be$a;

    invoke-direct {p0, v2, v0, v1}, Lcom/crittercism/internal/be;->b(Lcom/crittercism/internal/be$a;J)V
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

.method private declared-synchronized r()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/crittercism/internal/be;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/be;->o()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/crittercism/internal/be;->b(I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/crittercism/internal/be;->j()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a_()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/be;->r()I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/be;->a(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/be;->b(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/be;->c(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lorg/json/JSONArray;
    .locals 10

    const-wide v8, 0x408f400000000000L    # 1000.0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    invoke-virtual {v1}, Lcom/crittercism/internal/be$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    iget-wide v2, p0, Lcom/crittercism/internal/be;->f:J

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v1

    iget v0, p0, Lcom/crittercism/internal/be;->g:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/crittercism/internal/be;->h:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/eb;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/crittercism/internal/be;->i:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/eb;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    iget-wide v2, p0, Lcom/crittercism/internal/be;->j:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/crittercism/internal/be;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method
