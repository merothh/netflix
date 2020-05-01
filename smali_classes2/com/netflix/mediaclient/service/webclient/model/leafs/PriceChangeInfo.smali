.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;
.super Ljava/lang/Object;
.source ""


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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/PriceChangeInfo;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PriceChangeInfo$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PriceChangeInfo$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract currency()Ljava/lang/String;
.end method

.method public abstract planID()I
.end method

.method public abstract price()F
.end method

.method public abstract priceFormatted()Ljava/lang/String;
.end method

.method public abstract priceTier()Ljava/lang/String;
.end method

.method public abstract status()Ljava/lang/String;
.end method
