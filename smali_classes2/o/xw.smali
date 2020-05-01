.class public Lo/xw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tm$TaskDescription;
.implements Lo/tH$TaskDescription;


# instance fields
.field private final a:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

.field private final b:Landroid/os/Handler;

.field private final c:Lo/wx;

.field private final d:Landroid/content/Context;

.field protected e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lo/wG;

.field private h:Ljava/lang/String;

.field private final i:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lo/ws;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/xz;

.field private k:Lcom/google/android/exoplayer2/ExoPlayer;

.field private l:Lo/tN;

.field private m:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

.field private n:Lo/tG;

.field private o:Lo/ty;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/xK;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

.field private r:Z

.field private s:J

.field private t:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

.field private y:Lo/tP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/cz;Lo/wx;Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;Ljava/lang/String;Ljava/lang/String;Lo/xz;Ljava/lang/String;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p3, Landroid/util/LongSparseArray;

    invoke-direct {p3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p3, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    const-wide/16 v0, -0x1

    .line 60
    iput-wide v0, p0, Lo/xw;->s:J

    .line 73
    iput-object p1, p0, Lo/xw;->d:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lo/xw;->b:Landroid/os/Handler;

    .line 75
    iput-object p4, p0, Lo/xw;->c:Lo/wx;

    .line 76
    iput-object p5, p0, Lo/xw;->a:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

    .line 77
    iput-object p6, p0, Lo/xw;->f:Ljava/lang/String;

    .line 78
    iput-object p7, p0, Lo/xw;->h:Ljava/lang/String;

    .line 79
    iput-object p8, p0, Lo/xw;->j:Lo/xz;

    .line 80
    new-instance p1, Lo/wG;

    invoke-direct {p1, p2}, Lo/wG;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lo/xw;->g:Lo/wG;

    .line 81
    iput-object p9, p0, Lo/xw;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lo/ws;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lo/xw;->k:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p1, v0}, Lo/ws;->d(Lcom/google/android/exoplayer2/ExoPlayer;)V

    .line 306
    iget-object v0, p0, Lo/xw;->q:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {p1, v0}, Lo/ws;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)V

    .line 307
    iget-object v0, p0, Lo/xw;->o:Lo/ty;

    invoke-virtual {p1, v0}, Lo/ws;->d(Lo/ty;)V

    .line 308
    iget-object v0, p0, Lo/xw;->l:Lo/tN;

    invoke-virtual {p1, v0}, Lo/ws;->a(Lo/tN;)V

    .line 309
    iget-object v0, p0, Lo/xw;->t:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    invoke-virtual {p1, v0}, Lo/ws;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;)V

    .line 310
    iget-object v0, p0, Lo/xw;->n:Lo/tG;

    invoke-virtual {p1, v0}, Lo/ws;->b(Lo/tG;)V

    .line 311
    iget-object v0, p0, Lo/xw;->m:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-virtual {p1, v0}, Lo/ws;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)V

    .line 312
    iget-object v0, p0, Lo/xw;->y:Lo/tP;

    invoke-virtual {p1, v0}, Lo/ws;->c(Lo/tP;)V

    return-void
.end method

