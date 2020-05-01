.class abstract Lcom/netflix/model/leafs/$AutoValue_TimeCodesData;
.super Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/$AutoValue_TimeCodesData$GsonTypeAdapter;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/blades/CreditMarks;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/blades/CreditMarks;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/SkipContentData;",
            ">;I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;-><init>(Lcom/netflix/model/leafs/blades/CreditMarks;Ljava/util/List;I)V

    return-void
.end method
