.class public Lo/wA;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field public final d:I

.field public final e:J

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    iput-wide v0, p0, Lo/wA;->b:J

    .line 35
    iput-wide v0, p0, Lo/wA;->c:J

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/wA;->f:Ljava/util/List;

    .line 40
    invoke-static {p1}, Lo/ud;->c(Ljava/lang/String;)Lo/ud$ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    iget-wide v0, p1, Lo/ud$ActionBar;->d:J

    iput-wide v0, p0, Lo/wA;->e:J

    .line 43
    iget v0, p1, Lo/ud$ActionBar;->a:I

    iput v0, p0, Lo/wA;->d:I

    .line 44
    iget-object p1, p1, Lo/ud$ActionBar;->c:Ljava/lang/String;

    iput-object p1, p0, Lo/wA;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lo/wA;->e:J

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lo/wA;->d:I

    const-string p1, ""

    .line 48
    iput-object p1, p0, Lo/wA;->a:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/wA;->h:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;

    return-object v0
.end method

.method public a(JJ)V
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 110
    iget-wide v5, v0, Lo/wA;->b:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    const-string v1, "nf_playreport"

    const-string v2, "request was never started - cannot generate download trace"

    .line 111
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    iget-object v7, v0, Lo/wA;->f:Ljava/util/List;

    const/4 v8, 0x0

    sub-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-wide v5, v0, Lo/wA;->b:J

    sub-long v5, v1, v5

    .line 124
    iget-wide v7, v0, Lo/wA;->c:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    sub-long v11, v5, v7

    .line 125
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 127
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    long-to-int v14, v13

    const/4 v13, 0x1

    add-int/2addr v14, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 128
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    long-to-int v10, v9

    add-int/2addr v10, v13

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 130
    :goto_0
    iget-object v10, v0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gt v10, v9, :cond_1

    .line 131
    iget-object v10, v0, Lo/wA;->f:Ljava/util/List;

    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v14, v9, :cond_2

    .line 136
    iget-object v5, v0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v14, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    move v10, v14

    long-to-double v13, v3

    long-to-double v7, v7

    div-double/2addr v13, v7

    const-wide/16 v7, 0x0

    :goto_1
    if-gt v10, v9, :cond_5

    const-wide/16 v18, 0x3e8

    .line 147
    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    add-int/lit8 v1, v10, -0x1

    int-to-long v1, v1

    invoke-virtual {v15, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sub-long v1, v11, v1

    move-wide/from16 v20, v11

    const-wide/16 v11, 0x0

    cmp-long v15, v1, v11

    if-lez v15, :cond_3

    sub-long v18, v18, v1

    .line 151
    :cond_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v11, v10

    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sub-long/2addr v1, v5

    const-wide/16 v11, 0x0

    cmp-long v15, v1, v11

    if-lez v15, :cond_4

    sub-long v18, v18, v1

    :cond_4
    move-wide/from16 v1, v18

    long-to-double v1, v1

    mul-double v1, v1, v13

    double-to-long v1, v1

    .line 155
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 156
    iget-object v15, v0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-long v16, v16, v1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v15, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-long/2addr v7, v1

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v1, p1

    move-wide/from16 v11, v20

    goto :goto_1

    :cond_5
    cmp-long v1, v7, v3

    if-gez v1, :cond_6

    .line 164
    iget-object v1, v0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v2, v3, v7

    add-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-wide/from16 v1, p1

    .line 168
    :goto_2
    iput-wide v1, v0, Lo/wA;->c:J

    return-void
.end method

.method public c()J
    .locals 5

    .line 175
    iget-wide v0, p0, Lo/wA;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "nf_playreport"

    const-string v1, "request was never started - cannot generate duration"

    .line 176
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 179
    :cond_0
    iget-object v0, p0, Lo/wA;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 2

    .line 53
    iput-wide p1, p0, Lo/wA;->b:J

    .line 54
    iput-wide p1, p0, Lo/wA;->c:J

    .line 55
    iget-object p1, p0, Lo/wA;->f:Ljava/util/List;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/wA;->h:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;

    return-void
.end method

.method public d(Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 7

    .line 79
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    iget-object v0, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 83
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTotalTimeMs()Ljava/lang/Long;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTtfbMs()Ljava/lang/Long;

    move-result-object p1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 87
    invoke-virtual {p0}, Lo/wA;->c()J

    move-result-wide v2

    const/4 p1, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 92
    iget-object v2, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/lit16 v2, v2, -0x3e9

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    .line 93
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 94
    iget-object v2, p0, Lo/wA;->f:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_1
    iget-object v2, p0, Lo/wA;->f:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    .line 100
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 101
    :goto_0
    iget-object p1, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    .line 102
    iget-object p1, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public e()[Ljava/lang/Long;
    .locals 5

    .line 202
    iget-wide v0, p0, Lo/wA;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lo/wA;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
