.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
.source ""


# instance fields
.field private final initialIntervalInMs:I

.field private final maxElapsedTimeInMs:I

.field private final maxIntervalInMs:I

.field private final multiplier:D

.field private final randomizationFactor:D


# direct methods
.method constructor <init>(IDDII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;-><init>()V

    .line 26
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    .line 27
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->randomizationFactor:D

    .line 28
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->multiplier:D

    .line 29
    iput p6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    .line 30
    iput p7, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 80
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    .line 81
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getInitialIntervalInMs()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->randomizationFactor:D

    .line 82
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getRandomizationFactor()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->multiplier:D

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMultiplier()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    .line 84
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMaxIntervalInMs()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    .line 85
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMaxElapsedTimeInMs()I

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

.method public getInitialIntervalInMs()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "initialIntervalInMs"
    .end annotation

    .line 36
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    return v0
.end method

.method public getMaxElapsedTimeInMs()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxElapsedTimeInMs"
    .end annotation

    .line 60
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    return v0
.end method

.method public getMaxIntervalInMs()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxIntervalInMs"
    .end annotation

    .line 54
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    return v0
.end method

.method public getMultiplier()D
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multiplier"
    .end annotation

    .line 48
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->multiplier:D

    return-wide v0
.end method

.method public getRandomizationFactor()D
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "randomizationFactor"
    .end annotation

    .line 42
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->randomizationFactor:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 94
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 96
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->randomizationFactor:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->randomizationFactor:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 98
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->multiplier:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->multiplier:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 100
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 102
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubtitleDownloadRetryPolicy{initialIntervalInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", randomizationFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->randomizationFactor:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", multiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->multiplier:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxIntervalInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxElapsedTimeInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
