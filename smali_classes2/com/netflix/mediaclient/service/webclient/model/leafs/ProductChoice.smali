.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;,
        Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;,
        Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;,
        Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;,
        Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    sget-object p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    .line 128
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;->setDefaultPlanChangeType(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;

    .line 129
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;->setDefaultGrandfatheredState(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    .line 130
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;->setDefaultQuality(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    .line 131
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;->setDefaultPlanStatus(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    .line 132
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;->setDefaultPriceDuration(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoice$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract country()Ljava/lang/String;
.end method

.method public abstract currency()Ljava/lang/String;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public getLatestPlanID()I
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planID()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;->planID()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLatestPriceFormatted()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceFormatted()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;->priceFormatted()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLatestPriceTier()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;->priceTier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract grandfatheredState()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$GrandfatheredState;
.end method

.method public abstract hashCode()I
.end method

.method public isCurrent()Z
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planStatus()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->CURRENT:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDowngrade()Z
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planStatus()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->PENDING:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planChangeType()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;->DEFERRED:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUpgrade()Z
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planChangeType()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;->IMMEDIATE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract maxStreams()I
.end method

.method public abstract planChangeEffectiveDate()J
.end method

.method abstract planChangeType()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanChangeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "planChangeType"
    .end annotation
.end method

.method public abstract planDescShort()Ljava/lang/String;
.end method

.method public abstract planID()I
.end method

.method public abstract planName()Ljava/lang/String;
.end method

.method public abstract planStatus()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "planStatus"
    .end annotation
.end method

.method public abstract price()F
.end method

.method public abstract priceChangeInfo()Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;
.end method

.method public abstract priceDuration()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priceDuration"
    .end annotation
.end method

.method public abstract priceFormatted()Ljava/lang/String;
.end method

.method public abstract priceTier()Ljava/lang/String;
.end method

.method public abstract quality()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality"
    .end annotation
.end method

.method public abstract showPreTaxInPrice()Z
.end method
