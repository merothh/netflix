.class abstract Lo/s;
.super Lo/O;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/s$Application;
    }
.end annotation


# instance fields
.field private final c:I

.field private final e:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/O;-><init>()V

    .line 17
    iput p1, p0, Lo/s;->c:I

    .line 18
    iput p2, p0, Lo/s;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryAfterSeconds"
    .end annotation

    .line 30
    iget v0, p0, Lo/s;->e:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxRetries"
    .end annotation

    .line 24
    iget v0, p0, Lo/s;->c:I

    return v0
.end method

.method protected d()Lo/O$TaskDescription;
    .locals 2

    .line 66
    new-instance v0, Lo/s$Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/s$Application;-><init>(Lo/O;Lo/s$2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lo/O;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    check-cast p1, Lo/O;

    .line 48
    iget v1, p0, Lo/s;->c:I

    invoke-virtual {p1}, Lo/O;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/s;->e:I

    .line 49
    invoke-virtual {p1}, Lo/O;->a()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 58
    iget v0, p0, Lo/s;->c:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 60
    iget v1, p0, Lo/s;->e:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerRetryPolicy{maxRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/s;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryAfterSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/s;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
