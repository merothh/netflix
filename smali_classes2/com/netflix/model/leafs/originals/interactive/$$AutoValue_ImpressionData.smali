.class abstract Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;
.super Lcom/netflix/model/leafs/originals/interactive/ImpressionData;
.source ""


# instance fields
.field private final data:Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->type:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 21
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->data:Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null data"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public data()Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->data:Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 49
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    .line 50
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->type:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;->type()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->data:Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;

    .line 51
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;->data()Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->type:Ljava/lang/String;

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

    .line 62
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->data:Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImpressionData{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->data:Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_ImpressionData;->type:Ljava/lang/String;

    return-object v0
.end method