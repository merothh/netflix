.class public Lo/uO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uO$Application;,
        Lo/uO$StateListAnimator;,
        Lo/uO$TaskDescription;,
        Lo/uO$Activity;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lo/uL$StateListAnimator;

.field private final c:Lo/uI;

.field private final d:Lo/tD;

.field private final e:Lo/tm$ActionBar;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lo/uP;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

.field private i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/uO$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/uO$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private n:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z


# direct methods
.method public constructor <init>(Lo/uI;Lo/uL$StateListAnimator;Landroid/os/Handler;Lo/tm$ActionBar;Lo/tD;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lo/uO;->c:Lo/uI;

    .line 107
    iput-object p2, p0, Lo/uO;->b:Lo/uL$StateListAnimator;

    .line 108
    iput-object p3, p0, Lo/uO;->a:Landroid/os/Handler;

    .line 109
    iput-object p4, p0, Lo/uO;->e:Lo/tm$ActionBar;

    .line 110
    iput-object p5, p0, Lo/uO;->d:Lo/tD;

    .line 111
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lo/uO;->g:Ljava/util/Map;

    .line 112
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/uO;->f:Ljava/util/Map;

    .line 113
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/uO;->j:Ljava/util/Map;

    .line 114
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/uO;->o:Landroid/util/SparseArray;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/uO;->k:Ljava/util/List;

    .line 116
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/uO;->l:Ljava/util/Map;

    return-void
.end method

.method private static b(Landroid/util/SparseArray;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 744
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 745
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 746
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 287
    iput-object v1, v0, Lo/uO;->i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object v2

    .line 289
    iget-object v3, v0, Lo/uO;->o:Landroid/util/SparseArray;

    invoke-static {v3, v1}, Lo/uO;->d(Landroid/util/SparseArray;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V

    .line 292
    iget-object v3, v0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    iget-object v3, v0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 294
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 298
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/uO$TaskDescription;

    iget-object v4, v4, Lo/uO$TaskDescription;->d:Lo/uP;

    invoke-virtual {v4}, Lo/uP;->releaseSource()V

    .line 299
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 304
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 306
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Bj;

    .line 307
    iget-object v5, v0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 311
    iget-wide v7, v3, Lo/Bj;->d:J

    iget-object v5, v0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/uO$TaskDescription;

    iget-object v5, v5, Lo/uO$TaskDescription;->b:Lo/Bj;

    iget-wide v9, v5, Lo/Bj;->d:J

    const/4 v5, 0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 312
    iget-wide v7, v3, Lo/Bj;->e:J

    iget-object v9, v0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/uO$TaskDescription;

    iget-object v9, v9, Lo/uO$TaskDescription;->b:Lo/Bj;

    iget-wide v9, v9, Lo/Bj;->e:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 313
    iget-object v5, v0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/uO$TaskDescription;

    iput-object v3, v4, Lo/uO$TaskDescription;->b:Lo/Bj;

    goto :goto_1

    .line 317
    :cond_4
    invoke-virtual {v1, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide v7

    .line 318
    new-instance v5, Lo/uF;

    invoke-direct {v5, v7, v8, v4}, Lo/uF;-><init>(JLjava/lang/String;)V

    .line 319
    iget-wide v9, v3, Lo/Bj;->e:J

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    if-nez v13, :cond_5

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_5
    iget-wide v9, v3, Lo/Bj;->e:J

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v9

    :goto_4
    move-wide v13, v9

    .line 320
    iget-wide v9, v3, Lo/Bj;->d:J

    cmp-long v15, v9, v11

    if-nez v15, :cond_6

    const-wide/high16 v9, -0x8000000000000000L

    goto :goto_5

    :cond_6
    iget-wide v9, v3, Lo/Bj;->d:J

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v9

    :goto_5
    move-wide v15, v9

    .line 321
    new-instance v11, Lo/uP;

    new-instance v10, Lo/uN;

    .line 322
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    iget-object v9, v0, Lo/uO;->c:Lo/uI;

    iget-object v12, v0, Lo/uO;->b:Lo/uL$StateListAnimator;

    iget-object v6, v0, Lo/uO;->a:Landroid/os/Handler;

    iget-object v1, v0, Lo/uO;->e:Lo/tm$ActionBar;

    .line 323
    invoke-virtual {v1, v7, v8}, Lo/tm$ActionBar;->c(J)Lo/tm;

    move-result-object v22

    iget-object v1, v0, Lo/uO;->d:Lo/tD;

    move-object/from16 v17, v10

    move-object/from16 v19, v9

    move-object/from16 v20, v12

    move-object/from16 v21, v6

    move-object/from16 v23, v1

    invoke-direct/range {v17 .. v23}, Lo/uN;-><init>(Ljava/lang/Long;Lo/uI;Lo/uL$StateListAnimator;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;Lo/tD;)V

    move-object v9, v11

    move-object v1, v11

    move-wide v11, v13

    move-wide v13, v15

    move-object v15, v5

    invoke-direct/range {v9 .. v15}, Lo/uP;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJLo/uF;)V

    .line 325
    new-instance v6, Lo/uO$Activity;

    invoke-direct {v6, v5}, Lo/uO$Activity;-><init>(Lo/uF;)V

    .line 327
    new-instance v5, Lo/uO$TaskDescription;

    invoke-direct {v5, v1, v6, v3}, Lo/uO$TaskDescription;-><init>(Lo/uP;Lo/uO$Activity;Lo/Bj;)V

    .line 328
    iget-object v1, v0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, v5, Lo/uO$TaskDescription;->d:Lo/uP;

    iget-object v3, v0, Lo/uO;->n:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v4, Lo/uO$4;

    invoke-direct {v4, v0, v5}, Lo/uO$4;-><init>(Lo/uO;Lo/uO$TaskDescription;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lo/uP;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private c()V
    .locals 5

    .line 361
    iget-boolean v0, p0, Lo/uO;->t:Z

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lo/uO;->m:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance v1, Lo/uO$Application;

    iget-object v2, p0, Lo/uO;->j:Ljava/util/Map;

    iget-object v3, p0, Lo/uO;->o:Landroid/util/SparseArray;

    iget-object v4, p0, Lo/uO;->l:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lo/uO$Application;-><init>(Ljava/util/Map;Landroid/util/SparseArray;Ljava/util/Map;)V

    iget-object v2, p0, Lo/uO;->i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static d(Landroid/util/SparseArray;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;",
            ")V"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 731
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 733
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    .line 735
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    .line 736
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d(Landroid/util/SparseArray;Ljava/util/Map;)V
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lo/uO;->b(Landroid/util/SparseArray;Ljava/util/Map;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 339
    iget-object v0, p0, Lo/uO;->i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not exist in playgraph"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 340
    iget-object v3, p0, Lo/uO;->i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destination segment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p2, :cond_2

    .line 344
    iget-object v2, p0, Lo/uO;->l:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 347
    :cond_2
    iget-object v2, p0, Lo/uO;->l:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 349
    :goto_2
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const-string p1, "PlaylistMediaSource"

    const-string p2, "setting branch choice of %s -> %s (previous=%s)"

    .line 351
    invoke-static {p1, p2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 352
    invoke-direct {p0}, Lo/uO;->c()V

    :cond_3
    return-void
.end method

.method public static e(Lcom/google/android/exoplayer2/Timeline;I)Lo/Bj;
    .locals 11

    .line 763
    instance-of v0, p0, Lo/uO$Application;

    const-string v1, "PlaylistMediaSource"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v3

    const-string p0, "attempted to get branching segment of non-playlist timeline %s"

    .line 764
    invoke-static {v1, p0, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4

    :cond_0
    if-ltz p1, :cond_8

    .line 767
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_1

    .line 771
    :cond_1
    move-object v0, p0

    check-cast v0, Lo/uO$Application;

    move v2, p1

    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0x14

    if-ge v1, v5, :cond_7

    .line 773
    invoke-virtual {v0, v2}, Lo/uO$Application;->a(I)Lo/Bj;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v4

    .line 780
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(II)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    .line 782
    iget-object p0, v5, Lo/Bj;->b:[Lo/Bo;

    if-eqz p0, :cond_3

    iget-object p0, v5, Lo/Bj;->b:[Lo/Bo;

    array-length p0, p0

    if-lez p0, :cond_3

    return-object v5

    :cond_3
    return-object v4

    :cond_4
    if-ne v2, p1, :cond_5

    return-object v4

    .line 800
    :cond_5
    iget-wide v6, v5, Lo/Bj;->j:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_6

    return-object v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-object v4

    :cond_8
    :goto_1
    new-array p0, v2, [Ljava/lang/Object;

    .line 768
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "attempted to get branching segment of bad index %s"

    invoke-static {v1, p1, p0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4
.end method

.method private e(Lo/uO$TaskDescription;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 378
    iget-object v0, p1, Lo/uO$TaskDescription;->a:Lo/uO$Activity;

    .line 379
    invoke-virtual {v0}, Lo/uO$Activity;->d()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    invoke-virtual {v0}, Lo/uO$Activity;->getWindowCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 383
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    invoke-virtual {v0}, Lo/uO$Activity;->getPeriodCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "PlaylistMediaSource"

    const-string v2, "unsupported: child window has more than one period"

    .line 385
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_2
    invoke-virtual {v0, p2}, Lo/uO$Activity;->a(Lcom/google/android/exoplayer2/Timeline;)Lo/uO$Activity;

    move-result-object p2

    iput-object p2, p1, Lo/uO$TaskDescription;->a:Lo/uO$Activity;

    .line 388
    iget-boolean p2, p1, Lo/uO$TaskDescription;->c:Z

    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 389
    iget-object p2, p0, Lo/uO;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_4

    .line 390
    iget-object v1, p0, Lo/uO;->k:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/uO$StateListAnimator;

    iget-object v1, v1, Lo/uO$StateListAnimator;->e:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, p1, Lo/uO$TaskDescription;->d:Lo/uP;

    if-ne v1, v2, :cond_3

    .line 391
    iget-object v1, p0, Lo/uO;->k:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/uO$StateListAnimator;

    invoke-virtual {v1}, Lo/uO$StateListAnimator;->b()V

    .line 392
    iget-object v1, p0, Lo/uO;->k:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 396
    :cond_4
    iput-boolean v0, p1, Lo/uO$TaskDescription;->c:Z

    .line 397
    invoke-direct {p0}, Lo/uO;->c()V

    return-void

    .line 376
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic e(Lo/uO;Lo/uO$TaskDescription;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/uO;->e(Lo/uO$TaskDescription;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)I
    .locals 1

    .line 200
    iget-object v0, p0, Lo/uO;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 156
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lo/uO;->n:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 3

    .line 253
    iget-object v0, p0, Lo/uO;->o:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/uO$TaskDescription;

    .line 255
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    .line 257
    iget-boolean v1, p1, Lo/uO$TaskDescription;->c:Z

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Lo/uO$StateListAnimator;

    iget-object v2, p1, Lo/uO$TaskDescription;->d:Lo/uP;

    invoke-direct {v1, v2, v0, p2}, Lo/uO$StateListAnimator;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 259
    iget-object p2, p0, Lo/uO;->k:Ljava/util/List;

    move-object v0, v1

    check-cast v0, Lo/uO$StateListAnimator;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, p1, Lo/uO$TaskDescription;->d:Lo/uP;

    invoke-virtual {v1, v0, p2}, Lo/uP;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    .line 263
    :goto_0
    iget-object p2, p0, Lo/uO;->g:Ljava/util/Map;

    iget-object p1, p1, Lo/uO$TaskDescription;->d:Lo/uP;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .line 171
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lo/uO;->n:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V
    .locals 4

    .line 125
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lo/uO;->h:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    if-ne v0, p1, :cond_0

    return-void

    .line 131
    :cond_0
    iput-object p1, p0, Lo/uO;->h:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 137
    invoke-static {v0, p1}, Lo/uO;->d(Landroid/util/SparseArray;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V

    .line 138
    iget-object v1, p0, Lo/uO;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lo/uO;->b(Landroid/util/SparseArray;Ljava/util/Map;)V

    .line 140
    iget-object v0, p0, Lo/uO;->n:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 141
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    :cond_1
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "PlaylistMediaSource"

    const-string v0, "unknown message: %s"

    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lo/uO;->i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 220
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/uO;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/uO$TaskDescription;

    iget-object p1, p1, Lo/uO$TaskDescription;->d:Lo/uP;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p1, v0, v1}, Lo/uP;->e(J)V

    goto :goto_0

    .line 216
    :cond_1
    check-cast p2, Landroid/util/Pair;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lo/uO;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    iput-boolean v1, p0, Lo/uO;->t:Z

    .line 211
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-direct {p0, p2}, Lo/uO;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V

    .line 212
    iput-boolean v0, p0, Lo/uO;->t:Z

    .line 213
    invoke-direct {p0}, Lo/uO;->c()V

    :cond_3
    :goto_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2

    .line 246
    iget-object v0, p0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/uO$TaskDescription;

    .line 247
    iget-object v1, v1, Lo/uO$TaskDescription;->d:Lo/uP;

    invoke-virtual {v1}, Lo/uP;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "PlaylistMediaSource"

    const-string v0, "playlist is not top level source. playlist should always be top level"

    .line 232
    invoke-static {p2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iput-object p1, p0, Lo/uO;->n:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 235
    iput-object p3, p0, Lo/uO;->m:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 236
    iget-object p1, p0, Lo/uO;->h:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 237
    iput-boolean p2, p0, Lo/uO;->t:Z

    .line 238
    invoke-direct {p0, p1}, Lo/uO;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lo/uO;->t:Z

    .line 240
    invoke-direct {p0}, Lo/uO;->c()V

    :cond_1
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lo/uO;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 270
    iget-object v1, p0, Lo/uO;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    instance-of v1, p1, Lo/uO$StateListAnimator;

    if-eqz v1, :cond_0

    .line 272
    iget-object v0, p0, Lo/uO;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 273
    check-cast p1, Lo/uO$StateListAnimator;

    invoke-virtual {p1}, Lo/uO$StateListAnimator;->a()V

    goto :goto_0

    .line 275
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :goto_0
    return-void
.end method

.method public releaseSource()V
    .locals 2

    .line 281
    iget-object v0, p0, Lo/uO;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/uO$TaskDescription;

    .line 282
    iget-object v1, v1, Lo/uO$TaskDescription;->d:Lo/uP;

    invoke-virtual {v1}, Lo/uP;->releaseSource()V

    goto :goto_0

    :cond_0
    return-void
.end method
