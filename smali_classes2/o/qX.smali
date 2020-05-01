.class public Lo/qX;
.super Lcom/google/android/exoplayer2/text/TextRenderer;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lo/qY;

.field private c:Z

.field private final d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/xK;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;ZLo/qY;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/qX;->e:Ljava/util/Map;

    const-wide/high16 p1, -0x8000000000000000L

    .line 29
    iput-wide p1, p0, Lo/qX;->g:J

    .line 30
    iput-wide p1, p0, Lo/qX;->i:J

    .line 31
    iput-wide p1, p0, Lo/qX;->h:J

    .line 34
    iput-boolean p4, p0, Lo/qX;->d:Z

    .line 35
    iput-object p5, p0, Lo/qX;->b:Lo/qY;

    return-void
.end method

.method private a()V
    .locals 4

    .line 110
    iget-object v0, p0, Lo/qX;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lo/qX;->e:Ljava/util/Map;

    iget-object v1, p0, Lo/qX;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xK;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lo/xK;

    iget-object v1, p0, Lo/qX;->a:Ljava/lang/String;

    iget v2, p0, Lo/qX;->renderCount:I

    iget v3, p0, Lo/qX;->skipCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lo/qX;->renderCount:I

    invoke-direct {v0, v1, v2, v3}, Lo/xK;-><init>(Ljava/lang/String;II)V

    .line 114
    iget-object v1, p0, Lo/qX;->e:Ljava/util/Map;

    iget-object v2, p0, Lo/qX;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_1
    iget v1, p0, Lo/qX;->renderCount:I

    iget v2, p0, Lo/qX;->skipCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lo/qX;->renderCount:I

    invoke-virtual {v0, v1, v2}, Lo/xK;->a(II)V

    :goto_0
    return-void
.end method

.method private b()Z
    .locals 5

    .line 129
    iget-wide v0, p0, Lo/qX;->i:J

    iget-wide v2, p0, Lo/qX;->h:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lo/qX;->streamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/qX;->streamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    const-string v1, "application/nflx-cmisc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isReady()Z
    .locals 10

    .line 75
    iget-boolean v0, p0, Lo/qX;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/qX;->hasSubtitleOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/qX;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/qX;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/qX;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 76
    :goto_1
    iget-boolean v3, p0, Lo/qX;->c:Z

    if-eq v3, v0, :cond_8

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 82
    iget-boolean v5, p0, Lo/qX;->c:Z

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lo/qX;->g:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 83
    iget-boolean v7, p0, Lo/qX;->c:Z

    const-string v8, " ready"

    const-string v9, " not ready"

    if-eqz v7, :cond_3

    move-object v7, v8

    goto :goto_3

    :cond_3
    move-object v7, v9

    :goto_3
    aput-object v7, v6, v1

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move-object v8, v9

    :goto_4
    aput-object v8, v6, v2

    const/4 v1, 0x2

    if-eqz v5, :cond_5

    const-string v2, ", ignored!"

    goto :goto_5

    :cond_5
    const-string v2, ""

    :goto_5
    aput-object v2, v6, v1

    const-string v1, "NetflixTextRenderer"

    const-string v2, "%s = > %s %s"

    invoke-static {v1, v2, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v5, :cond_6

    .line 84
    iget-boolean v0, p0, Lo/qX;->c:Z

    :cond_6
    if-eqz v0, :cond_7

    .line 86
    iput-wide v3, p0, Lo/qX;->g:J

    .line 88
    :cond_7
    iput-boolean v0, p0, Lo/qX;->c:Z

    :cond_8
    return v0
.end method

.method public onPositionReset(JZ)V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 67
    iput-wide v0, p0, Lo/qX;->g:J

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;->onPositionReset(JZ)V

    .line 69
    iput-wide p1, p0, Lo/qX;->h:J

    .line 70
    iput-wide v0, p0, Lo/qX;->i:J

    return-void
.end method

.method public onStopped()V
    .locals 3

    .line 40
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->onStopped()V

    .line 41
    invoke-direct {p0}, Lo/qX;->a()V

    .line 42
    iget-object v0, p0, Lo/qX;->b:Lo/qY;

    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/qX;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lo/qY;->e(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .locals 3

    .line 55
    invoke-direct {p0}, Lo/qX;->a()V

    const/4 v0, 0x0

    .line 56
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object v1, p0, Lo/qX;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    const-string v2, "onStreamChanged %s"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V

    .line 59
    iget-object p2, p0, Lo/qX;->b:Lo/qY;

    if-eqz p2, :cond_0

    .line 60
    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lo/qS;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "subtitleLoaded"

    invoke-virtual {p2, p3, p1}, Lo/qY;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public readTextSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;->readTextSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    .line 96
    invoke-direct {p0}, Lo/qX;->e()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 98
    :try_start_0
    iget-object p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-static {p3}, Lo/qC;->e([B)I

    move-result p3

    if-lez p3, :cond_0

    .line 100
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lo/qX;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p1
.end method

.method public render(JJ)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/text/TextRenderer;->render(JJ)V

    .line 50
    iput-wide p1, p0, Lo/qX;->h:J

    return-void
.end method
