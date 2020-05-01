.class abstract Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;
.super Lcom/netflix/model/leafs/originals/BillboardCTA;
.source ""


# instance fields
.field private final billboardPhase:Ljava/lang/String;

.field private final bookmarkPosition:Ljava/lang/String;

.field private final galleryId:Ljava/lang/String;

.field private final ignoreBookmark:Z

.field private final index:I

.field private final name:Ljava/lang/String;

.field private final sequenceNumber:Ljava/lang/String;

.field private final suppressPostPlay:Z

.field private final type:Ljava/lang/String;

.field private final videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/BillboardCTA;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->name:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->type:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->billboardPhase:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->videoId:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->suppressPostPlay:Z

    .line 46
    iput-boolean p6, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->ignoreBookmark:Z

    .line 47
    iput p7, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->index:I

    .line 48
    iput-object p8, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->sequenceNumber:Ljava/lang/String;

    .line 49
    iput-object p9, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    .line 50
    iput-object p10, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->galleryId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public billboardPhase()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->billboardPhase:Ljava/lang/String;

    return-object v0
.end method

.method public bookmarkPosition()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 131
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/BillboardCTA;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 132
    check-cast p1, Lcom/netflix/model/leafs/originals/BillboardCTA;

    .line 133
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->type:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 134
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->billboardPhase:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->billboardPhase()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->billboardPhase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->videoId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 136
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->videoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->videoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->suppressPostPlay:Z

    .line 137
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->suppressPostPlay()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->ignoreBookmark:Z

    .line 138
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->index:I

    .line 139
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->index()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->sequenceNumber:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 140
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 141
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->bookmarkPosition()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->bookmarkPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->galleryId:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 142
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->galleryId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->galleryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_9
    return v2
.end method

.method public galleryId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->galleryId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->name:Ljava/lang/String;

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

    .line 153
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->type:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 155
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->billboardPhase:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 157
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->videoId:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 159
    iget-boolean v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->suppressPostPlay:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_4

    const/16 v3, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v3, 0x4d5

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 161
    iget-boolean v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->ignoreBookmark:Z

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    const/16 v4, 0x4d5

    :goto_5
    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 163
    iget v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->index:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 165
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->sequenceNumber:Ljava/lang/String;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 167
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 169
    iget-object v2, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->galleryId:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    xor-int/2addr v0, v1

    return v0
.end method

.method public ignoreBookmark()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->ignoreBookmark:Z

    return v0
.end method

.method public index()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->index:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->name:Ljava/lang/String;

    return-object v0
.end method

.method public sequenceNumber()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->sequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public suppressPostPlay()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->suppressPostPlay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BillboardCTA{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", billboardPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->billboardPhase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suppressPostPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->suppressPostPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreBookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->ignoreBookmark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->sequenceNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bookmarkPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", galleryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->galleryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->type:Ljava/lang/String;

    return-object v0
.end method

.method public videoId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardCTA;->videoId:Ljava/lang/String;

    return-object v0
.end method
