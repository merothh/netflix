.class Lo/yx;
.super Lo/hO;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hO<",
        "Ljava/util/List<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/yq;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V
    .locals 1

    const-string v0, "FetchAvailableAvatarsRequest"

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lo/hO;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;)V

    .line 43
    iput-object p3, p0, Lo/yx;->a:Lo/yq;

    const-string p1, "[\"availableAvatarsList\"]"

    .line 45
    iput-object p1, p0, Lo/yx;->d:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 47
    iget-object p2, p0, Lo/yx;->d:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "nf_service_user_fetchavailableavatarsrequest"

    const-string p3, "Query = %s"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lo/yx;->c(Ljava/util/List;)V

    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;"
        }
    .end annotation

    const-string p2, "nf_service_user_fetchavailableavatarsrequest"

    .line 66
    invoke-static {p2, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result p2

    if-nez p2, :cond_1

    :try_start_0
    const-string p2, "availableAvatarsList"

    .line 74
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 85
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "name"

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    .line 87
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isInDefaultSet"

    .line 89
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    .line 90
    new-instance v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-direct {v3, v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 79
    new-instance p2, Lcom/netflix/falkor/FalkorException;

    const-string v0, "response missing avatars json objects"

    invoke-direct {p2, v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 68
    :cond_1
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string p2, "Avatars list empty!!!"

    invoke-direct {p1, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lo/yx;->a:Lo/yq;

    if-eqz v0, :cond_0

    .line 107
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/yq;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lo/yx;->a:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 100
    invoke-interface {v0, v1, p1}, Lo/yq;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected synthetic e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lo/yx;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lo/yx;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
