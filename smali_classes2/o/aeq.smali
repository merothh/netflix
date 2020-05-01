.class public Lo/aeq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:J

.field private c:I

.field private final d:I

.field private e:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lo/aeq;->d:I

    .line 35
    iput-wide p2, p0, Lo/aeq;->a:J

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 9

    .line 42
    iget v0, p0, Lo/aeq;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/aeq;->c:I

    .line 43
    iget v0, p0, Lo/aeq;->c:I

    if-ne v0, v1, :cond_0

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lo/aeq;->e:J

    .line 47
    :cond_0
    iget v0, p0, Lo/aeq;->c:I

    iget v2, p0, Lo/aeq;->d:I

    const-string v3, "nf_RateLimiter"

    const/4 v4, 0x0

    if-le v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lo/aeq;->e:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lo/aeq;->a:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_1

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lo/aeq;->e:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    iget v2, p0, Lo/aeq;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "onNewEvent too fast mEventCounter=%d timeDuration=%d"

    invoke-static {v3, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 52
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lo/aeq;->e:J

    sub-long/2addr v0, v5

    iget-wide v5, p0, Lo/aeq;->a:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    const-string v0, "onNewEvent time window over, resetting mEventCounter"

    .line 53
    invoke-static {v3, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput v4, p0, Lo/aeq;->c:I

    :cond_2
    return v4
.end method
