.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract choices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFallback()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fallback"
    .end annotation
.end method

.method public abstract lastPlanChangeDate()J
.end method

.method public abstract nextBillingDate()J
.end method

.method public abstract trackingInfo()Ljava/lang/String;
.end method
