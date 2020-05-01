.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_FtlConfig;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    }
.end annotation


# direct methods
.method constructor <init>(IILjava/util/List;ILjava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_FtlConfig;-><init>(IILjava/util/List;ILjava/util/List;Ljava/util/Map;)V

    return-void
.end method
