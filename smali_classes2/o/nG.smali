.class Lo/nG;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lo/oC;)Lcom/netflix/cl/model/CachedVideoPlayableStatus;
    .locals 2

    .line 38
    invoke-interface {p0}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v0, v1, :cond_0

    .line 39
    sget-object p0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->downloading:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    return-object p0

    .line 42
    :cond_0
    invoke-interface {p0}, Lo/oC;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object p0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->restrictedGeo:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    return-object p0

    .line 46
    :cond_1
    invoke-static {p0}, Lo/oc;->e(Lo/oC;)Z

    move-result v0

    .line 47
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p0}, Lo/oc;->d(Landroid/content/Context;Lo/oC;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 48
    invoke-static {p0}, Lo/oc;->a(Lo/oC;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-eqz p0, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    sget-object p0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->ready:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    return-object p0

    .line 51
    :cond_3
    :goto_0
    sget-object p0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->staleLicense:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    return-object p0
.end method

.method static c(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/nD;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->o()Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->e()Ljava/util/List;

    move-result-object p0

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/oC;

    .line 27
    invoke-static {v2, p0}, Lo/nT;->b(Lo/oC;Ljava/util/List;)Z

    move-result v3

    .line 28
    invoke-static {v2}, Lo/nG;->b(Lo/oC;)Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    move-result-object v4

    .line 29
    new-instance v5, Lo/nD;

    invoke-interface {v2}, Lo/oC;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3, v4}, Lo/nD;-><init>(Ljava/lang/String;ZLcom/netflix/cl/model/CachedVideoPlayableStatus;)V

    .line 31
    invoke-interface {v2}, Lo/oC;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method
