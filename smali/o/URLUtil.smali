.class abstract Lo/URLUtil;
.super Lo/ValueCallback;
.source ""


# instance fields
.field private final c:J

.field private final d:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/ValueCallback;-><init>()V

    .line 17
    iput p1, p0, Lo/URLUtil;->d:I

    .line 18
    iput-wide p2, p0, Lo/URLUtil;->c:J

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstSeenTime"
    .end annotation

    .line 30
    iget-wide v0, p0, Lo/URLUtil;->c:J

    return-wide v0
.end method

.method public e()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api"
    .end annotation

    .line 24
    iget v0, p0, Lo/URLUtil;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lo/ValueCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    check-cast p1, Lo/ValueCallback;

    .line 48
    iget v1, p0, Lo/URLUtil;->d:I

    invoke-virtual {p1}, Lo/ValueCallback;->e()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lo/URLUtil;->c:J

    .line 49
    invoke-virtual {p1}, Lo/ValueCallback;->b()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 58
    iget v0, p0, Lo/URLUtil;->d:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 60
    iget-wide v1, p0, Lo/URLUtil;->c:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentOsInfo{apiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/URLUtil;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstSeenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/URLUtil;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
