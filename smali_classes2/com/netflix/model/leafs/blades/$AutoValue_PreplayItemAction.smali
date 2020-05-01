.class abstract Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;
.super Lcom/netflix/model/leafs/blades/PreplayItemAction;
.source ""


# instance fields
.field private final bookmarkPosition:I

.field private final doNotIncrementInterrupter:Z

.field private final ignoreBookmark:Z

.field private final name:Ljava/lang/String;

.field private final trackId:I

.field private final type:Ljava/lang/String;

.field private final videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/netflix/model/leafs/blades/PreplayItemAction;-><init>()V

    .line 32
    iput p1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->bookmarkPosition:I

    if-eqz p2, :cond_2

    .line 36
    iput-object p2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->type:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 40
    iput-object p3, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->name:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 44
    iput-object p4, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->videoId:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->trackId:I

    .line 46
    iput-boolean p6, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->doNotIncrementInterrupter:Z

    .line 47
    iput-boolean p7, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->ignoreBookmark:Z

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null videoId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null type"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bookmarkPosition()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bookmarkPosition"
    .end annotation

    .line 53
    iget v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->bookmarkPosition:I

    return v0
.end method

.method public doNotIncrementInterrupter()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "doNotIncrementInterrupter"
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->doNotIncrementInterrupter:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 110
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/blades/PreplayItemAction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 111
    check-cast p1, Lcom/netflix/model/leafs/blades/PreplayItemAction;

    .line 112
    iget v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->bookmarkPosition:I

    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->bookmarkPosition()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->type:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->name:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->videoId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->videoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->trackId:I

    .line 116
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->trackId()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->doNotIncrementInterrupter:Z

    .line 117
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->doNotIncrementInterrupter()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->ignoreBookmark:Z

    .line 118
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->ignoreBookmark()Z

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
    .locals 5

    .line 127
    iget v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->bookmarkPosition:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 129
    iget-object v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 131
    iget-object v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 133
    iget-object v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->videoId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 135
    iget v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->trackId:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 137
    iget-boolean v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->doNotIncrementInterrupter:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 139
    iget-boolean v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->ignoreBookmark:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public ignoreBookmark()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ignoreBookmark"
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->ignoreBookmark:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreplayItemAction{bookmarkPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->bookmarkPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", doNotIncrementInterrupter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->doNotIncrementInterrupter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreBookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->ignoreBookmark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackId()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation

    .line 77
    iget v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->trackId:I

    return v0
.end method

.method public type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public videoId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoId"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PreplayItemAction;->videoId:Ljava/lang/String;

    return-object v0
.end method
