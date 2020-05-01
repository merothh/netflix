.class public abstract Lo/aoG$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lo/aoA;
.implements Lo/apS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aoG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lo/aoG$Activity;",
        ">;",
        "Lo/aoA;",
        "Lo/apS;"
    }
.end annotation


# instance fields
.field public b:J

.field private c:I

.field private e:Ljava/lang/Object;


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lo/aoG$Activity;->e:Ljava/lang/Object;

    .line 472
    invoke-static {}, Lo/aoJ;->b()Lo/apN;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 474
    :cond_0
    :try_start_1
    instance-of v1, v0, Lo/aoG$Application;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lo/aoG$Application;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lo/apS;

    invoke-virtual {v0, v1}, Lo/aoG$Application;->a(Lo/apS;)Z

    .line 475
    :cond_2
    invoke-static {}, Lo/aoJ;->b()Lo/apN;

    move-result-object v0

    iput-object v0, p0, Lo/aoG$Activity;->e:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lo/apU;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/apU<",
            "*>;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lo/aoG$Activity;->e:Ljava/lang/Object;

    instance-of v1, v0, Lo/apU;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/apU;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 413
    iget v0, p0, Lo/aoG$Activity;->c:I

    return v0
.end method

.method public c(Lo/aoG$Activity;)I
    .locals 4

    .line 416
    iget-wide v0, p0, Lo/aoG$Activity;->b:J

    iget-wide v2, p1, Lo/aoG$Activity;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(J)Z
    .locals 3

    .line 424
    iget-wide v0, p0, Lo/aoG$Activity;->b:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 397
    check-cast p1, Lo/aoG$Activity;

    invoke-virtual {p0, p1}, Lo/aoG$Activity;->c(Lo/aoG$Activity;)I

    move-result p1

    return p1
.end method

.method public d(I)V
    .locals 0

    .line 413
    iput p1, p0, Lo/aoG$Activity;->c:I

    return-void
.end method

.method public final declared-synchronized e(JLo/aoG$Application;Lo/aoG;)I
    .locals 9

    monitor-enter p0

    .line 428
    :try_start_0
    iget-object v0, p0, Lo/aoG$Activity;->e:Ljava/lang/Object;

    invoke-static {}, Lo/aoJ;->b()Lo/apN;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 429
    :cond_0
    :try_start_1
    move-object v0, p3

    check-cast v0, Lo/apU;

    move-object v1, p0

    check-cast v1, Lo/apS;

    .line 527
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    :try_start_2
    invoke-virtual {v0}, Lo/apU;->c()Lo/apS;

    move-result-object v2

    check-cast v2, Lo/aoG$Activity;

    .line 430
    invoke-static {p4}, Lo/aoG;->e(Lo/aoG;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return p1

    :cond_1
    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    .line 443
    :try_start_4
    iput-wide p1, p3, Lo/aoG$Application;->b:J

    goto :goto_1

    .line 450
    :cond_2
    iget-wide v5, v2, Lo/aoG$Activity;->b:J

    sub-long v7, v5, p1

    cmp-long p4, v7, v3

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    move-wide p1, v5

    .line 454
    :goto_0
    iget-wide v5, p3, Lo/aoG$Application;->b:J

    sub-long v5, p1, v5

    cmp-long p4, v5, v3

    if-lez p4, :cond_4

    iput-wide p1, p3, Lo/aoG$Application;->b:J

    .line 463
    :cond_4
    :goto_1
    iget-wide p1, p0, Lo/aoG$Activity;->b:J

    iget-wide v5, p3, Lo/aoG$Application;->b:J

    sub-long/2addr p1, v5

    cmp-long p4, p1, v3

    if-gez p4, :cond_5

    iget-wide p1, p3, Lo/aoG$Application;->b:J

    iput-wide p1, p0, Lo/aoG$Activity;->b:J

    .line 529
    :cond_5
    invoke-virtual {v0, v1}, Lo/apU;->d(Lo/apS;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 p1, 0x0

    .line 466
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 533
    :try_start_6
    monitor-exit v0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Lo/apU;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/apU<",
            "*>;)V"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lo/aoG$Activity;->e:Ljava/lang/Object;

    invoke-static {}, Lo/aoJ;->b()Lo/apN;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 410
    iput-object p1, p0, Lo/aoG$Activity;->e:Ljava/lang/Object;

    return-void

    .line 409
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/aoG$Activity;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
