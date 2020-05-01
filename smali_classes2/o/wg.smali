.class abstract Lo/wg;
.super Lo/wB;
.source ""


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/wB;-><init>()V

    .line 27
    iput-object p1, p0, Lo/wg;->c:Ljava/lang/String;

    .line 28
    iput p2, p0, Lo/wg;->d:I

    .line 29
    iput p3, p0, Lo/wg;->a:I

    .line 30
    iput-boolean p4, p0, Lo/wg;->b:Z

    .line 31
    iput-boolean p5, p0, Lo/wg;->e:Z

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exoDlReportDenominator"
    .end annotation

    .line 44
    iget v0, p0, Lo/wg;->d:I

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupName"
    .end annotation

    .line 38
    iget-object v0, p0, Lo/wg;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableStateTrace"
    .end annotation

    .line 62
    iget-boolean v0, p0, Lo/wg;->e:Z

    return v0
.end method

.method protected d()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableDlreportErrorLogs"
    .end annotation

    .line 56
    iget-boolean v0, p0, Lo/wg;->b:Z

    return v0
.end method

.method protected e()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aseReportDenominator"
    .end annotation

    .line 50
    iget v0, p0, Lo/wg;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lo/wB;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 82
    check-cast p1, Lo/wB;

    .line 83
    iget-object v1, p0, Lo/wg;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/wB;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/wB;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Lo/wg;->d:I

    .line 84
    invoke-virtual {p1}, Lo/wB;->a()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lo/wg;->a:I

    .line 85
    invoke-virtual {p1}, Lo/wB;->e()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/wg;->b:Z

    .line 86
    invoke-virtual {p1}, Lo/wB;->d()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/wg;->e:Z

    .line 87
    invoke-virtual {p1}, Lo/wB;->c()Z

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 96
    iget-object v0, p0, Lo/wg;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 98
    iget v2, p0, Lo/wg;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 100
    iget v2, p0, Lo/wg;->a:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 102
    iget-boolean v2, p0, Lo/wg;->b:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 104
    iget-boolean v1, p0, Lo/wg;->e:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x4d5

    :goto_2
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackReporterConfig{groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/wg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exoDlReportDenominator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/wg;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aseReportDenominator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/wg;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableDlReportErrorLogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/wg;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableStateTrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/wg;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
