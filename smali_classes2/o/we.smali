.class public Lo/we;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/vY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/we$StateListAnimator;,
        Lo/we$TaskDescription;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/Executor;

.field private static e:Lorg/chromium/net/ExperimentalCronetEngine;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Lo/we$5;

    invoke-direct {v0}, Lo/we$5;-><init>()V

    sput-object v0, Lo/we;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lo/we;->a:Landroid/content/Context;

    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lo/we;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lo/we;->e:Lorg/chromium/net/ExperimentalCronetEngine;

    if-nez v1, :cond_1

    .line 62
    sget-object v1, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v2, Lo/we$StateListAnimator;

    invoke-virtual {v1, p0, v2}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/we$StateListAnimator;

    .line 63
    invoke-interface {v1}, Lo/we$StateListAnimator;->n()Lo/agc;

    move-result-object v1

    invoke-interface {v1}, Lo/agc;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Lo/T$TaskDescription;

    invoke-direct {v1, p0}, Lo/T$TaskDescription;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v1, v2}, Lo/T$TaskDescription;->enableHttp2(Z)Lorg/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;->build()Lorg/chromium/net/ExperimentalCronetEngine;

    move-result-object p0

    sput-object p0, Lo/we;->e:Lorg/chromium/net/ExperimentalCronetEngine;

    goto :goto_0

    .line 68
    :cond_0
    new-instance v1, Lorg/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-direct {v1, p0}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v1, v2}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;->build()Lorg/chromium/net/ExperimentalCronetEngine;

    move-result-object p0

    sput-object p0, Lo/we;->e:Lorg/chromium/net/ExperimentalCronetEngine;

    .line 73
    :goto_0
    sget-object p0, Lo/we;->e:Lorg/chromium/net/ExperimentalCronetEngine;

    new-instance v1, Lo/we$TaskDescription;

    invoke-direct {v1}, Lo/we$TaskDescription;-><init>()V

    invoke-virtual {p0, v1}, Lorg/chromium/net/ExperimentalCronetEngine;->addRequestFinishedListener(Lorg/chromium/net/RequestFinishedInfo$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lo/vX;
    .locals 3

    .line 151
    iget-object v0, p0, Lo/we;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/we;->b(Landroid/content/Context;)V

    .line 152
    new-instance v0, Lo/vW;

    sget-object v1, Lo/we;->e:Lorg/chromium/net/ExperimentalCronetEngine;

    sget-object v2, Lo/we;->c:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p1}, Lo/vW;-><init>(Lorg/chromium/net/ExperimentalCronetEngine;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v0
.end method

.method public c(Lcom/google/android/exoplayer2/upstream/DataSource;)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    iget-object v1, p0, Lo/we;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-object v0
.end method

.method public c(Lo/wf;Lo/wU;Lo/wa;Lo/tw;Lo/tG;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    .line 85
    iget-object v2, v0, Lo/we;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/we;->b(Landroid/content/Context;)V

    .line 86
    sget-object v4, Lo/we;->e:Lorg/chromium/net/ExperimentalCronetEngine;

    .line 88
    new-instance v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/cronetdatasource/CronetDataSource;

    sget-object v5, Lo/we;->c:Ljava/util/concurrent/Executor;

    iget v8, v1, Lo/tw;->a:I

    iget v9, v1, Lo/tw;->c:I

    iget v13, v1, Lo/tw;->b:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v14, p6

    invoke-direct/range {v3 .. v14}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/cronetdatasource/CronetDataSource;-><init>(Lorg/chromium/net/ExperimentalCronetEngine;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/util/Predicate;Lo/wf;IIZLo/wU;Lo/wa;ILcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    .line 105
    iget-object v1, v0, Lo/we;->a:Landroid/content/Context;

    invoke-static {v1}, Lo/tX;->a(Landroid/content/Context;)Lo/ua;

    move-result-object v6

    .line 106
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    new-instance v8, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v9, Lo/uc;

    const/high16 v3, 0x10000

    invoke-direct {v9, v6, v3}, Lo/uc;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;I)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v5, v1

    move-object v7, v2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 117
    invoke-interface/range {p5 .. p5}, Lo/tG;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lo/ua;

    .line 118
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    new-instance v6, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v7, Lo/uc;

    .line 124
    invoke-virtual {v4}, Lo/ua;->a()I

    move-result v3

    invoke-direct {v7, v4, v3}, Lo/uc;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;I)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    move-object v5, v1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public e(I)Lo/wc;
    .locals 13

    .line 134
    iget-object v0, p0, Lo/we;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/we;->b(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/cronetdatasource/CronetDataSource;

    sget-object v2, Lo/we;->e:Lorg/chromium/net/ExperimentalCronetEngine;

    sget-object v3, Lo/we;->c:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x2ee0

    const/16 v7, 0x2ee0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move v11, p1

    invoke-direct/range {v1 .. v12}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/cronetdatasource/CronetDataSource;-><init>(Lorg/chromium/net/ExperimentalCronetEngine;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/util/Predicate;Lo/wf;IIZLo/wU;Lo/wa;ILcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v0
.end method
