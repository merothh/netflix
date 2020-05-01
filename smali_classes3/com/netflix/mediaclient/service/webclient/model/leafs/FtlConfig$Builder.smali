.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;
.end method

.method public abstract cell(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;
.end method

.method public abstract errorsThrottleLimit(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;
.end method

.method public abstract hostMap(Ljava/util/Map;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;"
        }
    .end annotation
.end method

.method public abstract hosts(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;"
        }
    .end annotation
.end method

.method public abstract maxTries(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;
.end method

.method public abstract targets(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig$Builder;"
        }
    .end annotation
.end method
