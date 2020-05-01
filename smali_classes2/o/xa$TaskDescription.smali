.class Lo/xa$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 207
    iput-wide v0, p0, Lo/xa$TaskDescription;->b:J

    .line 208
    iput-wide v0, p0, Lo/xa$TaskDescription;->c:J

    return-void
.end method


# virtual methods
.method c()J
    .locals 2

    .line 275
    iget-wide v0, p0, Lo/xa$TaskDescription;->a:J

    return-wide v0
.end method

.method public c(JJJ)V
    .locals 4

    .line 222
    iget-wide v0, p0, Lo/xa$TaskDescription;->c:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    return-void

    .line 226
    :cond_0
    iget-wide v2, p0, Lo/xa$TaskDescription;->a:J

    add-long/2addr v2, p5

    iput-wide v2, p0, Lo/xa$TaskDescription;->a:J

    .line 227
    iget-wide p5, p0, Lo/xa$TaskDescription;->d:J

    sub-long v2, p3, p1

    add-long/2addr p5, v2

    iput-wide p5, p0, Lo/xa$TaskDescription;->d:J

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, p5

    if-eqz v2, :cond_1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 241
    iget-wide v2, p0, Lo/xa$TaskDescription;->d:J

    sub-long/2addr v0, p1

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lo/xa$TaskDescription;->d:J

    .line 243
    iget-wide v0, p0, Lo/xa$TaskDescription;->b:J

    cmp-long v2, v0, p5

    if-eqz v2, :cond_1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 256
    iget-wide v2, p0, Lo/xa$TaskDescription;->d:J

    sub-long/2addr v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/xa$TaskDescription;->d:J

    .line 259
    :cond_1
    iget-wide v0, p0, Lo/xa$TaskDescription;->c:J

    cmp-long v2, v0, p5

    if-eqz v2, :cond_2

    cmp-long v2, p3, v0

    if-lez v2, :cond_3

    .line 260
    :cond_2
    iput-wide p3, p0, Lo/xa$TaskDescription;->c:J

    .line 262
    :cond_3
    iget-wide p3, p0, Lo/xa$TaskDescription;->b:J

    cmp-long v0, p3, p5

    if-eqz v0, :cond_4

    cmp-long p5, p1, p3

    if-ltz p5, :cond_4

    iget-wide p3, p0, Lo/xa$TaskDescription;->c:J

    cmp-long p5, p1, p3

    if-gez p5, :cond_5

    .line 263
    :cond_4
    iput-wide p1, p0, Lo/xa$TaskDescription;->b:J

    :cond_5
    return-void
.end method

.method d()J
    .locals 2

    .line 279
    iget-wide v0, p0, Lo/xa$TaskDescription;->d:J

    return-wide v0
.end method

.method public d(Lorg/chromium/net/RequestFinishedInfo$Metrics;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTotalTimeMs()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTtfbMs()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 215
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTotalTimeMs()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTtfbMs()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 216
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, p0

    .line 218
    invoke-virtual/range {v1 .. v7}, Lo/xa$TaskDescription;->c(JJJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()J
    .locals 6

    .line 271
    iget-wide v0, p0, Lo/xa$TaskDescription;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x8

    iget-wide v4, p0, Lo/xa$TaskDescription;->a:J

    mul-long v4, v4, v2

    div-long v2, v4, v0

    :cond_0
    return-wide v2
.end method
