.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;
.source ""


# instance fields
.field private final country:Ljava/lang/String;

.field private final currency:Ljava/lang/String;

.field private final grandfatheredState:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;

.field private final maxStreams:I

.field private final planChangeEffectiveDate:J

.field private final planChangeType:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

.field private final planDescShort:Ljava/lang/String;

.field private final planID:I

.field private final planName:Ljava/lang/String;

.field private final planStatus:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

.field private final price:F

.field private final priceChangeInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

.field private final priceDuration:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

.field private final priceFormatted:Ljava/lang/String;

.field private final priceTier:Ljava/lang/String;

.field private final quality:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

.field private final showPreTaxInPrice:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;JLcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;Z)V
    .locals 10

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    move-object/from16 v6, p13

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    .line 62
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;-><init>()V

    move-object v9, p1

    .line 63
    iput-object v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planStatus:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    move-object v9, p2

    .line 64
    iput-object v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeType:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    move-object v9, p3

    .line 65
    iput-object v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceDuration:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    move v9, p4

    .line 66
    iput v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->price:F

    if-eqz v1, :cond_7

    .line 70
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceFormatted:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 74
    iput-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->currency:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 78
    iput-object v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->country:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 82
    iput-object v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceTier:Ljava/lang/String;

    move/from16 v1, p9

    .line 83
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planID:I

    if-eqz v5, :cond_3

    .line 87
    iput-object v5, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->grandfatheredState:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;

    move-wide/from16 v1, p11

    .line 88
    iput-wide v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeEffectiveDate:J

    if-eqz v6, :cond_2

    .line 92
    iput-object v6, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->quality:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    move/from16 v1, p14

    .line 93
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->maxStreams:I

    if-eqz v7, :cond_1

    .line 97
    iput-object v7, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 101
    iput-object v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planDescShort:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 102
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceChangeInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move/from16 v1, p18

    .line 103
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->showPreTaxInPrice:Z

    return-void

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null planDescShort"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null planName"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null quality"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null grandfatheredState"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null priceTier"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null country"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null currency"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null priceFormatted"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public country()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->country:Ljava/lang/String;

    return-object v0
.end method

.method public currency()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 227
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 228
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    .line 229
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planStatus:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planStatus()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planStatus()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeType:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    if-nez v1, :cond_2

    .line 230
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planChangeType()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planChangeType()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceDuration:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    if-nez v1, :cond_3

    .line 231
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceDuration()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceDuration()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->price:F

    .line 232
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->price()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceFormatted:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->currency:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->currency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->country:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceTier:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceTier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planID:I

    .line 237
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planID()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->grandfatheredState:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;

    .line 238
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->grandfatheredState()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeEffectiveDate:J

    .line 239
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planChangeEffectiveDate()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->quality:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    .line 240
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->quality()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->maxStreams:I

    .line 241
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->maxStreams()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planName:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planDescShort:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planDescShort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceChangeInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    if-nez v1, :cond_4

    .line 244
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->showPreTaxInPrice:Z

    .line 245
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->showPreTaxInPrice()Z

    move-result p1

    if-ne v1, p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_6
    return v2
.end method

.method public grandfatheredState()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->grandfatheredState:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planStatus:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 256
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeType:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 258
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceDuration:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 260
    iget v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->price:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 262
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceFormatted:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 264
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->currency:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 266
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->country:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 268
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceTier:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 270
    iget v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planID:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 272
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->grandfatheredState:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 274
    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeEffectiveDate:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 276
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->quality:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 278
    iget v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->maxStreams:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 280
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 282
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planDescShort:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 284
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceChangeInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 286
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->showPreTaxInPrice:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v1, 0x4d5

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method

.method public maxStreams()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->maxStreams:I

    return v0
.end method

.method public planChangeEffectiveDate()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeEffectiveDate:J

    return-wide v0
.end method

.method planChangeType()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "planChangeType"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeType:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    return-object v0
.end method

.method public planDescShort()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planDescShort:Ljava/lang/String;

    return-object v0
.end method

.method public planID()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planID:I

    return v0
.end method

.method public planName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planName:Ljava/lang/String;

    return-object v0
.end method

.method public planStatus()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "planStatus"
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planStatus:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    return-object v0
.end method

.method public price()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->price:F

    return v0
.end method

.method public priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceChangeInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    return-object v0
.end method

.method public priceDuration()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priceDuration"
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceDuration:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    return-object v0
.end method

.method public priceFormatted()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public priceTier()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceTier:Ljava/lang/String;

    return-object v0
.end method

.method public quality()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->quality:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    return-object v0
.end method

.method public showPreTaxInPrice()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->showPreTaxInPrice:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProductChoice{planStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planStatus:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", planChangeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeType:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceDuration:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->price:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", priceFormatted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceFormatted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priceTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceTier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", grandfatheredState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->grandfatheredState:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", planChangeEffectiveDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planChangeEffectiveDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->quality:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxStreams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->maxStreams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", planName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planDescShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->planDescShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priceChangeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->priceChangeInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showPreTaxInPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ProductChoice;->showPreTaxInPrice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
