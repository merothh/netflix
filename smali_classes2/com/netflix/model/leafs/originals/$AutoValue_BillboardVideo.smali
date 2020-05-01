.class abstract Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;
.super Lcom/netflix/model/leafs/originals/BillboardVideo;
.source ""


# instance fields
.field private final autoPlay:Z

.field private final isTrailer:Z

.field private final motionId:Ljava/lang/String;

.field private final motionShouldLoop:Z

.field private final motionUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/BillboardVideo;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionUrl:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionShouldLoop:Z

    .line 30
    iput-boolean p4, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->isTrailer:Z

    .line 31
    iput-boolean p5, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->autoPlay:Z

    return-void
.end method


# virtual methods
.method public autoPlay()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "autoPlay"
    .end annotation

    .line 63
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->autoPlay:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/BillboardVideo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 83
    check-cast p1, Lcom/netflix/model/leafs/originals/BillboardVideo;

    .line 84
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionId:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 85
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionShouldLoop:Z

    .line 86
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionShouldLoop()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->isTrailer:Z

    .line 87
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardVideo;->isTrailer()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->autoPlay:Z

    .line 88
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardVideo;->autoPlay()Z

    move-result p1

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 99
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionUrl:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 101
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionShouldLoop:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 103
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->isTrailer:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v1, 0x4d5

    :goto_3
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 105
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->autoPlay:Z

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v3, 0x4d5

    :goto_4
    xor-int/2addr v0, v3

    return v0
.end method

.method public isTrailer()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isTrailer"
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->isTrailer:Z

    return v0
.end method

.method public motionId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "motionId"
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionId:Ljava/lang/String;

    return-object v0
.end method

.method public motionShouldLoop()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "motionShouldLoop"
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionShouldLoop:Z

    return v0
.end method

.method public motionUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "motionUrl"
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BillboardVideo{motionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", motionUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", motionShouldLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->motionShouldLoop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTrailer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->isTrailer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardVideo;->autoPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
