.class public Lo/tF;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lo/tF;->b:J

    .line 23
    iput-wide p3, p0, Lo/tF;->e:J

    .line 24
    iput-wide p5, p0, Lo/tF;->c:J

    .line 25
    iput-wide p7, p0, Lo/tF;->d:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lo/tF;->e:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lo/tF;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lo/tF;->b:J

    return-wide v0
.end method

.method public f()J
    .locals 4

    .line 41
    iget-wide v0, p0, Lo/tF;->c:J

    iget-wide v2, p0, Lo/tF;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lo/tF;->d:J

    return-wide v0
.end method

.method public h()J
    .locals 4

    .line 49
    iget-wide v0, p0, Lo/tF;->b:J

    iget-wide v2, p0, Lo/tF;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChunkInfo{pts=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lo/tF;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/tF;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms), bytes=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lo/tF;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/tF;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
