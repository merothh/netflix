.class public final Lo/uS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uS$ActionBar;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field public final c:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private d:[Lo/uS$ActionBar;

.field private e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Z)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    iput-wide v0, p0, Lo/uS;->b:J

    .line 67
    iput-wide v0, p0, Lo/uS;->a:J

    const/4 p1, 0x0

    new-array p1, p1, [Lo/uS$ActionBar;

    .line 68
    iput-object p1, p0, Lo/uS;->d:[Lo/uS$ActionBar;

    .line 69
    iput-boolean p2, p0, Lo/uS;->i:Z

    return-void
.end method

.method private static a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z
    .locals 4

    .line 239
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 241
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 242
    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public b(JJ)V
    .locals 2

    .line 80
    iput-wide p1, p0, Lo/uS;->b:J

    .line 81
    iput-wide p3, p0, Lo/uS;->a:J

    .line 82
    iget-object p1, p0, Lo/uS;->d:[Lo/uS$ActionBar;

    if-eqz p1, :cond_1

    .line 83
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1, p3, p4}, Lo/uS$ActionBar;->b(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public continueLoading(J)Z
    .locals 3

    .line 203
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lo/uS;->b:J

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 3

    .line 138
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lo/uS;->b:J

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 226
    iget-object p1, p0, Lo/uS;->e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(J)J
    .locals 3

    .line 208
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lo/uS;->b:J

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 210
    iget-wide v0, p0, Lo/uS;->b:J

    sub-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 7

    .line 165
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 166
    iget-wide v4, p0, Lo/uS;->a:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 170
    iget-wide v4, p0, Lo/uS;->b:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 7

    .line 193
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 194
    iget-wide v4, p0, Lo/uS;->a:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-wide v2, p0, Lo/uS;->b:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lo/uS;->e(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 4

    .line 220
    iget-wide v0, p0, Lo/uS;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lo/uS;->a:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 221
    iget-object p1, p0, Lo/uS;->e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 2

    .line 93
    iput-object p1, p0, Lo/uS;->e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 94
    iget-object p1, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v0, p0, Lo/uS;->b:J

    add-long/2addr v0, p2

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 9

    .line 143
    iget-boolean v0, p0, Lo/uS;->i:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lo/uS;->d:[Lo/uS$ActionBar;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    if-eqz v6, :cond_0

    .line 146
    invoke-virtual {v6}, Lo/uS$ActionBar;->b()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    :cond_1
    iput-boolean v3, p0, Lo/uS;->i:Z

    .line 151
    invoke-virtual {p0}, Lo/uS;->readDiscontinuity()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    return-wide v3

    .line 154
    :cond_3
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    return-wide v1

    .line 158
    :cond_4
    iget-wide v0, p0, Lo/uS;->b:J

    const/4 v2, 0x1

    cmp-long v6, v4, v0

    if-ltz v6, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 159
    iget-wide v0, p0, Lo/uS;->a:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_7

    cmp-long v6, v4, v0

    if-gtz v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_3
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 160
    iget-wide v0, p0, Lo/uS;->b:J

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public seekToUs(J)J
    .locals 5

    .line 175
    iget-object v0, p0, Lo/uS;->d:[Lo/uS$ActionBar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v3}, Lo/uS$ActionBar;->e()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lo/uS;->b:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    .line 185
    iget-wide v2, p0, Lo/uS;->b:J

    add-long/2addr p1, v2

    cmp-long v4, v0, p1

    if-eqz v4, :cond_3

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide p1, p0, Lo/uS;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_3

    cmp-long v2, v0, p1

    if-lez v2, :cond_3

    :cond_2
    const-string p1, "SegmentedMediaPeriod"

    const-string p2, "segment start time appears not consistent with video chunk, CHECK ChoiceMap!!!"

    .line 186
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    iget-wide p1, p0, Lo/uS;->b:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    .line 110
    array-length v0, v9

    new-array v0, v0, [Lo/uS$ActionBar;

    iput-object v0, v8, Lo/uS;->d:[Lo/uS$ActionBar;

    .line 111
    array-length v0, v9

    new-array v10, v0, [Lcom/google/android/exoplayer2/source/SampleStream;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    :goto_0
    array-length v2, v9

    const/4 v11, 0x0

    if-ge v1, v2, :cond_1

    .line 113
    iget-object v2, v8, Lo/uS;->d:[Lo/uS$ActionBar;

    aget-object v3, v9, v1

    check-cast v3, Lo/uS$ActionBar;

    aput-object v3, v2, v1

    .line 114
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2}, Lo/uS$ActionBar;->c(Lo/uS$ActionBar;)Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v11

    :cond_0
    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, v8, Lo/uS;->c:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, v8, Lo/uS;->b:J

    add-long v6, p5, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v12

    .line 118
    iget-boolean v1, v8, Lo/uS;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 119
    iget-wide v3, v8, Lo/uS;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    invoke-static/range {p1 .. p1}, Lo/uS;->a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v8, Lo/uS;->i:Z

    .line 121
    :cond_3
    iget-wide v3, v8, Lo/uS;->b:J

    add-long v5, p5, v3

    cmp-long v1, v12, v5

    if-eqz v1, :cond_5

    cmp-long v1, v12, v3

    if-ltz v1, :cond_4

    iget-wide v3, v8, Lo/uS;->a:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    cmp-long v1, v12, v3

    if-gtz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v14, 0x0

    .line 124
    :goto_3
    array-length v0, v9

    if-ge v14, v0, :cond_9

    .line 125
    aget-object v0, v10, v14

    if-nez v0, :cond_6

    .line 126
    iget-object v0, v8, Lo/uS;->d:[Lo/uS$ActionBar;

    aput-object v11, v0, v14

    goto :goto_4

    .line 127
    :cond_6
    aget-object v0, v9, v14

    if-eqz v0, :cond_7

    iget-object v0, v8, Lo/uS;->d:[Lo/uS$ActionBar;

    aget-object v0, v0, v14

    invoke-static {v0}, Lo/uS$ActionBar;->c(Lo/uS$ActionBar;)Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v0

    aget-object v1, v10, v14

    if-eq v0, v1, :cond_8

    .line 128
    :cond_7
    iget-object v15, v8, Lo/uS;->d:[Lo/uS$ActionBar;

    new-instance v16, Lo/uS$ActionBar;

    aget-object v2, v10, v14

    iget-wide v3, v8, Lo/uS;->b:J

    iget-wide v5, v8, Lo/uS;->a:J

    iget-boolean v7, v8, Lo/uS;->i:Z

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lo/uS$ActionBar;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;JJZ)V

    aput-object v16, v15, v14

    .line 131
    :cond_8
    :goto_4
    iget-object v0, v8, Lo/uS;->d:[Lo/uS$ActionBar;

    aget-object v0, v0, v14

    aput-object v0, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 133
    :cond_9
    iget-wide v0, v8, Lo/uS;->b:J

    sub-long/2addr v12, v0

    return-wide v12
.end method