.method private f(J)Z
    .locals 2

    .line 256
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private j(J)Lo/ws;
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v14, p1

    .line 262
    iget-object v13, v1, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v13

    .line 263
    :try_start_0
    iget-object v0, v1, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ws;

    .line 264
    iget-object v2, v1, Lo/xw;->j:Lo/xz;

    invoke-virtual {v2, v14, v15}, Lo/xz;->d(J)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lo/ws;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v13

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    iget-object v0, v1, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->remove(J)V

    .line 267
    new-instance v0, Lo/ws;

    iget-object v3, v1, Lo/xw;->d:Landroid/content/Context;

    iget-object v4, v1, Lo/xw;->b:Landroid/os/Handler;

    iget-object v5, v1, Lo/xw;->c:Lo/wx;

    iget-object v6, v1, Lo/xw;->a:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

    iget-object v7, v1, Lo/xw;->f:Ljava/lang/String;

    iget-object v11, v1, Lo/xw;->h:Ljava/lang/String;

    iget-object v12, v1, Lo/xw;->g:Lo/wG;

    iget-object v9, v1, Lo/xw;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    move-object/from16 v16, v9

    move-wide/from16 v9, p1

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    :try_start_1
    invoke-direct/range {v2 .. v13}, Lo/ws;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/wx;Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lo/wG;Ljava/lang/String;)V

    .line 270
    iget-object v2, v1, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v14, v15, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 271
    iget-boolean v2, v1, Lo/xw;->r:Z

    if-eqz v2, :cond_2

    .line 272
    invoke-direct {v1, v0}, Lo/xw;->a(Lo/ws;)V

    .line 275
    :cond_2
    :goto_1
    monitor-exit v17

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v13

    .line 276
    :goto_2
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lo/xw;->j:Lo/xz;

    invoke-virtual {v0, p1, p2}, Lo/xz;->d(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 410
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 411
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 412
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2}, Lo/ws;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(JJ)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lo/ws;->c(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 3

    .line 150
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lo/xw;->j:Lo/xz;

    invoke-virtual {v1, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {v0, p1}, Lo/ws;->d(Lo/sE;)V

    if-eqz p3, :cond_1

    .line 155
    invoke-interface {p1}, Lo/sE;->O()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->name()Ljava/lang/String;

    move-result-object p2

    .line 157
    :goto_0
    invoke-interface {p1}, Lo/sE;->R()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lo/ws;->c(JLjava/lang/String;)V

    .line 159
    :cond_1
    invoke-interface {p1}, Lo/sE;->S()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lo/sE;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lo/ws;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(JZZLjava/lang/String;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lo/ws;->e(ZZLjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/xw;->k:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 338
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 339
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 340
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2, p1}, Lo/ws;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lo/tG;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/xw;->n:Lo/tG;

    return-void
.end method

.method public a(Lo/tH$ActionBar;)V
    .locals 3

    .line 383
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 384
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 385
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2, p1}, Lo/ws;->a(Lo/tH$ActionBar;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lo/wU;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/xw;->g:Lo/wG;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1}, Lo/ws;->b()V

    return-void
.end method

.method public b(JJJ)V
    .locals 3

    .line 164
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object v0

    .line 165
    iget-wide v1, p0, Lo/xw;->s:J

    invoke-virtual {v0, v1, v2}, Lo/ws;->e(J)V

    .line 166
    invoke-virtual {v0, p3, p4, p5, p6}, Lo/ws;->a(JJ)V

    .line 169
    iget-object p3, p0, Lo/xw;->j:Lo/xz;

    invoke-virtual {p3, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 170
    invoke-virtual {p0, p1, p2, p3}, Lo/xw;->a(JZ)V

    :cond_0
    return-void
.end method

.method public b(JJJJ)V
    .locals 13

    move-object v1, p0

    .line 356
    iget-object v2, v1, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v2

    const/4 v0, 0x0

    .line 357
    :goto_0
    :try_start_0
    iget-object v3, v1, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 358
    iget-object v3, v1, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lo/ws;

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-virtual/range {v4 .. v12}, Lo/ws;->b(JJJJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(JJLjava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lo/xJ;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lo/xw;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5, p6, p7}, Lo/ws;->e(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-void
.end method

.method public b(JLcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;J)V
    .locals 1

    .line 175
    invoke-direct {p0, p1, p2}, Lo/xw;->f(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lo/ws;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;J)V

    return-void
.end method

.method public b(JLcom/netflix/mediaclient/servicemgr/ExitPipAction;J)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lo/ws;->e(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;J)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lo/xw;->q:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/xw;->t:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lo/xw;->m:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/xK;",
            ">;)V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lo/xw;->p:Ljava/util/List;

    return-void
.end method

.method public b(Lo/tH$FragmentManager;)V
    .locals 3

    .line 392
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 393
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 394
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2, p1}, Lo/ws;->b(Lo/tH$FragmentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 3

    .line 296
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 297
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 298
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2}, Lo/ws;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 301
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(J)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1}, Lo/ws;->h()V

    return-void
.end method

.method public c(JLjava/lang/String;J)V
    .locals 0

    .line 211
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lo/ws;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public c(JZ)V
    .locals 1

    .line 432
    invoke-direct {p0, p1, p2}, Lo/xw;->f(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3}, Lo/ws;->b(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;JJ)V
    .locals 9

    .line 419
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 420
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 421
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/ws;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lo/ws;->c(Ljava/lang/String;JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lo/tN;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/xw;->l:Lo/tN;

    return-void
.end method

.method public d()V
    .locals 3

    .line 347
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 348
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 349
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2}, Lo/ws;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lo/xw;->s:J

    return-void
.end method

.method public d(JLjava/lang/String;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3}, Lo/ws;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(JZ)V
    .locals 2

    .line 190
    invoke-direct {p0, p1, p2}, Lo/xw;->f(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lo/xw;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lo/ws;->b(Ljava/util/List;)V

    .line 195
    invoke-virtual {v0, p3}, Lo/ws;->d(Z)V

    .line 196
    iget-object p3, p0, Lo/xw;->j:Lo/xz;

    invoke-virtual {p3, p1, p2}, Lo/xz;->g(J)V

    .line 197
    iget-object p3, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter p3

    .line 198
    :try_start_0
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 199
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 85
    iput-object p1, p0, Lo/xw;->h:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 87
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2, p1}, Lo/ws;->e(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lo/tH$Dialog;J)V
    .locals 3

    .line 365
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 366
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 367
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2, p1, p2, p3}, Lo/ws;->d(Lo/tH$Dialog;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 3

    .line 285
    iget-boolean v0, p0, Lo/xw;->r:Z

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 287
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 288
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-direct {p0, v2}, Lo/xw;->a(Lo/ws;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lo/xw;->r:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 290
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public e(J)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1}, Lo/ws;->j()V

    return-void
.end method

.method public e(JILo/tH$PictureInPictureParams;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lo/ws;->a(ILo/tH$PictureInPictureParams;)V

    return-void
.end method

.method public e(JJLo/ta$TaskDescription;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lo/ws;->d(JLo/ta$TaskDescription;)V

    return-void
.end method

.method public e(JLjava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p3}, Lo/ws;->b(Ljava/lang/String;)V

    return-void
.end method

.method public e(JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;ZLjava/lang/String;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1, p6, p3, p4, p5}, Lo/ws;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;Z)V

    return-void
.end method

.method public e(Ljava/lang/String;JJLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;)V
    .locals 0

    .line 236
    invoke-direct {p0, p2, p3}, Lo/xw;->j(J)Lo/ws;

    move-result-object p2

    invoke-virtual {p2, p1, p4, p5, p6}, Lo/ws;->e(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;)V

    return-void
.end method

.method public e(Lo/tH$Fragment;)V
    .locals 3

    .line 401
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 402
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 403
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2, p1}, Lo/ws;->e(Lo/tH$Fragment;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lo/tH$StateListAnimator;J)V
    .locals 3

    .line 329
    iget-object v0, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 330
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 331
    iget-object v2, p0, Lo/xw;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ws;

    invoke-virtual {v2, p1, p2, p3}, Lo/ws;->e(Lo/tH$StateListAnimator;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lo/tH;)V
    .locals 0

    .line 99
    invoke-interface {p1, p0}, Lo/tH;->c(Lo/tH$TaskDescription;)V

    return-void
.end method

.method public e(Lo/tP;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lo/xw;->y:Lo/tP;

    return-void
.end method

.method public e(Lo/ty;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/xw;->o:Lo/ty;

    return-void
.end method

.method public i(J)Z
    .locals 0

    .line 252
    invoke-direct {p0, p1, p2}, Lo/xw;->j(J)Lo/ws;

    move-result-object p1

    invoke-virtual {p1}, Lo/ws;->g()Z

    move-result p1

    return p1
.end method
