.class public final Lo/ck;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static b(Ljava/util/Map;Ljava/util/Map;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->getGEO_KEY()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v1}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 116
    :cond_0
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;

    invoke-direct {p1, v1, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method

.method public static b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;
    .locals 6

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;-><init>()V

    .line 45
    new-instance v1, Lo/ck$2;

    invoke-direct {v1}, Lo/ck$2;-><init>()V

    invoke-virtual {v1}, Lo/ck$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "nf_moneyball_data"

    .line 51
    invoke-static {v2, p0}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 52
    invoke-static {v3}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v2, "aui"

    .line 58
    invoke-static {v3, v2, v1}, Lo/adI;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_3

    const-string p0, "phoneCodes"

    .line 64
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lo/ck;->b(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->setPhoneCodesData(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;)V

    :cond_0
    const-string v2, "moneyball"

    .line 68
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_2

    const-string v3, "requestContext"

    .line 71
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "userContext"

    .line 72
    invoke-static {v3, v2}, Lo/ck;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 75
    invoke-static {v4, v1}, Lo/ck;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->setContextData(Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;)V

    .line 77
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 78
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "termsOfUse"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lo/ck;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 86
    sget-object v5, Lcom/netflix/android/moneyball/Moneyball;->INSTANCE:Lcom/netflix/android/moneyball/Moneyball;

    invoke-virtual {v5, v4}, Lcom/netflix/android/moneyball/Moneyball;->recursiveSetLongs(Ljava/util/Map;)V

    .line 87
    new-instance v5, Lcom/netflix/android/moneyball/FlowMode;

    invoke-direct {v5, v4}, Lcom/netflix/android/moneyball/FlowMode;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->setFlowMode(Lcom/netflix/android/moneyball/FlowMode;)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 60
    :cond_3
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find the aui object in moneyball response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    :cond_4
    const-string v0, "Empty response for moneyball request!"

    .line 53
    invoke-static {v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty response for moneyball request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    invoke-interface {p0, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 56
    throw v0
.end method

.method private static b(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance p0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    return-object p0

    .line 141
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 145
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lo/ck;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance p0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "result"

    .line 127
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 131
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lo/ck;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
