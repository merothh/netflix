.class public final Lo/uQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private final e:Lo/tD;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;Lo/tD;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/uQ;->a:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 19
    iput-object p2, p0, Lo/uQ;->e:Lo/tD;

    return-void
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v4, 0x0

    .line 53
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/uQ;->getNextLoadPositionUs()J

    move-result-wide v5

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    iget-object v7, v0, Lo/uQ;->a:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v8, :cond_4

    aget-object v11, v7, v9

    .line 58
    invoke-interface {v11}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v12

    sub-long v14, v12, v1

    .line 63
    iget-object v3, v0, Lo/uQ;->e:Lo/tD;

    iget v3, v3, Lo/tD;->e:I

    mul-int/lit16 v3, v3, 0x3e8

    move-object/from16 v16, v7

    move/from16 v17, v8

    int-to-long v7, v3

    cmp-long v3, v14, v7

    if-ltz v3, :cond_2

    iget-object v3, v0, Lo/uQ;->e:Lo/tD;

    iget v3, v3, Lo/tD;->j:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v7, v3

    add-long/2addr v7, v5

    cmp-long v3, v12, v7

    if-gez v3, :cond_3

    .line 68
    :cond_2
    invoke-interface {v11, v1, v2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v3

    or-int/2addr v3, v10

    move v10, v3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_0

    :cond_4
    or-int/2addr v4, v10

    if-nez v10, :cond_0

    :goto_1
    return v4
.end method

.method public final getBufferedPositionUs()J
    .locals 12

    .line 25
    iget-object v0, p0, Lo/uQ;->a:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    .line 26
    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_0

    .line 28
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    move-wide v5, v7

    :cond_2
    return-wide v5
.end method

.method public final getNextLoadPositionUs()J
    .locals 12

    .line 37
    iget-object v0, p0, Lo/uQ;->a:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    .line 38
    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_0

    .line 40
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    move-wide v5, v7

    :cond_2
    return-wide v5
.end method
