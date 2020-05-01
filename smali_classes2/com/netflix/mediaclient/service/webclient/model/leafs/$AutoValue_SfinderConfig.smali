.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;
.source ""


# instance fields
.field private final forceDisable:Z

.field private final forceEnable:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceEnable:Z

    .line 18
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceDisable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    .line 48
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceEnable:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;->forceEnable()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceDisable:Z

    .line 49
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;->forceDisable()Z

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

    .line 30
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceDisable:Z

    return v0
.end method

.method public forceEnable()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceEnable"
    .end annotation

    .line 24
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceEnable:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 58
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceEnable:Z

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

    .line 60
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceDisable:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SfinderConfig{forceEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SfinderConfig;->forceDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
