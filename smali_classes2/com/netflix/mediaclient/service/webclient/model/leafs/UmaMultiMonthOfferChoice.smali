.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract currency()Ljava/lang/String;
.end method

.method public abstract discountDuration()I
.end method

.method public abstract discountDurationType()Ljava/lang/String;
.end method

.method public abstract discountPercentage()I
.end method

.method public abstract fullPrice()D
.end method

.method public abstract fullPriceFormatted()Ljava/lang/String;
.end method

.method public abstract isBestOffer()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract offerId()J
.end method

.method public abstract offerPrice()D
.end method

.method public abstract offerPriceFormatted()Ljava/lang/String;
.end method

.method public abstract planId()I
.end method

.method public abstract priceTier()Ljava/lang/String;
.end method
