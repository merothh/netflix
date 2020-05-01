.class abstract Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal;
.super Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ZIILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/SeasonRenewalAsset;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/netflix/model/leafs/$$AutoValue_SeasonRenewal;-><init>(Ljava/lang/String;ZIILjava/util/Map;)V

    return-void
.end method
