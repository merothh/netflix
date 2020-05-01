.class abstract Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;
.super Lcom/netflix/mediaclient/media/manifest/Location;
.source ""


# instance fields
.field private final key:Ljava/lang/String;

.field private final level:I

.field private final rank:I

.field private final weight:I


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/Location;-><init>()V

    .line 24
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->level:I

    .line 25
    iput p2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->rank:I

    .line 26
    iput p3, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->weight:I

    .line 27
    iput-object p4, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/media/manifest/Location;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 71
    check-cast p1, Lcom/netflix/mediaclient/media/manifest/Location;

    .line 72
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->level:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Location;->level()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->rank:I

    .line 73
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Location;->rank()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->weight:I

    .line 74
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Location;->weight()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->key:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Location;->key()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Location;->key()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 84
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->level:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 86
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->rank:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 88
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->weight:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 90
    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->key:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->key:Ljava/lang/String;

    return-object v0
.end method

.method public level()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation

    .line 33
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->level:I

    return v0
.end method

.method public rank()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank"
    .end annotation

    .line 39
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->rank:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location{level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weight()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weight"
    .end annotation

    .line 45
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Location;->weight:I

    return v0
.end method
