.class public Lo/ua;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ua$ActionBar;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ua;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final e:Landroid/os/ConditionVariable;

.field private final f:Ljava/io/File;

.field private final g:Lo/tW;

.field private final h:Landroid/os/Looper;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Landroid/os/Handler;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/ua;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;ILo/tW;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/ua;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    iput-object p3, p0, Lo/ua;->b:Ljava/lang/String;

    .line 78
    iput p4, p0, Lo/ua;->k:I

    .line 79
    iput p7, p0, Lo/ua;->a:I

    .line 80
    iput-object p2, p0, Lo/ua;->h:Landroid/os/Looper;

    .line 81
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lo/ua;->j:Landroid/os/Handler;

    .line 82
    iput-object p8, p0, Lo/ua;->g:Lo/tW;

    .line 83
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lo/ua;->f:Ljava/io/File;

    .line 84
    new-instance p1, Lo/ub;

    invoke-direct {p1, p0, p6}, Lo/ub;-><init>(Lo/ua;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    .line 89
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p2, p0, Lo/ua;->j:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lo/ua;)Lo/tW;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/ua;->g:Lo/tW;

    return-object p0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;IILo/tW;)Lo/ua;
    .locals 12

    move-object v0, p1

    const-class v10, Lo/ua;

    monitor-enter v10

    .line 56
    :try_start_0
    sget-object v1, Lo/ua;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    move v8, p3

    int-to-long v2, v8

    invoke-direct {v7, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    .line 60
    new-instance v11, Lo/ua;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v1, v11

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    move v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lo/ua;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;ILo/tW;)V

    .line 61
    sget-object v1, Lo/ua;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    sget-object v1, Lo/ua;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ua;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "session/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lo/adE;->d(Ljava/io/File;)Z

    return-void
.end method

.method static synthetic b(Lo/ua;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/ua;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V
    .locals 3

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    iget-object v1, p0, Lo/ua;->f:Ljava/io/File;

    new-instance v2, Lo/ua$ActionBar;

    invoke-direct {v2, p0, p1}, Lo/ua$ActionBar;-><init>(Lo/ua;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    iput-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 86
    iget-object p1, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method static synthetic c(Lo/ua;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ua;->c(Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    return-void
.end method

.method static d(Landroid/content/Context;Landroid/os/Looper;I)Lo/ua;
    .locals 10

    if-lez p2, :cond_0

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/NoOpCacheEvictor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/NoOpCacheEvictor;-><init>()V

    :goto_0
    move-object v7, v0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    new-instance v0, Lo/ua;

    const/high16 v5, 0x80000

    const/4 v9, 0x0

    const-string v4, "session"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lo/ua;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;ILo/tW;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 249
    iget v0, p0, Lo/ua;->k:I

    return v0
.end method

.method public a(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v1, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    invoke-static {v2, p1, p2}, Lo/ud;->a(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-static {v2}, Lo/ud;->c(Ljava/lang/String;)Lo/ud$ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, v2, Lo/ud$ActionBar;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lo/ua;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 253
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 255
    iget-object v0, p0, Lo/ua;->f:Ljava/io/File;

    invoke-static {v0}, Lo/adE;->d(Ljava/io/File;)Z

    return-void
.end method

.method public commitFile(Ljava/io/File;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 155
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->commitFile(Ljava/io/File;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 245
    iget v0, p0, Lo/ua;->a:I

    return v0
.end method

.method public d(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v1, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    invoke-static {v2, v4}, Lo/ud;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public e()Landroid/os/Looper;
    .locals 1

    .line 241
    iget-object v0, p0, Lo/ua;->h:Landroid/os/Looper;

    return-object v0
.end method

.method public getCacheSpace()J
    .locals 2

    .line 125
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 127
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 113
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public getContentLength(Ljava/lang/String;)J
    .locals 2

    .line 195
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 197
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 120
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 264
    iget-object v0, p0, Lo/ua;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 162
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method public removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 169
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method public setContentLength(Ljava/lang/String;J)V
    .locals 1

    .line 188
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 190
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->setContentLength(Ljava/lang/String;J)V

    return-void
.end method

.method public startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 7

    .line 146
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 148
    iget-object v1, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startFile(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 134
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object p1

    return-object p1
.end method

.method public startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/ua;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 141
    iget-object v0, p0, Lo/ua;->c:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object p1

    return-object p1
.end method
