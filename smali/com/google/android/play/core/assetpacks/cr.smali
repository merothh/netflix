.class final Lcom/google/android/play/core/assetpacks/cr;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/play/core/internal/aa;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/bb;

.field private final c:Lcom/google/android/play/core/internal/ce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ce<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/play/core/assetpacks/cb;

.field private final e:Lcom/google/android/play/core/internal/ce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ce<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/play/core/assetpacks/co;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/aa;

    const-string v1, "ExtractorSessionStoreView"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/aa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/cr;->a:Lcom/google/android/play/core/internal/aa;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/internal/ce;Lcom/google/android/play/core/assetpacks/cb;Lcom/google/android/play/core/internal/ce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/bb;",
            "Lcom/google/android/play/core/internal/ce<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/cb;",
            "Lcom/google/android/play/core/internal/ce<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cr;->b:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cr;->c:Lcom/google/android/play/core/internal/ce;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/cr;->d:Lcom/google/android/play/core/assetpacks/cb;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/cr;->e:Lcom/google/android/play/core/internal/ce;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cr;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private final a(Lcom/google/android/play/core/assetpacks/cq;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/assetpacks/cq<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/cr;->a()V

    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/cq;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/cr;->b()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/cr;->b()V

    throw p1
.end method

.method private final d(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/co;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/assetpacks/ch;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/ch;-><init>(Lcom/google/android/play/core/assetpacks/cr;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/cr;->a(Lcom/google/android/play/core/assetpacks/cq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private final e(I)Lcom/google/android/play/core/assetpacks/co;
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cr;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/co;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/by;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Could not find session %d while trying to get it"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/by;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static e(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pack_names"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/play/core/assetpacks/by;

    const-string v0, "Session without pack received."

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/by;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static e(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method final a(I)V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/cj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/cj;-><init>(Lcom/google/android/play/core/assetpacks/cr;I)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/cr;->a(Lcom/google/android/play/core/assetpacks/cq;)Ljava/lang/Object;

    return-void
.end method

.method final a(Ljava/lang/String;IJ)V
    .locals 7

    new-instance v6, Lcom/google/android/play/core/assetpacks/cg;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/cg;-><init>(Lcom/google/android/play/core/assetpacks/cr;Ljava/lang/String;IJ)V

    invoke-direct {p0, v6}, Lcom/google/android/play/core/assetpacks/cr;->a(Lcom/google/android/play/core/assetpacks/cq;)Ljava/lang/Object;

    return-void
.end method

.method final a(Landroid/os/Bundle;)Z
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/ce;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/ce;-><init>(Lcom/google/android/play/core/assetpacks/cr;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/cr;->a(Lcom/google/android/play/core/assetpacks/cq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method final synthetic b(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/cr;->e(I)Lcom/google/android/play/core/assetpacks/co;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    const/4 v0, 0x5

    iput v0, p1, Lcom/google/android/play/core/assetpacks/cn;->c:I

    return-void
.end method

.method final synthetic b(Ljava/lang/String;IJ)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/play/core/assetpacks/cr;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/co;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/cn;->c:I

    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/dd;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    sget-object v3, Lcom/google/android/play/core/assetpacks/cr;->a:Lcom/google/android/play/core/internal/aa;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v4, "Could not find pack %s while trying to complete it"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/play/core/internal/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cr;->b:Lcom/google/android/play/core/assetpacks/bb;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/bb;->f(Ljava/lang/String;IJ)V

    iget-object p1, v1, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    const/4 p2, 0x4

    iput p2, p1, Lcom/google/android/play/core/assetpacks/cn;->c:I

    return-void
.end method

.method final b(Landroid/os/Bundle;)Z
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/cf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/cf;-><init>(Lcom/google/android/play/core/assetpacks/cr;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/cr;->a(Lcom/google/android/play/core/assetpacks/cq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method final synthetic c(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/cr;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/cr;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/co;

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget v2, v2, Lcom/google/android/play/core/assetpacks/cn;->c:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/cr;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-static {v3, v2}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/cn;->c:I

    invoke-static {v0, p1}, Lcom/google/android/play/core/assetpacks/dd;->a(II)Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_0
.end method

.method final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/play/core/assetpacks/co;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cr;->f:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic c(Ljava/util/List;)Ljava/util/Map;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cr;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/co;

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/co;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/google/android/play/core/assetpacks/co;->a:I

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    iget v5, v2, Lcom/google/android/play/core/assetpacks/co;->a:I

    if-ge v4, v5, :cond_0

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method final synthetic c(I)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/cr;->e(I)Lcom/google/android/play/core/assetpacks/co;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/cn;->c:I

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/dd;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/cr;->b:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/play/core/assetpacks/co;->b:I

    iget-wide v4, v1, Lcom/google/android/play/core/assetpacks/cn;->b:J

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/bb;->f(Ljava/lang/String;IJ)V

    iget-object p1, v0, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget v0, p1, Lcom/google/android/play/core/assetpacks/cn;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cr;->b:Lcom/google/android/play/core/assetpacks/bb;

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/bb;->d(Ljava/lang/String;)Z

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/by;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Could not safely delete session %d because it is not in a terminal state."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/by;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final synthetic d(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "session_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v4, v0, Lcom/google/android/play/core/assetpacks/cr;->f:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "chunk_intents"

    const-string v7, "status"

    const/4 v8, 0x1

    if-eqz v4, :cond_8

    invoke-direct {v0, v2}, Lcom/google/android/play/core/assetpacks/cr;->e(I)Lcom/google/android/play/core/assetpacks/co;

    move-result-object v4

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget v9, v9, Lcom/google/android/play/core/assetpacks/cn;->c:I

    invoke-static {v9, v7}, Lcom/google/android/play/core/assetpacks/dd;->a(II)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v1, Lcom/google/android/play/core/assetpacks/cr;->a:Lcom/google/android/play/core/internal/aa;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget v5, v5, Lcom/google/android/play/core/assetpacks/cn;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    const-string v5, "Found stale update for session %s with status %d."

    invoke-virtual {v1, v5, v6}, Lcom/google/android/play/core/internal/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/cn;->c:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/cr;->c:Lcom/google/android/play/core/internal/ce;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/ce;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/w;

    invoke-interface {v1, v2, v4}, Lcom/google/android/play/core/assetpacks/w;->a(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    const/4 v5, 0x5

    if-ne v1, v5, :cond_2

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/cr;->c:Lcom/google/android/play/core/internal/ce;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/ce;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/w;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/w;->a(I)V

    goto/16 :goto_6

    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/cr;->c:Lcom/google/android/play/core/internal/ce;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/ce;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/w;

    new-array v2, v8, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/util/List;)V

    goto/16 :goto_6

    :cond_3
    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iput v7, v5, Lcom/google/android/play/core/assetpacks/cn;->c:I

    invoke-static {v7}, Lcom/google/android/play/core/assetpacks/dd;->b(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/cr;->a(I)V

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/cr;->d:Lcom/google/android/play/core/assetpacks/cb;

    iget-object v2, v4, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/cb;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    iget-object v2, v4, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/cn;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_d

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/play/core/assetpacks/cp;

    iget-object v10, v4, Lcom/google/android/play/core/assetpacks/co;->c:Lcom/google/android/play/core/assetpacks/cn;

    iget-object v10, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    iget-object v11, v9, Lcom/google/android/play/core/assetpacks/cp;->a:Ljava/lang/String;

    invoke-static {v6, v10, v11}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v12, v9, Lcom/google/android/play/core/assetpacks/cp;->d:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/play/core/assetpacks/cm;

    iput-boolean v8, v12, Lcom/google/android/play/core/assetpacks/cm;->a:Z

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/cr;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "pack_version"

    invoke-static {v4, v10}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v7, v10}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v4, "total_bytes_to_download"

    invoke-static {v4, v10}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v4, "slice_ids"

    invoke-static {v4, v10}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/cr;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v10, v7}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Lcom/google/android/play/core/assetpacks/cr;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Intent;

    move-object/from16 v24, v4

    if-eqz v16, :cond_9

    const/4 v3, 0x1

    :cond_9
    new-instance v4, Lcom/google/android/play/core/assetpacks/cm;

    invoke-direct {v4, v3}, Lcom/google/android/play/core/assetpacks/cm;-><init>(Z)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v24

    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v24, v4

    const-string v3, "uncompressed_hash_sha256"

    invoke-static {v3, v10, v7}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v3, "uncompressed_size"

    invoke-static {v3, v10, v7}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    const-string v3, "patch_format"

    invoke-static {v3, v10, v7}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_b

    const-string v3, "compression_format"

    invoke-static {v3, v10, v7}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    new-instance v3, Lcom/google/android/play/core/assetpacks/cp;

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v23}, Lcom/google/android/play/core/assetpacks/cp;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    goto :goto_5

    :cond_b
    new-instance v3, Lcom/google/android/play/core/assetpacks/cp;

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v23}, Lcom/google/android/play/core/assetpacks/cp;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    :goto_5
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v24

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_c
    new-instance v3, Lcom/google/android/play/core/assetpacks/cn;

    move-object v9, v3

    move-object/from16 v16, v5

    invoke-direct/range {v9 .. v16}, Lcom/google/android/play/core/assetpacks/cn;-><init>(Ljava/lang/String;JIJLjava/util/List;)V

    new-instance v4, Lcom/google/android/play/core/assetpacks/co;

    const-string v5, "app_version_code"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v4, v2, v1, v3}, Lcom/google/android/play/core/assetpacks/co;-><init>(IILcom/google/android/play/core/assetpacks/cn;)V

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/cr;->f:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_6
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method final d(I)V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/ci;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/ci;-><init>(Lcom/google/android/play/core/assetpacks/cr;I)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/cr;->a(Lcom/google/android/play/core/assetpacks/cq;)Ljava/lang/Object;

    return-void
.end method
