.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract buyCtaAction()Ljava/lang/String;
.end method

.method public abstract buyCtaId()Ljava/lang/String;
.end method

.method public abstract cell()I
.end method

.method public abstract dismissCtaId()Ljava/lang/String;
.end method

.method public abstract labelVariantId()Ljava/lang/String;
.end method

.method public abstract offerChoices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract viewType()Ljava/lang/String;
.end method

.method public abstract vlvURL()Ljava/lang/String;
.end method
