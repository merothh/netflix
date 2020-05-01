.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;
.source ""


# instance fields
.field private final AV1CodecEnabled:Z

.field private final AVCHighCodecEnabled:Z

.field private final AVCHighCodecForceEnabled:Z

.field private final VP9HWCodecEnabled:Z

.field private final XHEAACCodecEnabled:Z

.field private final eveVP9HWCodecEnabled:Z


# direct methods
.method constructor <init>(ZZZZZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->VP9HWCodecEnabled:Z

    .line 30
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecEnabled:Z

    .line 31
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->eveVP9HWCodecEnabled:Z

    .line 32
    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AV1CodecEnabled:Z

    .line 33
    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecForceEnabled:Z

    .line 34
    iput-boolean p6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->XHEAACCodecEnabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 90
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 91
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    .line 92
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->VP9HWCodecEnabled:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isVP9HWCodecEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecEnabled:Z

    .line 93
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isAVCHighCodecEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->eveVP9HWCodecEnabled:Z

    .line 94
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isEveVP9HWCodecEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AV1CodecEnabled:Z

    .line 95
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isAV1CodecEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecForceEnabled:Z

    .line 96
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isAVCHighCodecForceEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->XHEAACCodecEnabled:Z

    .line 97
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isXHEAACCodecEnabled()Z

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

    .line 106
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->VP9HWCodecEnabled:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    .line 108
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecEnabled:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v4, 0x4d5

    :goto_1
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 110
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->eveVP9HWCodecEnabled:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v4, 0x4d5

    :goto_2
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 112
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AV1CodecEnabled:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v4, 0x4d5

    :goto_3
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 114
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecForceEnabled:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v4, 0x4d5

    :goto_4
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 116
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->XHEAACCodecEnabled:Z

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    const/16 v1, 0x4d5

    :goto_5
    xor-int/2addr v0, v1

    return v0
.end method

.method public isAV1CodecEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAV1CodecEnabled"
    .end annotation

    .line 58
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AV1CodecEnabled:Z

    return v0
.end method

.method public isAVCHighCodecEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAVCHighCodecEnabled"
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecEnabled:Z

    return v0
.end method

.method public isAVCHighCodecForceEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAVCHighCodecForceEnabled"
    .end annotation

    .line 64
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecForceEnabled:Z

    return v0
.end method

.method public isEveVP9HWCodecEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEveVP9HWCodecEnabled"
    .end annotation

    .line 52
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->eveVP9HWCodecEnabled:Z

    return v0
.end method

.method public isVP9HWCodecEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isVP9HWCodecEnabled"
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->VP9HWCodecEnabled:Z

    return v0
.end method

.method public isXHEAACCodecEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isXHEAACCodecEnabled"
    .end annotation

    .line 70
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->XHEAACCodecEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamingCodecPrefData{VP9HWCodecEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->VP9HWCodecEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AVCHighCodecEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", eveVP9HWCodecEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->eveVP9HWCodecEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AV1CodecEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AV1CodecEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AVCHighCodecForceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->AVCHighCodecForceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", XHEAACCodecEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_StreamingCodecPrefData;->XHEAACCodecEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
