.class public Lo/FragmentHostCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FragmentHostCallback$Application;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/android/volley/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lo/DownloadManager;

.field private final g:Lo/ContextImpl;

.field private h:[Lo/FragmentBreadCrumbs;

.field private final i:Lo/FragmentState;

.field private j:Lo/DexLoadReporter;

.field private final l:Lo/EnterTransitionCoordinator;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ContextImpl;Lo/DownloadManager;ILjava/lang/String;)V
    .locals 6

    .line 140
    new-instance v4, Lo/DatePickerDialog;

    new-instance v0, Landroid/os/Handler;

    .line 141
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, v0}, Lo/DatePickerDialog;-><init>(Landroid/os/Handler;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 140
    invoke-direct/range {v0 .. v5}, Lo/FragmentHostCallback;-><init>(Lo/ContextImpl;Lo/DownloadManager;ILo/FragmentState;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/ContextImpl;Lo/DownloadManager;ILo/FragmentState;Ljava/lang/String;)V
    .locals 7

    .line 106
    new-instance v6, Lo/EnterTransitionCoordinator;

    invoke-direct {v6}, Lo/EnterTransitionCoordinator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lo/FragmentHostCallback;-><init>(Lo/ContextImpl;Lo/DownloadManager;ILo/FragmentState;Ljava/lang/String;Lo/EnterTransitionCoordinator;)V

    return-void
.end method

.method public constructor <init>(Lo/ContextImpl;Lo/DownloadManager;ILo/FragmentState;Ljava/lang/String;Lo/EnterTransitionCoordinator;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/FragmentHostCallback;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/FragmentHostCallback;->e:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lo/FragmentHostCallback;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 70
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lo/FragmentHostCallback;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 120
    iput-object p1, p0, Lo/FragmentHostCallback;->g:Lo/ContextImpl;

    .line 121
    iput-object p2, p0, Lo/FragmentHostCallback;->f:Lo/DownloadManager;

    .line 122
    new-array p1, p3, [Lo/FragmentBreadCrumbs;

    iput-object p1, p0, Lo/FragmentHostCallback;->h:[Lo/FragmentBreadCrumbs;

    .line 123
    iput-object p4, p0, Lo/FragmentHostCallback;->i:Lo/FragmentState;

    .line 124
    iput-object p5, p0, Lo/FragmentHostCallback;->n:Ljava/lang/String;

    if-nez p6, :cond_0

    .line 126
    new-instance p1, Lo/EnterTransitionCoordinator;

    invoke-direct {p1}, Lo/EnterTransitionCoordinator;-><init>()V

    iput-object p1, p0, Lo/FragmentHostCallback;->l:Lo/EnterTransitionCoordinator;

    goto :goto_0

    .line 128
    :cond_0
    iput-object p6, p0, Lo/FragmentHostCallback;->l:Lo/EnterTransitionCoordinator;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lo/ContextImpl;Lo/DownloadManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 151
    invoke-direct {p0, p1, p2, v0, p3}, Lo/FragmentHostCallback;-><init>(Lo/ContextImpl;Lo/DownloadManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 4

    .line 261
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->a(Lo/FragmentHostCallback;)V

    .line 262
    iget-object v0, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    invoke-virtual {p0}, Lo/FragmentHostCallback;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->b(I)V

    const-string v0, "add-to-queue"

    .line 268
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcom/android/volley/Request;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lo/FragmentHostCallback;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 277
    :cond_0
    iget-object v1, p0, Lo/FragmentHostCallback;->e:Ljava/util/Map;

    monitor-enter v1

    .line 278
    :try_start_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->n()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v2, p0, Lo/FragmentHostCallback;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    iget-object v2, p0, Lo/FragmentHostCallback;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    if-nez v2, :cond_1

    .line 283
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 285
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v3, p0, Lo/FragmentHostCallback;->e:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 293
    :cond_2
    iget-object v2, p0, Lo/FragmentHostCallback;->e:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lo/FragmentHostCallback;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 296
    :goto_0
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 297
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 264
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a()V
    .locals 9

    .line 158
    invoke-virtual {p0}, Lo/FragmentHostCallback;->d()V

    .line 160
    new-instance v0, Lo/DexLoadReporter;

    iget-object v1, p0, Lo/FragmentHostCallback;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lo/FragmentHostCallback;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lo/FragmentHostCallback;->g:Lo/ContextImpl;

    iget-object v4, p0, Lo/FragmentHostCallback;->i:Lo/FragmentState;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/DexLoadReporter;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lo/ContextImpl;Lo/FragmentState;)V

    iput-object v0, p0, Lo/FragmentHostCallback;->j:Lo/DexLoadReporter;

    .line 161
    iget-object v0, p0, Lo/FragmentHostCallback;->j:Lo/DexLoadReporter;

    invoke-virtual {v0}, Lo/DexLoadReporter;->start()V

    .line 165
    iget-object v0, p0, Lo/FragmentHostCallback;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/FragmentHostCallback;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    .line 171
    :goto_1
    iget-object v2, p0, Lo/FragmentHostCallback;->h:[Lo/FragmentBreadCrumbs;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 172
    iget-object v3, p0, Lo/FragmentHostCallback;->l:Lo/EnterTransitionCoordinator;

    iget-object v4, p0, Lo/FragmentHostCallback;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lo/FragmentHostCallback;->f:Lo/DownloadManager;

    iget-object v6, p0, Lo/FragmentHostCallback;->g:Lo/ContextImpl;

    iget-object v7, p0, Lo/FragmentHostCallback;->i:Lo/FragmentState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lo/EnterTransitionCoordinator;->a(Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)Lo/FragmentBreadCrumbs;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lo/FragmentHostCallback;->h:[Lo/FragmentBreadCrumbs;

    aput-object v2, v3, v1

    .line 175
    invoke-interface {v2}, Lo/FragmentBreadCrumbs;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lo/FragmentHostCallback$Application;)V
    .locals 7

    .line 227
    iget-object v0, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    monitor-enter v0

    .line 228
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;

    .line 230
    invoke-interface {p1, v2}, Lo/FragmentHostCallback$Application;->c(Lcom/android/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Cancelling req %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 231
    invoke-virtual {v2}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lo/FragmentContainer;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v2}, Lcom/android/volley/Request;->l()V

    goto :goto_0

    .line 235
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/android/volley/Request;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    invoke-virtual {p1}, Lcom/android/volley/Request;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lo/FragmentHostCallback;->e:Ljava/util/Map;

    monitor-enter v0

    .line 315
    :try_start_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->n()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v1, p0, Lo/FragmentHostCallback;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    if-eqz p1, :cond_0

    .line 324
    iget-object v1, p0, Lo/FragmentHostCallback;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 326
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 311
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c()Lo/ContextImpl;
    .locals 1

    .line 204
    iget-object v0, p0, Lo/FragmentHostCallback;->g:Lo/ContextImpl;

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 183
    iget-object v0, p0, Lo/FragmentHostCallback;->j:Lo/DexLoadReporter;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lo/DexLoadReporter;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    iget-object v1, p0, Lo/FragmentHostCallback;->h:[Lo/FragmentBreadCrumbs;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 187
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 188
    aget-object v1, v1, v0

    invoke-interface {v1}, Lo/FragmentBreadCrumbs;->e()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e()I
    .locals 1

    .line 197
    iget-object v0, p0, Lo/FragmentHostCallback;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public e(Lcom/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request;",
            ")V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lo/FragmentHostCallback;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lo/FragmentHostCallback;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 210
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 246
    new-instance v0, Lo/FragmentHostCallback$2;

    invoke-direct {v0, p0, p1}, Lo/FragmentHostCallback$2;-><init>(Lo/FragmentHostCallback;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/FragmentHostCallback;->a(Lo/FragmentHostCallback$Application;)V

    return-void

    .line 244
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
