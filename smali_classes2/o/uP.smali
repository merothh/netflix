.class public final Lo/uP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;
.implements Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uP$ActionBar;,
        Lo/uP$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Z

.field private final c:Lcom/google/android/exoplayer2/source/MediaSource;

.field private d:J

.field private final e:J

.field private f:Lcom/google/android/exoplayer2/ExoPlayer;

.field private g:Lo/uP$TaskDescription;

.field private h:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/uS;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/uF;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;JJLo/uF;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v7, p6

    .line 66
    invoke-direct/range {v0 .. v7}, Lo/uP;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJZLo/uF;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;JJZLo/uF;)V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 88
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object p1, p0, Lo/uP;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 89
    iput-wide p2, p0, Lo/uP;->a:J

    .line 90
    iput-wide p4, p0, Lo/uP;->e:J

    iput-wide p4, p0, Lo/uP;->d:J

    .line 91
    iput-boolean p6, p0, Lo/uP;->b:Z

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/uP;->i:Ljava/util/ArrayList;

    .line 93
    iput-object p7, p0, Lo/uP;->j:Lo/uF;

    return-void
.end method

.method private b(Lo/uP$ActionBar;)V
    .locals 14

    .line 269
    invoke-static {p1}, Lo/uP$ActionBar;->e(Lo/uP$ActionBar;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lo/uP;->e:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/uP;->a:J

    invoke-static {p1}, Lo/uP$ActionBar;->e(Lo/uP$ActionBar;)J

    move-result-wide v4

    add-long/2addr v0, v4

    :goto_0
    const/4 p1, 0x0

    const/4 v4, 0x1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v0, v5

    if-eqz v7, :cond_2

    .line 270
    iget-wide v8, p0, Lo/uP;->a:J

    cmp-long v10, v0, v8

    if-lez v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    const-string v9, "resolved endUs must be after startUs"

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v7, :cond_4

    .line 271
    iget-wide v7, p0, Lo/uP;->e:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_4

    cmp-long v9, v0, v7

    if-gtz v9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_3
    const-string v7, "resolved endUs must be before originalEndUs"

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 272
    iget-wide v7, p0, Lo/uP;->d:J

    cmp-long v4, v7, v0

    if-nez v4, :cond_5

    return-void

    .line 275
    :cond_5
    iput-wide v0, p0, Lo/uP;->d:J

    .line 276
    iget-object v0, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    if-eqz v0, :cond_8

    .line 277
    new-instance v1, Lo/uP$TaskDescription;

    invoke-static {v0}, Lo/uP$TaskDescription;->e(Lo/uP$TaskDescription;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v8

    iget-wide v9, p0, Lo/uP;->a:J

    iget-wide v11, p0, Lo/uP;->d:J

    iget-object v13, p0, Lo/uP;->j:Lo/uF;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lo/uP$TaskDescription;-><init>(Lcom/google/android/exoplayer2/Timeline;JJLo/uF;)V

    iput-object v1, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    .line 278
    iget-object v0, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    invoke-static {v0}, Lo/uP$TaskDescription;->c(Lo/uP$TaskDescription;)J

    move-result-wide v0

    .line 279
    iget-object v4, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    invoke-static {v4}, Lo/uP$TaskDescription;->b(Lo/uP$TaskDescription;)J

    move-result-wide v7

    cmp-long v4, v7, v2

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    .line 280
    invoke-static {v2}, Lo/uP$TaskDescription;->b(Lo/uP$TaskDescription;)J

    move-result-wide v5

    .line 281
    :goto_4
    iget-object v2, p0, Lo/uP;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    if-ge p1, v2, :cond_7

    .line 283
    iget-object v3, p0, Lo/uP;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/uS;

    invoke-virtual {v3, v0, v1, v5, v6}, Lo/uS;->b(JJ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 285
    :cond_7
    iget-object p1, p0, Lo/uP;->h:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v0, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 3

    .line 110
    new-instance v0, Lo/uS;

    iget-object v1, p0, Lo/uP;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 111
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iget-boolean p2, p0, Lo/uP;->b:Z

    invoke-direct {v0, p1, p2}, Lo/uS;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Z)V

    .line 112
    iget-object p1, p0, Lo/uP;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    invoke-static {p1}, Lo/uP$TaskDescription;->c(Lo/uP$TaskDescription;)J

    move-result-wide p1

    iget-object v1, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    invoke-static {v1}, Lo/uP$TaskDescription;->b(Lo/uP$TaskDescription;)J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lo/uS;->b(JJ)V

    return-object v0
.end method

.method public e(J)V
    .locals 6

    .line 254
    iget-object v0, p0, Lo/uP;->f:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v2, 0x0

    .line 255
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/16 v4, 0x1000

    new-instance v5, Lo/uP$ActionBar;

    invoke-direct {v5, p1, p2}, Lo/uP$ActionBar;-><init>(J)V

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    :cond_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    check-cast p2, Lo/uP$ActionBar;

    invoke-direct {p0, p2}, Lo/uP;->b(Lo/uP$ActionBar;)V

    :goto_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    .line 105
    iget-object v0, p0, Lo/uP;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 8

    .line 132
    new-instance v7, Lo/uP$TaskDescription;

    iget-wide v2, p0, Lo/uP;->a:J

    iget-wide v4, p0, Lo/uP;->d:J

    iget-object v6, p0, Lo/uP;->j:Lo/uF;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lo/uP$TaskDescription;-><init>(Lcom/google/android/exoplayer2/Timeline;JJLo/uF;)V

    iput-object v7, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    .line 133
    iget-object p1, p0, Lo/uP;->h:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v0, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    invoke-static {p1}, Lo/uP$TaskDescription;->c(Lo/uP$TaskDescription;)J

    move-result-wide p1

    .line 135
    iget-object v0, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    invoke-static {v0}, Lo/uP$TaskDescription;->b(Lo/uP$TaskDescription;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/uP;->g:Lo/uP$TaskDescription;

    .line 136
    invoke-static {v0}, Lo/uP$TaskDescription;->b(Lo/uP$TaskDescription;)J

    move-result-wide v0

    .line 137
    :goto_0
    iget-object v2, p0, Lo/uP;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 139
    iget-object v4, p0, Lo/uP;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/uS;

    invoke-virtual {v4, p1, p2, v0, v1}, Lo/uS;->b(JJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lo/uP;->f:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 99
    iput-object p3, p0, Lo/uP;->h:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 100
    iget-object p2, p0, Lo/uP;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/uP;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 120
    iget-object v0, p0, Lo/uP;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    check-cast p1, Lo/uS;

    iget-object p1, p1, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSource()V
    .locals 1

    .line 125
    iget-object v0, p0, Lo/uP;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    return-void
.end method
