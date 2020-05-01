.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;",
            ">;"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SearchResultsSimilarityAlgorithm$GsonTypeAdapter;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SearchResultsSimilarityAlgorithm$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const-wide v1, 0x3febd70a3d70a3d7L    # 0.87

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SearchResultsSimilarityAlgorithm$GsonTypeAdapter;->setDefaultJaroWinklerSimilarityThreshold(D)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SearchResultsSimilarityAlgorithm$GsonTypeAdapter;

    move-result-object p1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SearchResultsSimilarityAlgorithm$GsonTypeAdapter;->setDefaultJaroWinklerPrefixLengthLimit(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SearchResultsSimilarityAlgorithm$GsonTypeAdapter;

    move-result-object p1

    const-string v0, "AutoValue_SearchResultsS\u2026nklerPrefixLengthLimit(0)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/gson/TypeAdapter;

    return-object p1
.end method
