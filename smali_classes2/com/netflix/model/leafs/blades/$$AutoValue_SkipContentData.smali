.class abstract Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;
.super Lcom/netflix/model/leafs/blades/SkipContentData;
.source ""


# instance fields
.field private final end:I

.field private final label:Ljava/lang/String;

.field private final start:I

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/netflix/model/leafs/blades/SkipContentData;-><init>()V

    .line 23
    iput p1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->start:I

    .line 24
    iput p2, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->end:I

    if-eqz p3, :cond_1

    .line 28
    iput-object p3, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->label:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 32
    iput-object p4, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->type:Ljava/lang/String;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null type"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null label"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public end()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation

    .line 44
    iget v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->end:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/blades/SkipContentData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 75
    check-cast p1, Lcom/netflix/model/leafs/blades/SkipContentData;

    .line 76
    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->start:I

    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/SkipContentData;->start()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->end:I

    .line 77
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/SkipContentData;->end()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->label:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/SkipContentData;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->type:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/SkipContentData;->type()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

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

    .line 88
    iget v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->start:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 90
    iget v2, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->end:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 92
    iget-object v2, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 94
    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public label()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->label:Ljava/lang/String;

    return-object v0
.end method

.method public start()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation

    .line 38
    iget v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->start:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkipContentData{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$$AutoValue_SkipContentData;->type:Ljava/lang/String;

    return-object v0
.end method
