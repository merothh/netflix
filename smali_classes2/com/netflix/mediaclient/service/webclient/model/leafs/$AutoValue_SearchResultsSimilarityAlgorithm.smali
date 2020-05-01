.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;
.source ""


# instance fields
.field private final jaroWinklerPrefixLengthLimit:I

.field private final jaroWinklerSimilarityThreshold:D


# direct methods
.method constructor <init>(DI)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerSimilarityThreshold:D

    .line 18
    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerPrefixLengthLimit:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;

    .line 48
    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerSimilarityThreshold:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;->jaroWinklerSimilarityThreshold()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerPrefixLengthLimit:I

    .line 49
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;->jaroWinklerPrefixLengthLimit()I

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
    .locals 4

    .line 58
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerSimilarityThreshold:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerSimilarityThreshold:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 60
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerPrefixLengthLimit:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public jaroWinklerPrefixLengthLimit()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jaroWinklerPrefixLengthLimit"
    .end annotation

    .line 30
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerPrefixLengthLimit:I

    return v0
.end method

.method public jaroWinklerSimilarityThreshold()D
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jaroWinklerSimilarityThreshold"
    .end annotation

    .line 24
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerSimilarityThreshold:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchResultsSimilarityAlgorithm{jaroWinklerSimilarityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerSimilarityThreshold:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", jaroWinklerPrefixLengthLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SearchResultsSimilarityAlgorithm;->jaroWinklerPrefixLengthLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
