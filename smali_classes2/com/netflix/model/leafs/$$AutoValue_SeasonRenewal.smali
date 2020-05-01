.class abstract Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;
.super Lcom/netflix/model/leafs/SeasonRenewal;
.source ""


# instance fields
.field private final assets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/SeasonRenewalAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final autoPlaySeconds:I

.field private final displayUpNext:Z

.field private final message:Ljava/lang/String;

.field private final watchedTopNodeid:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZIILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/SeasonRenewalAsset;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/netflix/model/leafs/SeasonRenewal;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->message:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->displayUpNext:Z

    .line 29
    iput p3, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->autoPlaySeconds:I

    .line 30
    iput p4, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->watchedTopNodeid:I

    .line 31
    iput-object p5, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->assets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public assets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/SeasonRenewalAsset;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->assets:Ljava/util/Map;

    return-object v0
.end method

.method public autoPlaySeconds()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->autoPlaySeconds:I

    return v0
.end method

.method public displayUpNext()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->displayUpNext:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 77
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/SeasonRenewal;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 78
    check-cast p1, Lcom/netflix/model/leafs/SeasonRenewal;

    .line 79
    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->message:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->message()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-boolean v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->displayUpNext:Z

    .line 80
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->displayUpNext()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->autoPlaySeconds:I

    .line 81
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->autoPlaySeconds()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->watchedTopNodeid:I

    .line 82
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->watchedTopNodeid()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->assets:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->assets()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->assets()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->message:Ljava/lang/String;

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

    .line 94
    iget-boolean v3, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->displayUpNext:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 96
    iget v3, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->autoPlaySeconds:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 98
    iget v3, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->watchedTopNodeid:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 100
    iget-object v2, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->assets:Ljava/util/Map;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeasonRenewal{message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayUpNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->displayUpNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoPlaySeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->autoPlaySeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", watchedTopNodeid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->watchedTopNodeid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", assets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->assets:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public watchedTopNodeid()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;->watchedTopNodeid:I

    return v0
.end method
