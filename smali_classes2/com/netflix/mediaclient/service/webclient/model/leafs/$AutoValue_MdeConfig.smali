.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MdeConfig;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;
.source ""


# instance fields
.field private final disabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MdeConfig;->disabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 35
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 36
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    .line 37
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MdeConfig;->disabled:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;->isDisabled()Z

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
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MdeConfig;->disabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public isDisabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isDisabled"
    .end annotation

    .line 20
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MdeConfig;->disabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MdeConfig{disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_MdeConfig;->disabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
