.class public final Lo/uN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uN$Application;,
        Lo/uN$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/uK;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final c:I

.field private final d:Lo/uL$StateListAnimator;

.field private final e:Lo/uI;

.field private f:Ljava/lang/Long;

.field private g:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private h:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private i:Ljava/io/IOException;

.field private j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final k:Lo/tD;

.field private final l:Lo/uI$TaskDescription;

.field private m:J

.field private n:Landroid/os/Handler;

.field private o:Lcom/google/android/exoplayer2/ExoPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 48
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Ljava/lang/Long;Lo/uI;Lo/uL$StateListAnimator;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;Lo/tD;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Lo/uN$2;

    invoke-direct {v0, p0}, Lo/uN$2;-><init>(Lo/uN;)V

    iput-object v0, p0, Lo/uN;->l:Lo/uI$TaskDescription;

    .line 110
    iput-object p1, p0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 111
    iput-object p2, p0, Lo/uN;->f:Ljava/lang/Long;

    .line 112
    iput-object p3, p0, Lo/uN;->e:Lo/uI;

    .line 113
    iput-object p4, p0, Lo/uN;->d:Lo/uL$StateListAnimator;

    .line 114
    iput p5, p0, Lo/uN;->c:I

    .line 115
    new-instance p1, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {p1, p6, p7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object p1, p0, Lo/uN;->b:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 116
    iput-object p8, p0, Lo/uN;->k:Lo/tD;

    .line 117
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/uN;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lo/uI;Lo/uL$StateListAnimator;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;Lo/tD;)V
    .locals 9

    .line 86
    iget v0, p6, Lo/tD;->c:I

    add-int/lit8 v5, v0, -0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lo/uN;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Ljava/lang/Long;Lo/uI;Lo/uL$StateListAnimator;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;Lo/tD;)V

    return-void
.end method

.method static synthetic b(Lo/uN;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/uN;->o:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method private e()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    :goto_0
    iget-object v3, v0, Lo/uN;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 180
    iget-object v3, v0, Lo/uN;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 181
    iget-object v4, v0, Lo/uN;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/uK;

    iget-object v5, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4, v5, v3}, Lo/uK;->b(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v2, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 185
    iget-object v3, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    iget-object v4, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 186
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    .line 185
    invoke-static {v3, v4, v5}, Lo/uN$StateListAnimator;->c(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lo/uN$StateListAnimator;

    move-result-object v3

    .line 187
    iget-object v4, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 188
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    iget-object v5, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    .line 187
    invoke-static {v4, v5, v6}, Lo/uN$StateListAnimator;->c(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lo/uN$StateListAnimator;

    move-result-object v2

    .line 190
    iget-wide v10, v3, Lo/uN$StateListAnimator;->e:J

    .line 191
    iget-wide v2, v2, Lo/uN$StateListAnimator;->c:J

    sub-long/2addr v2, v10

    move-wide v12, v2

    const/4 v2, 0x0

    .line 193
    :goto_1
    iget-object v3, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 194
    iget-object v3, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v3

    add-long/2addr v12, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x0

    .line 197
    iget-object v2, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    iget-object v4, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 198
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    add-long/2addr v2, v4

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v4

    add-long v7, v2, v4

    .line 199
    new-instance v1, Lo/uN$Application;

    iget-object v2, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    const/4 v9, 0x0

    iget-object v2, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object v4, v1

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v16}, Lo/uN$Application;-><init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V

    .line 202
    iget-object v2, v0, Lo/uN;->g:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v3, v0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-interface {v2, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 12

    .line 144
    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    .line 145
    iget-object p1, p0, Lo/uN;->b:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v0, p0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 146
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->copyWithMediaTimeOffsetMs(J)Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v6

    .line 147
    new-instance p1, Lo/uK;

    iget-object v2, p0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v4, p0, Lo/uN;->d:Lo/uL$StateListAnimator;

    iget v5, p0, Lo/uN;->c:I

    iget-wide v7, p0, Lo/uN;->m:J

    iget-object v9, p0, Lo/uN;->h:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v11, p0, Lo/uN;->k:Lo/tD;

    move-object v0, p1

    move v1, v3

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Lo/uK;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILo/uL$StateListAnimator;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lo/tD;)V

    .line 150
    iget-object p2, p0, Lo/uN;->a:Landroid/util/SparseArray;

    iget v0, p1, Lo/uK;->b:I

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 3

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1001

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lo/uN;->i:Ljava/io/IOException;

    .line 393
    check-cast p2, Lo/uC;

    iput-object p2, p0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 394
    invoke-direct {p0}, Lo/uN;->e()V

    .line 395
    iget-object p1, p0, Lo/uN;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object p1, p0, Lo/uN;->e:Lo/uI;

    if-eqz p1, :cond_2

    .line 396
    iget-object p2, p0, Lo/uN;->f:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lo/uN;->l:Lo/uI$TaskDescription;

    invoke-interface {p1, v0, v1, p2}, Lo/uI;->d(JLo/uI$TaskDescription;)V

    goto :goto_0

    .line 385
    :cond_1
    check-cast p2, Ljava/io/IOException;

    iput-object p2, p0, Lo/uN;->i:Ljava/io/IOException;

    .line 386
    iget-object p1, p0, Lo/uN;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 388
    :cond_3
    iget-object p1, p0, Lo/uN;->i:Ljava/io/IOException;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    .line 136
    iget-object v0, p0, Lo/uN;->h:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 137
    iget-object v0, p0, Lo/uN;->i:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    throw v0
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 1

    .line 123
    iput-object p1, p0, Lo/uN;->o:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 124
    iput-object p3, p0, Lo/uN;->g:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 125
    new-instance p1, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lo/uN;->h:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 126
    iget-object p1, p0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lo/uN;->e()V

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/uN;->n:Landroid/os/Handler;

    .line 130
    iget-object p1, p0, Lo/uN;->e:Lo/uI;

    iget-object p2, p0, Lo/uN;->f:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-object v0, p0, Lo/uN;->l:Lo/uI$TaskDescription;

    invoke-interface {p1, p2, p3, v0}, Lo/uI;->b(JLo/uI$TaskDescription;)V

    :goto_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 156
    check-cast p1, Lo/uK;

    .line 157
    invoke-virtual {p1}, Lo/uK;->b()V

    .line 158
    iget-object v0, p0, Lo/uN;->a:Landroid/util/SparseArray;

    iget p1, p1, Lo/uK;->b:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public releaseSource()V
    .locals 6

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lo/uN;->o:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 164
    iput-object v0, p0, Lo/uN;->h:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 165
    iput-object v0, p0, Lo/uN;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 166
    iget-object v1, p0, Lo/uN;->n:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    iput-object v0, p0, Lo/uN;->n:Landroid/os/Handler;

    .line 170
    :cond_0
    iget-object v0, p0, Lo/uN;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lo/uN;->e:Lo/uI;

    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lo/uN;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lo/uN;->l:Lo/uI$TaskDescription;

    invoke-interface {v0, v4, v5, v1}, Lo/uI;->d(JLo/uI$TaskDescription;)V

    .line 173
    :cond_1
    iput-wide v2, p0, Lo/uN;->m:J

    .line 174
    iget-object v0, p0, Lo/uN;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
