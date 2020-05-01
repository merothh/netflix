.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;
.source ""


# instance fields
.field private final mdeConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

.field private final minusoneConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

.field private final sfinderConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;-><init>()V

    if-eqz p1, :cond_2

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->sfinderConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    if-eqz p2, :cond_1

    .line 27
    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->minusoneConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    if-eqz p3, :cond_0

    .line 31
    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->mdeConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null mdeConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null minusoneConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null sfinderConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 67
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    .line 68
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->sfinderConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->sfinderConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->minusoneConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    .line 69
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->minusoneConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->mdeConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    .line 70
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->mdeConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->sfinderConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 81
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->minusoneConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->mdeConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public mdeConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mdeConfig"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->mdeConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    return-object v0
.end method

.method public minusoneConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minusoneConfig"
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->minusoneConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    return-object v0
.end method

.method public sfinderConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sfinderConfig"
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->sfinderConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartnerIntegrationConfig{sfinderConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->sfinderConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minusoneConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->minusoneConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mdeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PartnerIntegrationConfig;->mdeConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
