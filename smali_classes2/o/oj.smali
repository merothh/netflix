.class public Lo/oj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ou$Activity;


# static fields
.field private static final m:I

.field private static final o:[J


# instance fields
.field private final a:Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

.field private final b:Lo/FragmentHostCallback;

.field private final c:Lo/ol;

.field private final d:Lo/om;

.field private final e:Ljava/io/File;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/os/Handler;

.field private final h:Lo/oh;

.field private i:Lo/ou;

.field private final j:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field private k:I

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ok;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private final r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 58
    fill-array-data v0, :array_0

    sput-object v0, Lo/oj;->o:[J

    .line 59
    sget-object v0, Lo/oj;->o:[J

    array-length v0, v0

    sput v0, Lo/oj;->m:I

    return-void

    :array_0
    .array-data 8
        0x7530
        0xea60
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lo/op;Lo/om;Ljava/io/File;Lo/FragmentHostCallback;Lo/oq;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lo/ol;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lo/oj$2;

    invoke-direct {v0, p0}, Lo/oj$2;-><init>(Lo/oj;)V

    iput-object v0, p0, Lo/oj;->r:Ljava/lang/Runnable;

    .line 77
    iput-object p1, p0, Lo/oj;->f:Landroid/content/Context;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/oj;->g:Landroid/os/Handler;

    .line 79
    iput-object p3, p0, Lo/oj;->a:Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 80
    iput-object p5, p0, Lo/oj;->d:Lo/om;

    .line 81
    iput-object p6, p0, Lo/oj;->e:Ljava/io/File;

    .line 82
    iput-object p7, p0, Lo/oj;->b:Lo/FragmentHostCallback;

    .line 83
    iput-object p10, p0, Lo/oj;->c:Lo/ol;

    .line 84
    iget-object p1, p0, Lo/oj;->d:Lo/om;

    iget-object p2, p0, Lo/oj;->e:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    iput-wide p2, p1, Lo/om;->b:J

    .line 85
    invoke-interface {p4}, Lo/op;->a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object p1

    iput-object p1, p0, Lo/oj;->j:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 88
    invoke-interface {p4}, Lo/op;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/oj;->l:Ljava/util/List;

    .line 89
    iget-object p1, p0, Lo/oj;->l:Ljava/util/List;

    invoke-static {p1}, Lo/ok;->d(Ljava/util/List;)V

    .line 90
    new-instance p1, Lo/oh;

    iget-object p2, p0, Lo/oj;->f:Landroid/content/Context;

    iget-object p3, p0, Lo/oj;->e:Ljava/io/File;

    invoke-direct {p1, p2, p8, p9, p3}, Lo/oh;-><init>(Landroid/content/Context;Lo/oq;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/io/File;)V

    iput-object p1, p0, Lo/oj;->h:Lo/oh;

    return-void
.end method

.method static synthetic a(Lo/oj;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/oj;->f()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    .line 256
    iget-object v0, p0, Lo/oj;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 257
    new-instance v0, Lo/ou;

    iget-object v4, p0, Lo/oj;->e:Ljava/io/File;

    iget-object v5, p0, Lo/oj;->j:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    sget-object v6, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    move-object v2, v0

    move-object v3, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lo/ou;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;Lcom/android/volley/Request$Priority;Lo/ou$Activity;)V

    iput-object v0, p0, Lo/oj;->i:Lo/ou;

    .line 258
    iget-object p1, p0, Lo/oj;->i:Lo/ou;

    iget-object v0, p0, Lo/oj;->b:Lo/FragmentHostCallback;

    invoke-virtual {p1, v0}, Lo/ou;->b(Lo/FragmentHostCallback;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 234
    iget v0, p0, Lo/oj;->k:I

    iget-object v1, p0, Lo/oj;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lo/oj;->l:Ljava/util/List;

    iget v1, p0, Lo/oj;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ok;

    .line 239
    iget-object v0, v0, Lo/ok;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/oj;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lo/oj;->c:Lo/ol;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aQ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lo/ol;->e(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 246
    iget-object v0, p0, Lo/oj;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lo/oj;->i:Lo/ou;

    if-eqz v0, :cond_0

    const-string v0, "nf_cdnUrlDownloader"

    const-string v2, "doStopDownload"

    .line 248
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lo/oj;->h:Lo/oh;

    iget-object v2, p0, Lo/oj;->d:Lo/om;

    iget-wide v2, v2, Lo/om;->b:J

    invoke-virtual {v0, v2, v3}, Lo/oh;->c(J)V

    .line 250
    iget-object v0, p0, Lo/oj;->i:Lo/ou;

    invoke-virtual {v0}, Lo/ou;->l()V

    .line 251
    iput-object v1, p0, Lo/oj;->i:Lo/ou;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    .line 213
    iget v0, p0, Lo/oj;->k:I

    if-nez v0, :cond_0

    iget v0, p0, Lo/oj;->n:I

    sget v1, Lo/oj;->m:I

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lo/oj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lo/oj;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lo/oj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lo/oj;->r:Ljava/lang/Runnable;

    sget-object v2, Lo/oj;->o:[J

    iget v3, p0, Lo/oj;->n:I

    aget-wide v3, v2, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    iget v0, p0, Lo/oj;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/oj;->n:I

    goto :goto_0

    .line 222
    :cond_0
    iget v0, p0, Lo/oj;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/oj;->k:I

    .line 223
    iget v0, p0, Lo/oj;->k:I

    iget-object v1, p0, Lo/oj;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lo/oj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lo/oj;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v0, p0, Lo/oj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lo/oj;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "nf_cdnUrlDownloader"

    const-string v1, "onCdnRetryRunnable all CDN URL exhausted"

    .line 227
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lo/oj;->c:Lo/ol;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aQ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lo/ol;->e(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lo/oj;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(J)V
    .locals 5

    .line 188
    iget-object v0, p0, Lo/oj;->d:Lo/om;

    iget-wide v0, v0, Lo/om;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 189
    iget-object p1, p0, Lo/oj;->a:Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    iget-wide p1, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mSizeOfDownloadable:J

    .line 197
    :cond_0
    iget p1, p0, Lo/oj;->k:I

    if-ltz p1, :cond_1

    iget-object p2, p0, Lo/oj;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 198
    iget-object p1, p0, Lo/oj;->h:Lo/oh;

    iget-object p2, p0, Lo/oj;->l:Ljava/util/List;

    iget v0, p0, Lo/oj;->k:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ok;

    iget-object v0, p0, Lo/oj;->d:Lo/om;

    iget-wide v0, v0, Lo/om;->b:J

    invoke-virtual {p1, p2, v0, v1}, Lo/oh;->a(Lo/ok;J)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lo/oj;->a:Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/oj;->i:Lo/ou;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lo/oj;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lo/oj;->a:Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    iget-wide v2, v2, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mSizeOfDownloadable:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-string v0, "nf_cdnUrlDownloader"

    const-string v1, "onUrlDownloadSessionEnd download finished."

    .line 107
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lo/oj;->a:Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    .line 109
    iget-object v0, p0, Lo/oj;->h:Lo/oh;

    iget-object v1, p0, Lo/oj;->d:Lo/om;

    iget-wide v1, v1, Lo/om;->b:J

    invoke-virtual {v0, v1, v2}, Lo/oh;->b(J)V

    goto :goto_0

    :cond_0
    const-string v0, "nf_cdnUrlDownloader"

    const-string v1, "onUrlDownloadSessionEnd not finished yet."

    .line 111
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    iget-object v0, p0, Lo/oj;->c:Lo/ol;

    invoke-interface {v0, p0}, Lo/ol;->e(Lo/oj;)V

    .line 114
    invoke-direct {p0}, Lo/oj;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/android/volley/VolleyError;)V
    .locals 5

    monitor-enter p0

    const/4 v0, -0x1

    .line 135
    :try_start_0
    iget-object v1, p1, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p1, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget v0, v0, Lo/ExitTransitionCoordinator;->d:I

    .line 141
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cd:Lcom/netflix/mediaclient/StatusCode;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lo/aeK;->b(Lcom/android/volley/VolleyError;Lo/zz;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object p1

    .line 143
    invoke-direct {p0}, Lo/oj;->i()V

    .line 145
    iget-object v1, p0, Lo/oj;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    invoke-static {v0}, Lo/ph;->c(I)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const-string v1, "nf_cdnUrlDownloader"

    const-string v2, "cdnUrlExpiredOrMoved httpStatusCode=%d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v2, v4}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    iget-object v0, p0, Lo/oj;->c:Lo/ol;

    invoke-interface {v0, p0, p1}, Lo/ol;->c(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    :try_start_1
    invoke-static {v0}, Lo/ph;->d(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "nf_cdnUrlDownloader"

    const-string v2, "isCdnUrlGeoCheckError httpStatusCode=%d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v2, v4}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    iget-object v0, p0, Lo/oj;->c:Lo/ol;

    invoke-interface {v0, p0, p1}, Lo/ol;->a(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :cond_2
    const/16 p1, 0x1a0

    if-ne v0, p1, :cond_3

    .line 156
    :try_start_2
    invoke-direct {p0}, Lo/oj;->i()V

    .line 157
    iget-object p1, p0, Lo/oj;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 161
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "http 416 error"

    invoke-interface {p1, v0, v2}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :cond_3
    invoke-direct {p0}, Lo/oj;->j()V

    goto :goto_0

    :cond_4
    const-string v0, "nf_cdnUrlDownloader"

    const-string v1, "onNetworkError lost connectivity.. not trying next CDN url."

    .line 166
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lo/oj;->c:Lo/ol;

    invoke-interface {v0, p0, p1}, Lo/ol;->e(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Lo/ou;)V
    .locals 3

    .line 180
    iget-object v0, p0, Lo/oj;->d:Lo/om;

    invoke-virtual {p1}, Lo/ou;->M()J

    move-result-wide v1

    iput-wide v1, v0, Lo/om;->b:J

    return-void
.end method

.method public d()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lo/oj;->a:Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    return v0
.end method

.method public declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_cdnUrlDownloader"

    const-string v1, "startDownload"

    .line 94
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lo/oj;->d:Lo/om;

    iget-object v1, p0, Lo/oj;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lo/om;->b:J

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lo/oj;->k:I

    .line 98
    iput v0, p0, Lo/oj;->n:I

    .line 99
    iget-object v1, p0, Lo/oj;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ok;

    iget-object v0, v0, Lo/ok;->b:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lo/oj;->i()V

    .line 101
    invoke-direct {p0, v0}, Lo/oj;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lo/oj;->a:Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_cdnUrlDownloader"

    const-string v1, "onUrlDownloadDiskIOError"

    .line 173
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lo/oj;->i()V

    .line 175
    iget-object v0, p0, Lo/oj;->c:Lo/ol;

    invoke-interface {v0, p0}, Lo/ol;->b(Lo/oj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
