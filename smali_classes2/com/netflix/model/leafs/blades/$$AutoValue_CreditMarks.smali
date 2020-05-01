.class abstract Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;
.super Lcom/netflix/model/leafs/blades/CreditMarks;
.source ""


# instance fields
.field private final endCredit:I

.field private final endRecap:I

.field private final startCredit:I

.field private final startRecap:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;-><init>()V

    .line 23
    iput p1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startCredit:I

    .line 24
    iput p2, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endCredit:I

    .line 25
    iput p3, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startRecap:I

    .line 26
    iput p4, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endRecap:I

    return-void
.end method


# virtual methods
.method public endCredit()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endcredit"
    .end annotation

    .line 38
    iget v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endCredit:I

    return v0
.end method

.method public endRecap()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endrecap"
    .end annotation

    .line 50
    iget v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endRecap:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/blades/CreditMarks;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 69
    check-cast p1, Lcom/netflix/model/leafs/blades/CreditMarks;

    .line 70
    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startCredit:I

    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/CreditMarks;->startCredit()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endCredit:I

    .line 71
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/CreditMarks;->endCredit()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startRecap:I

    .line 72
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/CreditMarks;->startRecap()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endRecap:I

    .line 73
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/CreditMarks;->endRecap()I

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
    .locals 3

    .line 82
    iget v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startCredit:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 84
    iget v2, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endCredit:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 86
    iget v2, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startRecap:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 88
    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endRecap:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public startCredit()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startcredit"
    .end annotation

    .line 32
    iget v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startCredit:I

    return v0
.end method

.method public startRecap()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startrecap"
    .end annotation

    .line 44
    iget v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startRecap:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreditMarks{startCredit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startCredit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endCredit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endCredit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startRecap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->startRecap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endRecap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_CreditMarks;->endRecap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
