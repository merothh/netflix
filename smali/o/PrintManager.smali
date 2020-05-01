.class public final Lo/PrintManager;
.super Lo/PrinterInfo;
.source ""


# instance fields
.field private final d:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, v0}, Lo/PrinterInfo;-><init>(Lo/amc;)V

    iput-wide p1, p0, Lo/PrintManager;->d:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .locals 2

    .line 153
    iget-wide v0, p0, Lo/PrintManager;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/PrintManager;

    if-eqz v0, :cond_0

    check-cast p1, Lo/PrintManager;

    iget-wide v0, p0, Lo/PrintManager;->d:J

    iget-wide v2, p1, Lo/PrintManager;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public f()I
    .locals 2

    .line 154
    iget-wide v0, p0, Lo/PrintManager;->d:J

    long-to-int v1, v0

    return v1
.end method

.method public final g()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lo/PrintManager;->d:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lo/PrintManager;->d:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public j()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lo/PrintManager;->d:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonGraphPrimitiveLong(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/PrintManager;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
