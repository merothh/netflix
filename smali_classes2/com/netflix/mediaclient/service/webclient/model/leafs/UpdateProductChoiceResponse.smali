.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UpdateProductChoiceResponse$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UpdateProductChoiceResponse$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract fallback()Z
.end method

.method public abstract success()Z
.end method

.method public abstract trackingInfo()Ljava/lang/String;
.end method
