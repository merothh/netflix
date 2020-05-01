.class public Lo/tq;
.super Lo/ty;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tq$Application;
    }
.end annotation


# static fields
.field private static final a:Lo/uF;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Lo/tq$Application;

.field private g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private h:Lo/Bq;

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/tz;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Runnable;

.field private n:Lo/uF;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lo/uF;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/uF;-><init>(JLjava/lang/String;)V

    sput-object v0, Lo/tq;->a:Lo/uF;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lo/ta;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lo/ty;-><init>(Landroid/os/Handler;Lo/ta;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    const-string p1, "uninitialized_playlist"

    .line 31
    iput-object p1, p0, Lo/tq;->e:Ljava/lang/String;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/tq;->j:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    .line 36
    iput p1, p0, Lo/tq;->i:I

    .line 37
    sget-object p1, Lo/tq;->a:Lo/uF;

    iput-object p1, p0, Lo/tq;->n:Lo/uF;

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lo/tq;->o:I

    .line 210
    new-instance p1, Lo/tu;

    invoke-direct {p1, p0}, Lo/tu;-><init>(Lo/tq;)V

    iput-object p1, p0, Lo/tq;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)Lo/uF;
    .locals 3

    .line 121
    sget-object v0, Lo/tq;->a:Lo/uF;

    .line 122
    iget-object v1, p0, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    if-ltz p1, :cond_1

    .line 123
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 124
    iget-object v0, p0, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    .line 125
    iget-object v0, p1, Lcom/google/android/exoplayer2/Timeline$Window;->id:Ljava/lang/Object;

    instance-of v0, v0, Lo/uF;

    if-eqz v0, :cond_0

    .line 126
    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->id:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lo/uF;

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lo/tq;->a:Lo/uF;

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic e(Lo/tq;)V
    .locals 0

    invoke-direct {p0}, Lo/tq;->l()V

    return-void
.end method

