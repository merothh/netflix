.class public Lo/ty;
.super Lo/qy;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field c:Lo/ta;

.field private final e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

.field private g:Lo/vK;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private j:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private k:J

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lo/ah;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lo/wY;

.field private r:Lcom/google/android/exoplayer2/Format;

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lo/ta;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lo/qy;-><init>(Landroid/os/Handler;Lo/pt;)V

    const-wide/16 p1, 0x0

    .line 59
    iput-wide p1, p0, Lo/ty;->k:J

    .line 72
    iget-object p1, p0, Lo/ty;->b:Lo/pt;

    check-cast p1, Lo/ta;

    iput-object p1, p0, Lo/ty;->c:Lo/ta;

    .line 73
    iput-object p3, p0, Lo/ty;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lo/ty;->n:Ljava/util/Map;

    .line 75
    iput-object p1, p0, Lo/ty;->l:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lo/ty;->t:Ljava/util/Map;

    .line 77
    invoke-static {}, Lo/ek;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    :try_start_0
    const-class p1, Lo/ah;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ah;

    iput-object p1, p0, Lo/ty;->m:Lo/ah;

    .line 80
    iget-object p1, p0, Lo/ty;->m:Lo/ah;

    invoke-interface {p1, p0}, Lo/ah;->c(Lo/ag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ASE-stats"

    const-string p2, "PerformanceMetricsManager was not initialized in Lookup (normal with sampling)"

    .line 82
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/ty;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lo/vK;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/ty;->g:Lo/vK;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/ty;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/ty;->j:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/ty;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    return-void
.end method

.method public c(Lo/aj;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    .line 88
    iget-object v0, p0, Lo/ty;->m:Lo/ah;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lo/ah;->d()V

    .line 91
    :cond_0
    iget-wide v0, p0, Lo/ty;->k:J

    .line 92
    iget-object v2, p0, Lo/ty;->o:Lo/wY;

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2}, Lo/wY;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 95
    :cond_1
    iget-object v2, p0, Lo/ty;->g:Lo/vK;

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v2, v0, v1}, Lo/vK;->e(J)V

    .line 98
    :cond_2
    iget-object v0, p0, Lo/ty;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_3

    .line 99
    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lo/ty;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 101
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public e()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/ty;->i:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public f()Lo/vK;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/ty;->g:Lo/vK;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lo/ty;->l:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lo/ty;->t:Ljava/util/Map;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lo/ty;->n:Ljava/util/Map;

    return-object v0
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 2

    .line 151
    iget-object v0, p0, Lo/ty;->c:Lo/ta;

    sub-long p4, p2, p4

    const-string v1, "audioDecoderCreated"

    invoke-interface {v0, v1, p4, p5}, Lo/ta;->b(Ljava/lang/String;J)V

    .line 152
    iget-object p4, p0, Lo/ty;->c:Lo/ta;

    const-string p5, "audioDecoderInitialized"

    invoke-interface {p4, p5, p2, p3}, Lo/ta;->b(Ljava/lang/String;J)V

    .line 153
    iput-object p1, p0, Lo/ty;->h:Ljava/lang/String;

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lo/ty;->c:Lo/ta;

    const-string v1, "audioEnabled"

    invoke-interface {v0, v1}, Lo/ta;->e(Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lo/ty;->j:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lo/ty;->c:Lo/ta;

    const-string v0, "audioInputChanged"

    invoke-interface {p1, v0}, Lo/ta;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0

    return-void
.end method

.method public onDroppedTooManyFrames()V
    .locals 1

    .line 146
    iget-object v0, p0, Lo/ty;->b:Lo/pt;

    invoke-interface {v0}, Lo/pt;->c()V

    return-void
.end method

.method public onLateFrames(IJ)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 2

    .line 228
    iget-object v0, p0, Lo/ty;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_1

    .line 229
    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 231
    :try_start_0
    iget-object p1, p0, Lo/ty;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lo/ty;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 235
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lo/ty;->b:Lo/pt;

    new-instance v1, Lo/sZ;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->c(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lo/xD;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/sZ;-><init>(Lo/xD;)V

    invoke-interface {v0, v1}, Lo/pt;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 172
    iget-object v2, v0, Lo/ty;->o:Lo/wY;

    if-eqz v2, :cond_0

    .line 173
    iget-wide v3, v0, Lo/ty;->k:J

    invoke-virtual {v2}, Lo/wY;->b()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lo/ty;->k:J

    const/4 v2, 0x0

    .line 174
    iput-object v2, v0, Lo/ty;->o:Lo/wY;

    :cond_0
    const-string v2, "ASE-stats"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto/16 :goto_2

    .line 211
    :cond_1
    iget-object v1, v0, Lo/ty;->b:Lo/pt;

    invoke-interface {v1}, Lo/pt;->b()V

    .line 212
    invoke-static {}, Lo/ek;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lo/ty;->m:Lo/ah;

    if-eqz v1, :cond_8

    .line 213
    invoke-interface {v1}, Lo/ah;->c()V

    goto/16 :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "playerStarted"

    .line 197
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v1, Lo/wY;

    invoke-direct {v1}, Lo/wY;-><init>()V

    iput-object v1, v0, Lo/ty;->o:Lo/wY;

    .line 199
    iget-object v1, v0, Lo/ty;->b:Lo/pt;

    invoke-interface {v1}, Lo/pt;->a()V

    .line 200
    invoke-static {}, Lo/ek;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lo/ty;->m:Lo/ah;

    if-eqz v1, :cond_8

    .line 201
    invoke-interface {v1}, Lo/ah;->a()V

    goto :goto_2

    .line 204
    :cond_3
    iget-object v1, v0, Lo/ty;->b:Lo/pt;

    invoke-interface {v1}, Lo/pt;->d()V

    .line 205
    invoke-static {}, Lo/ek;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lo/ty;->m:Lo/ah;

    if-eqz v1, :cond_8

    .line 206
    invoke-interface {v1}, Lo/ah;->c()V

    goto :goto_2

    .line 179
    :cond_4
    iget-object v1, v0, Lo/ty;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_7

    .line 180
    invoke-interface {v1, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v8

    .line 181
    iget-object v1, v0, Lo/ty;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-interface {v1, v7}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v10

    .line 182
    iget-object v1, v0, Lo/ty;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-interface {v1, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v12

    .line 184
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v1, v12, v16

    if-ltz v1, :cond_5

    .line 186
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :cond_5
    const-wide/16 v12, 0x7d0

    cmp-long v1, v14, v12

    if-gez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 189
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v3, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "onPlayerStateChanged  => buffer duration %d [A : %d, V : %d] reportBufferingToUI : %b"

    invoke-static {v2, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_8

    .line 192
    iget-object v1, v0, Lo/ty;->b:Lo/pt;

    invoke-interface {v1, v6}, Lo/pt;->e(Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lo/ty;->c:Lo/ta;

    const-string v0, "renderedFrame"

    invoke-interface {p1, v0}, Lo/ta;->e(Ljava/lang/String;)V

    const-string p1, "ASE-stats"

    const-string v0, "onRenderedFirstFrame"

    .line 141
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 5

    .line 241
    invoke-super {p0, p1, p2}, Lo/qy;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    .line 243
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    move-object v2, p2

    const/4 v1, 0x0

    .line 244
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 245
    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    aget-object v4, p1, v1

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4}, Lo/qS;->e(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 246
    aget-object v2, p1, v1

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_1
    iget-object p1, p0, Lo/ty;->r:Lcom/google/android/exoplayer2/Format;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 253
    iput-object v2, p0, Lo/ty;->r:Lcom/google/android/exoplayer2/Format;

    .line 254
    iget-object p1, p0, Lo/ty;->c:Lo/ta;

    new-instance v0, Lo/tl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    if-eqz v2, :cond_2

    iget-object p2, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    :cond_2
    invoke-direct {v0, v1, p2}, Lo/tl;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/ta;->e(Lo/TimePickerSpinnerDelegate;)V

    :cond_3
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 2

    .line 133
    iget-object v0, p0, Lo/ty;->c:Lo/ta;

    sub-long p4, p2, p4

    const-string v1, "videoDecoderCreated"

    invoke-interface {v0, v1, p4, p5}, Lo/ta;->b(Ljava/lang/String;J)V

    .line 134
    iget-object p4, p0, Lo/ty;->c:Lo/ta;

    const-string p5, "videoDecoderInitialized"

    invoke-interface {p4, p5, p2, p3}, Lo/ta;->b(Ljava/lang/String;J)V

    .line 135
    iput-object p1, p0, Lo/ty;->a:Ljava/lang/String;

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lo/ty;->c:Lo/ta;

    const-string v1, "videoEnabled"

    invoke-interface {v0, v1}, Lo/ta;->e(Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lo/ty;->i:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method
