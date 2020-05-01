.class final Lo/uP$TaskDescription;
.super Lcom/google/android/exoplayer2/Timeline;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private final b:Lo/uF;

.field private final c:Lcom/google/android/exoplayer2/Timeline;

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;JJLo/uF;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 165
    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    invoke-virtual {v1, v5, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v4

    .line 166
    iget-boolean v7, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    xor-int/2addr v7, v6

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, p4, v7

    if-nez v9, :cond_2

    .line 167
    iget-wide v7, v4, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p4

    .line 168
    :goto_2
    iget-wide v9, v4, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v13, 0x0

    cmp-long v15, v9, v11

    if-eqz v15, :cond_7

    .line 169
    iget-wide v9, v4, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    .line 170
    iget-wide v7, v4, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    :cond_3
    cmp-long v9, v2, v13

    if-eqz v9, :cond_5

    .line 172
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    cmp-long v4, v2, v7

    if-gtz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 173
    :goto_5
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 175
    :cond_7
    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    invoke-virtual {v1, v5, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v9

    cmp-long v4, v9, v13

    if-nez v4, :cond_8

    const/4 v5, 0x1

    :cond_8
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 177
    iput-object v1, v0, Lo/uP$TaskDescription;->c:Lcom/google/android/exoplayer2/Timeline;

    .line 178
    iput-wide v2, v0, Lo/uP$TaskDescription;->e:J

    .line 179
    iput-wide v7, v0, Lo/uP$TaskDescription;->d:J

    move-object/from16 v1, p6

    .line 180
    iput-object v1, v0, Lo/uP$TaskDescription;->b:Lo/uF;

    return-void
.end method

.method static synthetic b(Lo/uP$TaskDescription;)J
    .locals 2

    .line 146
    iget-wide v0, p0, Lo/uP$TaskDescription;->d:J

    return-wide v0
.end method

.method static synthetic c(Lo/uP$TaskDescription;)J
    .locals 2

    .line 146
    iget-wide v0, p0, Lo/uP$TaskDescription;->e:J

    return-wide v0
.end method

.method static synthetic e(Lo/uP$TaskDescription;)Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    .line 146
    iget-object p0, p0, Lo/uP$TaskDescription;->c:Lcom/google/android/exoplayer2/Timeline;

    return-object p0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1

    .line 236
    iget-object v0, p0, Lo/uP$TaskDescription;->c:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getNextWindowIndex(II)I
    .locals 1

    .line 190
    iget-object v0, p0, Lo/uP$TaskDescription;->c:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(II)I

    move-result p1

    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 3

    .line 229
    iget-object p1, p0, Lo/uP$TaskDescription;->c:Lcom/google/android/exoplayer2/Timeline;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    .line 230
    iget-wide p2, p0, Lo/uP$TaskDescription;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lo/uP$TaskDescription;->e:J

    sub-long v0, p2, v0

    :cond_0
    iput-wide v0, p1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-object p1
.end method

.method public getPeriodCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 6

    .line 201
    iget-object v0, p0, Lo/uP$TaskDescription;->c:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    .line 202
    iget-wide p4, p0, Lo/uP$TaskDescription;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p4, v0

    if-eqz p2, :cond_0

    iget-wide v2, p0, Lo/uP$TaskDescription;->e:J

    sub-long/2addr p4, v2

    goto :goto_0

    :cond_0
    move-wide p4, v0

    :goto_0
    iput-wide p4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 203
    iget-wide p4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long p2, p4, v0

    if-eqz p2, :cond_2

    .line 204
    iget-wide p4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lo/uP$TaskDescription;->e:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 205
    iget-wide p4, p0, Lo/uP$TaskDescription;->d:J

    cmp-long p2, p4, v0

    iget-wide p4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lo/uP$TaskDescription;->d:J

    .line 206
    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :goto_1
    iput-wide p4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 207
    iget-wide p4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lo/uP$TaskDescription;->e:J

    sub-long/2addr p4, v2

    iput-wide p4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 209
    :cond_2
    iget-wide p4, p0, Lo/uP$TaskDescription;->e:J

    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide p4

    .line 210
    iget-wide v2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_3

    .line 211
    iget-wide v2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    .line 213
    :cond_3
    iget-wide v2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_4

    .line 214
    iget-wide v0, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    :cond_4
    if-eqz p3, :cond_5

    .line 217
    iget-object p2, p0, Lo/uP$TaskDescription;->b:Lo/uF;

    iput-object p2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->id:Ljava/lang/Object;

    :cond_5
    return-object p1
.end method

.method public getWindowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
