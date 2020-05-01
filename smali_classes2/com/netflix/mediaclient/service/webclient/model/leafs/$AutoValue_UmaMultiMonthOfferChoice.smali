.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;
.source ""


# instance fields
.field private final currency:Ljava/lang/String;

.field private final discountDuration:I

.field private final discountDurationType:Ljava/lang/String;

.field private final discountPercentage:I

.field private final fullPrice:D

.field private final fullPriceFormatted:Ljava/lang/String;

.field private final isBestOffer:Z

.field private final isSelected:Z

.field private final offerId:J

.field private final offerPrice:D

.field private final offerPriceFormatted:Ljava/lang/String;

.field private final planId:I

.field private final priceTier:Ljava/lang/String;


# direct methods
.method constructor <init>(IIIJDDZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;-><init>()V

    move v1, p1

    .line 50
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->planId:I

    move v1, p2

    .line 51
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountPercentage:I

    move v1, p3

    .line 52
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDuration:I

    move-wide v1, p4

    .line 53
    iput-wide v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerId:J

    move-wide v1, p6

    .line 54
    iput-wide v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPrice:D

    move-wide v1, p8

    .line 55
    iput-wide v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPrice:D

    move v1, p10

    .line 56
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isBestOffer:Z

    move v1, p11

    .line 57
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isSelected:Z

    move-object v1, p12

    .line 58
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->currency:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 59
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->priceTier:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 60
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDurationType:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 61
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPriceFormatted:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 62
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPriceFormatted:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public currency()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public discountDuration()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDuration:I

    return v0
.end method

.method public discountDurationType()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDurationType:Ljava/lang/String;

    return-object v0
.end method

.method public discountPercentage()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountPercentage:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 160
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;

    .line 161
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->planId:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->planId()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountPercentage:I

    .line 162
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountPercentage()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDuration:I

    .line 163
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountDuration()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerId:J

    .line 164
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPrice:D

    .line 165
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->fullPrice()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPrice:D

    .line 166
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerPrice()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isBestOffer:Z

    .line 167
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->isBestOffer()Z

    move-result v3

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isSelected:Z

    .line 168
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->isSelected()Z

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->currency:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->currency()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->currency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->priceTier:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->priceTier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->priceTier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDurationType:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountDurationType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountDurationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPriceFormatted:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 172
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->fullPriceFormatted()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->fullPriceFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPriceFormatted:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 173
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerPriceFormatted()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerPriceFormatted()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_7
    return v2
.end method

.method public fullPrice()D
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPrice:D

    return-wide v0
.end method

.method public fullPriceFormatted()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPriceFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 182
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->planId:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 184
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountPercentage:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 186
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDuration:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 188
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerId:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 190
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPrice:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v4

    iget-wide v5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPrice:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 192
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPrice:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPrice:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 194
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isBestOffer:Z

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

    .line 196
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isSelected:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 198
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->currency:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 200
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->priceTier:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 202
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDurationType:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 204
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPriceFormatted:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPriceFormatted:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    return v0
.end method

.method public isBestOffer()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isBestOffer:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isSelected:Z

    return v0
.end method

.method public offerId()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerId:J

    return-wide v0
.end method

.method public offerPrice()D
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPrice:D

    return-wide v0
.end method

.method public offerPriceFormatted()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPriceFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public planId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->planId:I

    return v0
.end method

.method public priceTier()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->priceTier:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UmaMultiMonthOfferChoice{planId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->planId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", discountPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", discountDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fullPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", offerPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isBestOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isBestOffer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priceTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->priceTier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", discountDurationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->discountDurationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fullPriceFormatted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->fullPriceFormatted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offerPriceFormatted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaMultiMonthOfferChoice;->offerPriceFormatted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
