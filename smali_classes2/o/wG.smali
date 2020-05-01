.class public Lo/wG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/wU;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z

.field private final c:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lo/xa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/wG;->d:Landroid/util/LongSparseArray;

    .line 22
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/wG;->c:Landroid/util/LongSparseArray;

    .line 32
    iput-object p1, p0, Lo/wG;->a:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/upstream/DataSpec;JJ)V
    .locals 7

    .line 77
    iget-boolean v0, p0, Lo/wG;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lo/wG;->d(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lo/xa;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 82
    invoke-virtual/range {v1 .. v6}, Lo/xa;->c(Lcom/google/android/exoplayer2/upstream/DataSpec;JJ)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lo/wG;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/wG;->e(J)V

    return-void
.end method

.method static synthetic a(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/wG;->c(Lcom/google/android/exoplayer2/upstream/DataSpec;J)V

    return-void
.end method

.method static synthetic a(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/wG;->d(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;J)V

    return-void
.end method

.method private synthetic b(JLo/xa;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lo/wG;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lo/wG;JLo/xa;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/wG;->b(JLo/xa;)V

    return-void
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/upstream/DataSpec;J)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lo/wG;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lo/wG;->d(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lo/xa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0, p1, p2, p3}, Lo/xa;->e(Lcom/google/android/exoplayer2/upstream/DataSpec;J)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lo/wG;Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/wG;->e(Lorg/chromium/net/RequestFinishedInfo;)V

    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lo/xa;
    .locals 2

    .line 126
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Lo/ud;->c(Ljava/lang/String;)Lo/ud$ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 128
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "nf_playreport"

    const-string v1, "unable to find cache key parts for %s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1

    .line 132
    :cond_0
    iget-object p1, p0, Lo/wG;->d:Landroid/util/LongSparseArray;

    iget-wide v0, v0, Lo/ud$ActionBar;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/xa;

    return-object p1
.end method

.method private synthetic d(J)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/wG;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 44
    iget-object v0, p0, Lo/wG;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 45
    iget-object p1, p0, Lo/wG;->c:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/wG;->b:Z

    return-void
.end method

.method private synthetic d(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;J)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lo/wG;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lo/wG;->d(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lo/xa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/xa;->e(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;J)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lo/wG;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/wG;->d(J)V

    return-void
.end method

.method private synthetic e(J)V
    .locals 3

    .line 51
    iget-object v0, p0, Lo/wG;->c:Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 52
    iput-boolean v1, p0, Lo/wG;->b:Z

    .line 53
    iget-object v0, p0, Lo/wG;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/xa;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lo/xa;->b()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/wG;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;JJ)V

    return-void
.end method

.method private synthetic e(Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 3

    .line 106
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 107
    instance-of v2, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eqz v2, :cond_0

    .line 108
    check-cast v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "nf_playreport"

    const-string v1, "unable to find dataspec for %s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 117
    :cond_2
    invoke-direct {p0, v1}, Lo/wG;->d(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lo/xa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {v0, p1, v1}, Lo/xa;->b(Lorg/chromium/net/RequestFinishedInfo;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 4

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 62
    iget-object v2, p0, Lo/wG;->a:Landroid/os/Handler;

    new-instance v3, Lo/wF;

    invoke-direct {v3, p0, p1, v0, v1}, Lo/wF;-><init>(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lo/wG;->a:Landroid/os/Handler;

    new-instance v1, Lo/wO;

    invoke-direct {v1, p0, p1}, Lo/wO;-><init>(Lo/wG;Lorg/chromium/net/RequestFinishedInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 50
    iget-object v0, p0, Lo/wG;->a:Landroid/os/Handler;

    new-instance v1, Lo/wI;

    invoke-direct {v1, p0, p1, p2}, Lo/wI;-><init>(Lo/wG;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/DataSpec;J)V
    .locals 9

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 76
    iget-object v7, p0, Lo/wG;->a:Landroid/os/Handler;

    new-instance v8, Lo/wL;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lo/wL;-><init>(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(J)V
    .locals 2

    .line 42
    iget-object v0, p0, Lo/wG;->a:Landroid/os/Handler;

    new-instance v1, Lo/wJ;

    invoke-direct {v1, p0, p1, p2}, Lo/wJ;-><init>(Lo/wG;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(JLo/wU$ActionBar;)Lo/xa;
    .locals 2

    .line 36
    new-instance v0, Lo/xa;

    invoke-direct {v0, p1, p2, p3}, Lo/xa;-><init>(JLo/wU$ActionBar;)V

    .line 37
    iget-object p3, p0, Lo/wG;->a:Landroid/os/Handler;

    new-instance v1, Lo/wH;

    invoke-direct {v1, p0, p1, p2, v0}, Lo/wH;-><init>(Lo/wG;JLo/xa;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;)V
    .locals 8

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 90
    iget-object v6, p0, Lo/wG;->a:Landroid/os/Handler;

    new-instance v7, Lo/wN;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lo/wN;-><init>(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;J)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
