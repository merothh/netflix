.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;
.source ""


# instance fields
.field private final disableExtras:Z

.field private final forceDisable:Z

.field private final forceEnable:Z


# direct methods
.method constructor <init>(ZZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceEnable:Z

    .line 21
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceDisable:Z

    .line 22
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->disableExtras:Z

    return-void
.end method


# virtual methods
.method public disableExtras()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableExtras"
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->disableExtras:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 57
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 58
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    .line 59
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceEnable:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;->forceEnable()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceDisable:Z

    .line 60
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;->forceDisable()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->disableExtras:Z

    .line 61
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;->disableExtras()Z

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

.method public forceDisable()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceDisable"
    .end annotation

    .line 34
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceDisable:Z

    return v0
.end method

.method public forceEnable()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceEnable"
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceEnable:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 70
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceEnable:Z

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

    .line 72
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceDisable:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v4, 0x4d5

    :goto_1
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 74
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->disableExtras:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinusoneConfig{forceEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->forceDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disableExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MinusoneConfig;->disableExtras:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
