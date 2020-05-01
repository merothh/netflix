.class Lo/UncaughtExceptionHandler$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field c:J

.field d:Lo/UncaughtExceptionHandler$TaskDescription;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 401
    iput-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    return-void
.end method

.method private d()V
    .locals 1

    .line 415
    iget-object v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lo/UncaughtExceptionHandler$TaskDescription;

    invoke-direct {v0}, Lo/UncaughtExceptionHandler$TaskDescription;-><init>()V

    iput-object v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    :cond_0
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 407
    invoke-direct {p0}, Lo/UncaughtExceptionHandler$TaskDescription;->d()V

    .line 408
    iget-object v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lo/UncaughtExceptionHandler$TaskDescription;->a(I)V

    goto :goto_0

    .line 410
    :cond_0
    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    :goto_0
    return-void
.end method

.method b(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 433
    invoke-direct {p0}, Lo/UncaughtExceptionHandler$TaskDescription;->d()V

    .line 434
    iget-object v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lo/UncaughtExceptionHandler$TaskDescription;->b(I)Z

    move-result p1

    return p1

    .line 436
    :cond_0
    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(IZ)V
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 449
    invoke-direct {p0}, Lo/UncaughtExceptionHandler$TaskDescription;->d()V

    .line 450
    iget-object v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lo/UncaughtExceptionHandler$TaskDescription;->c(IZ)V

    goto :goto_2

    .line 452
    :cond_0
    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x1

    shl-long v6, v1, p1

    sub-long/2addr v6, v1

    .line 454
    iget-wide v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    and-long v8, v1, v6

    not-long v6, v6

    and-long/2addr v1, v6

    shl-long/2addr v1, v4

    or-long/2addr v1, v8

    .line 456
    iput-wide v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    if-eqz p2, :cond_2

    .line 458
    invoke-virtual {p0, p1}, Lo/UncaughtExceptionHandler$TaskDescription;->a(I)V

    goto :goto_1

    .line 460
    :cond_2
    invoke-virtual {p0, p1}, Lo/UncaughtExceptionHandler$TaskDescription;->e(I)V

    :goto_1
    if-nez v0, :cond_3

    .line 462
    iget-object p1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    if-eqz p1, :cond_4

    .line 463
    :cond_3
    invoke-direct {p0}, Lo/UncaughtExceptionHandler$TaskDescription;->d()V

    .line 464
    iget-object p1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    invoke-virtual {p1, v5, v0}, Lo/UncaughtExceptionHandler$TaskDescription;->c(IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method c(I)Z
    .locals 11

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 471
    invoke-direct {p0}, Lo/UncaughtExceptionHandler$TaskDescription;->d()V

    .line 472
    iget-object v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lo/UncaughtExceptionHandler$TaskDescription;->c(I)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    .line 475
    iget-wide v4, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    const/4 p1, 0x1

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 476
    :goto_0
    iget-wide v5, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    not-long v9, v2

    and-long/2addr v5, v9

    iput-wide v5, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    sub-long/2addr v2, v0

    .line 478
    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    and-long v5, v0, v2

    not-long v2, v2

    and-long/2addr v0, v2

    .line 480
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    or-long/2addr v0, v5

    .line 481
    iput-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    .line 482
    iget-object p1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    if-eqz p1, :cond_3

    .line 483
    invoke-virtual {p1, v8}, Lo/UncaughtExceptionHandler$TaskDescription;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x3f

    .line 484
    invoke-virtual {p0, p1}, Lo/UncaughtExceptionHandler$TaskDescription;->a(I)V

    .line 486
    :cond_2
    iget-object p1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    invoke-virtual {p1, v8}, Lo/UncaughtExceptionHandler$TaskDescription;->c(I)Z

    :cond_3
    return v4
.end method

.method d(I)I
    .locals 6

    .line 493
    iget-object v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    .line 495
    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    .line 497
    :cond_0
    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1
    if-ge p1, v1, :cond_2

    .line 500
    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    .line 502
    invoke-virtual {v0, p1}, Lo/UncaughtExceptionHandler$TaskDescription;->d(I)I

    move-result p1

    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 441
    iput-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    .line 442
    iget-object v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lo/UncaughtExceptionHandler$TaskDescription;->e()V

    :cond_0
    return-void
.end method

.method e(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 422
    iget-object v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    if-eqz v1, :cond_1

    sub-int/2addr p1, v0

    .line 423
    invoke-virtual {v1, p1}, Lo/UncaughtExceptionHandler$TaskDescription;->e(I)V

    goto :goto_0

    .line 426
    :cond_0
    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 508
    iget-object v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->d:Lo/UncaughtExceptionHandler$TaskDescription;

    .line 509
    invoke-virtual {v1}, Lo/UncaughtExceptionHandler$TaskDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/UncaughtExceptionHandler$TaskDescription;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
