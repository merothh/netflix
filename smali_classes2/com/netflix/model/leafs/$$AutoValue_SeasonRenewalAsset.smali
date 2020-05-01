.class abstract Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;
.super Lcom/netflix/model/leafs/SeasonRenewalAsset;
.source ""


# instance fields
.field private final assetType:Ljava/lang/String;

.field private final height:I

.field private final isBadged:Z

.field private final scale:I

.field private final tone:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final width:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/netflix/model/leafs/SeasonRenewalAsset;-><init>()V

    if-eqz p1, :cond_2

    .line 33
    iput-object p1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->url:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->width:I

    .line 35
    iput p3, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->height:I

    .line 36
    iput-boolean p4, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->isBadged:Z

    .line 37
    iput p5, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->scale:I

    if-eqz p6, :cond_1

    .line 41
    iput-object p6, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->assetType:Ljava/lang/String;

    if-eqz p7, :cond_0

    .line 45
    iput-object p7, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->tone:Ljava/lang/String;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null tone"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null assetType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null url"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public assetType()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->assetType:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/SeasonRenewalAsset;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 102
    check-cast p1, Lcom/netflix/model/leafs/SeasonRenewalAsset;

    .line 103
    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->width:I

    .line 104
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->width()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->height:I

    .line 105
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->height()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->isBadged:Z

    .line 106
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->isBadged()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->scale:I

    .line 107
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->scale()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->assetType:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->assetType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->tone:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->tone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 118
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 120
    iget v2, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->width:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 122
    iget v2, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->height:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 124
    iget-boolean v2, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->isBadged:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 126
    iget v2, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->scale:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 128
    iget-object v2, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->assetType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 130
    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->tone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public height()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->height:I

    return v0
.end method

.method public isBadged()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->isBadged:Z

    return v0
.end method

.method public scale()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->scale:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeasonRenewalAsset{url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBadged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->isBadged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", assetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->assetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->tone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tone()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->tone:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public width()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewalAsset;->width:I

    return v0
.end method