.method private j()V
    .locals 11

    .line 88
    iget-object v0, p0, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_6

    .line 89
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    .line 90
    invoke-direct {p0, v0}, Lo/tq;->a(I)Lo/uF;

    move-result-object v1

    .line 92
    iget v2, p0, Lo/tq;->i:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lo/tq;->n:Lo/uF;

    invoke-virtual {v1, v2}, Lo/uF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    iget v3, p0, Lo/tq;->i:I

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lo/tq;->n:Lo/uF;

    iget-object v3, v3, Lo/uF;->a:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    iget-object v6, v1, Lo/uF;->a:Ljava/lang/String;

    aput-object v6, v2, v3

    const-string v3, "PlaylistEvent"

    const-string v6, "segment changed (%d, %s) -> (%d, %s), segment transition completed."

    .line 93
    invoke-static {v3, v6, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    iget-object v2, p0, Lo/tq;->n:Lo/uF;

    .line 96
    iput v0, p0, Lo/tq;->i:I

    .line 97
    iput-object v1, p0, Lo/tq;->n:Lo/uF;

    .line 98
    iget-object v0, p0, Lo/tq;->h:Lo/Bq;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getContentPosition()J

    move-result-wide v6

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-object v3, p0, Lo/tq;->e:Ljava/lang/String;

    iget-object v1, v1, Lo/uF;->a:Ljava/lang/String;

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    goto :goto_0

    :cond_1
    move-wide v6, v8

    :goto_0
    invoke-direct {v0, v3, v1, v6, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v3, "PlaylistEvent"

    const-string v4, "onTransitionComplete %s"

    .line 101
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    iget-object v1, p0, Lo/tq;->h:Lo/Bq;

    iget-object v3, v2, Lo/uF;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lo/Bq;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    .line 104
    :cond_2
    sget-object v0, Lo/tq;->a:Lo/uF;

    if-eq v2, v0, :cond_3

    iget-wide v0, v2, Lo/uF;->b:J

    iget-object v2, p0, Lo/tq;->n:Lo/uF;

    iget-wide v2, v2, Lo/uF;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 106
    iget-object v0, p0, Lo/tq;->c:Lo/ta;

    invoke-interface {v0}, Lo/ta;->e()V

    .line 109
    :cond_3
    iget-object v0, p0, Lo/tq;->j:Ljava/util/ArrayList;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lo/tq;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/tz;

    .line 111
    invoke-virtual {v2}, Lo/tz;->e()V

    goto :goto_1

    .line 113
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_5
    invoke-direct {p0}, Lo/tq;->m()V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 113
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    :goto_2
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private synthetic l()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lo/tq;->m()V

    return-void
.end method

.method private m()V
    .locals 20

    move-object/from16 v1, p0

    .line 162
    iget-object v2, v1, Lo/tq;->j:Ljava/util/ArrayList;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v0, v1, Lo/tq;->j:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v4, v3, [Lo/tz;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/tz;

    .line 164
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    array-length v2, v0

    if-ltz v2, :cond_7

    .line 166
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 167
    iget-object v2, v1, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v2

    .line 168
    invoke-direct {v1, v2}, Lo/tq;->a(I)Lo/uF;

    move-result-object v4

    iget-object v4, v4, Lo/uF;->a:Ljava/lang/String;

    .line 169
    sget-object v5, Lo/tq;->a:Lo/uF;

    invoke-virtual {v5, v4}, Lo/uF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v5, v1, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    .line 171
    iget-object v6, v1, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRepeatMode()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(II)I

    move-result v5

    .line 172
    invoke-direct {v1, v5}, Lo/tq;->a(I)Lo/uF;

    move-result-object v5

    iget-object v5, v5, Lo/uF;->a:Ljava/lang/String;

    .line 173
    sget-object v6, Lo/tq;->a:Lo/uF;

    invoke-virtual {v6, v5}, Lo/uF;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    .line 177
    :cond_1
    iget-object v6, v1, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    invoke-virtual {v6, v2, v7}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v6

    .line 179
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v8

    const/4 v2, 0x0

    const-wide/16 v12, 0x0

    .line 180
    :goto_0
    array-length v14, v0

    const/4 v15, 0x1

    if-ge v2, v14, :cond_6

    .line 181
    iget-object v14, v1, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v16

    add-long v18, v6, v8

    sub-long v10, v18, v16

    const/4 v14, 0x2

    cmp-long v18, v16, v8

    if-lez v18, :cond_2

    new-array v0, v14, [Ljava/lang/Object;

    .line 186
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v15

    const-string v2, "PlaylistEvent"

    const-string v3, "spurious current position %d v.s. duration %d"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 189
    :cond_2
    aget-object v15, v0, v2

    iget-wide v14, v15, Lo/tz;->b:J

    const-wide/16 v18, 0x32

    add-long v14, v14, v18

    cmp-long v18, v10, v14

    if-gtz v18, :cond_3

    .line 190
    aget-object v14, v0, v2

    invoke-virtual {v14, v4, v5, v10, v11}, Lo/tz;->b(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    .line 191
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v15, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v15, v11

    const-string v10, "PlaylistEvent"

    const-string v11, "dispatch segment end event [%b], delta %d"

    invoke-static {v10, v11, v15}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 192
    :cond_3
    aget-object v14, v0, v2

    invoke-virtual {v14}, Lo/tz;->d()Z

    move-result v14

    if-nez v14, :cond_4

    .line 193
    aget-object v12, v0, v2

    iget-wide v12, v12, Lo/tz;->b:J

    sub-long v12, v10, v12

    const-wide/16 v10, 0x0

    cmp-long v14, v12, v10

    if-lez v14, :cond_5

    goto :goto_2

    :cond_4
    :goto_1
    const-wide/16 v10, 0x0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const-wide/16 v10, 0x0

    :goto_2
    cmp-long v0, v12, v10

    if-lez v0, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "PlaylistEvent"

    const-string v3, "schedule segment end event process after %d"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    iget-object v0, v1, Lo/tq;->d:Landroid/os/Handler;

    iget-object v2, v1, Lo/tq;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, v1, Lo/tq;->d:Landroid/os/Handler;

    iget-object v2, v1, Lo/tq;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 164
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/tq;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-void
.end method

.method public c(Lo/Bq;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/tq;->h:Lo/Bq;

    return-void
.end method

.method public c(Lo/tz;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lo/tq;->j:Ljava/util/ArrayList;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lo/tq;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 2

    .line 152
    iget-object v0, p0, Lo/tq;->d:Landroid/os/Handler;

    iget-object v1, p0, Lo/tq;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    invoke-super {p0}, Lo/ty;->d()V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V
    .locals 0

    .line 49
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/tq;->e:Ljava/lang/String;

    return-void
.end method

.method public e(Lo/tq$Application;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lo/tq;->f:Lo/tq$Application;

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 136
    invoke-direct {p0}, Lo/tq;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "PlaylistEvent"

    const-string v4, "onPlayerStateChanged [%s] state [%d] %b"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    invoke-super {p0, p1, p2}, Lo/ty;->onPlayerStateChanged(ZI)V

    .line 141
    iget v1, p0, Lo/tq;->i:I

    if-gez v1, :cond_0

    if-eqz p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 142
    invoke-direct {p0}, Lo/tq;->j()V

    .line 144
    :cond_0
    iget p1, p0, Lo/tq;->o:I

    if-eq p1, p2, :cond_1

    if-ne p2, v3, :cond_1

    .line 145
    iget-object p1, p0, Lo/tq;->c:Lo/ta;

    invoke-interface {p1}, Lo/ta;->g()V

    .line 147
    :cond_1
    iput p2, p0, Lo/tq;->o:I

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 81
    invoke-direct {p0}, Lo/tq;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "PlaylistEvent"

    const-string v1, "onPositionDiscontinuity %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    iget p1, p0, Lo/tq;->i:I

    if-ltz p1, :cond_0

    .line 83
    invoke-direct {p0}, Lo/tq;->j()V

    :cond_0
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    invoke-direct {p0}, Lo/tq;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlaylistEvent"

    const-string v2, "onTimelineChanged %s / %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    invoke-super {p0, p1, p2}, Lo/ty;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lo/tq;->f:Lo/tq$Application;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Lo/tq$Application;->N_()V

    :cond_0
    return-void
.end method
