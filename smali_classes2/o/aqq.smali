.class final Lo/aqq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aqm;


# instance fields
.field public final b:Lo/aqp;

.field public final c:Lo/aqk;

.field d:Z


# direct methods
.method constructor <init>(Lo/aqp;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lo/aqk;

    invoke-direct {v0}, Lo/aqk;-><init>()V

    iput-object v0, p0, Lo/aqq;->c:Lo/aqk;

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lo/aqq;->b:Lo/aqp;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lo/aqk;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 48
    iget-boolean v2, p0, Lo/aqq;->d:Z

    if-nez v2, :cond_1

    .line 50
    iget-object v2, p0, Lo/aqq;->c:Lo/aqk;

    iget-wide v2, v2, Lo/aqk;->a:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 51
    iget-object v0, p0, Lo/aqq;->b:Lo/aqp;

    iget-object v1, p0, Lo/aqq;->c:Lo/aqk;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lo/aqp;->a(Lo/aqk;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 55
    :cond_0
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    iget-wide v0, v0, Lo/aqk;->a:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 56
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    invoke-virtual {v0, p1, p2, p3}, Lo/aqk;->a(Lo/aqk;J)J

    move-result-wide p1

    return-wide p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lo/aqk;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    return-object v0
.end method

.method public b(Lokio/ByteString;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 386
    invoke-virtual {p0, p1, v0, v1}, Lo/aqq;->c(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 70
    iget-boolean v0, p0, Lo/aqq;->d:Z

    if-nez v0, :cond_2

    .line 71
    :cond_0
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    iget-wide v0, v0, Lo/aqk;->a:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 72
    iget-object v0, p0, Lo/aqq;->b:Lo/aqp;

    iget-object v1, p0, Lo/aqq;->c:Lo/aqk;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lo/aqp;->a(Lo/aqk;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lokio/ByteString;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 367
    invoke-virtual {p0, p1, v0, v1}, Lo/aqq;->e(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lokio/ByteString;J)J
    .locals 8

    .line 390
    iget-boolean v0, p0, Lo/aqq;->d:Z

    if-nez v0, :cond_2

    .line 393
    :goto_0
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    invoke-virtual {v0, p1, p2, p3}, Lo/aqk;->d(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 396
    :cond_0
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    iget-wide v0, v0, Lo/aqk;->a:J

    .line 397
    iget-object v4, p0, Lo/aqq;->b:Lo/aqp;

    iget-object v5, p0, Lo/aqq;->c:Lo/aqk;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lo/aqp;->a(Lo/aqk;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    return-wide v2

    .line 400
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    .line 390
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 474
    iget-boolean v0, p0, Lo/aqq;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lo/aqq;->d:Z

    .line 476
    iget-object v0, p0, Lo/aqq;->b:Lo/aqp;

    invoke-interface {v0}, Lo/aqp;->close()V

    .line 477
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    invoke-virtual {v0}, Lo/aqk;->j()V

    return-void
.end method

.method public e(Lo/aql;)I
    .locals 6

    .line 93
    iget-boolean v0, p0, Lo/aqq;->d:Z

    if-nez v0, :cond_3

    .line 96
    :cond_0
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lo/aqk;->b(Lo/aql;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 100
    iget-object v0, p0, Lo/aqq;->b:Lo/aqp;

    iget-object v2, p0, Lo/aqq;->c:Lo/aqk;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lo/aqp;->a(Lo/aqk;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_2
    iget-object p1, p1, Lo/aql;->e:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->b()I

    move-result p1

    .line 104
    iget-object v1, p0, Lo/aqq;->c:Lo/aqk;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lo/aqk;->e(J)V

    return v0

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lokio/ByteString;J)J
    .locals 8

    .line 371
    iget-boolean v0, p0, Lo/aqq;->d:Z

    if-nez v0, :cond_2

    .line 374
    :goto_0
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    invoke-virtual {v0, p1, p2, p3}, Lo/aqk;->b(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 377
    :cond_0
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    iget-wide v0, v0, Lo/aqk;->a:J

    .line 378
    iget-object v4, p0, Lo/aqq;->b:Lo/aqp;

    iget-object v5, p0, Lo/aqq;->c:Lo/aqk;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lo/aqp;->a(Lo/aqk;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    return-wide v2

    .line 381
    :cond_1
    invoke-virtual {p1}, Lokio/ByteString;->b()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    .line 371
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lo/aqq;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 153
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    iget-wide v0, v0, Lo/aqk;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 154
    iget-object v0, p0, Lo/aqq;->b:Lo/aqp;

    iget-object v1, p0, Lo/aqq;->c:Lo/aqk;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lo/aqp;->a(Lo/aqk;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 158
    :cond_0
    iget-object v0, p0, Lo/aqq;->c:Lo/aqk;

    invoke-virtual {v0, p1}, Lo/aqk;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aqq;->b:Lo/aqp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
