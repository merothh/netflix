.class public Lcom/netflix/msl/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromJson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 68
    const/4 p0, 0x0

    .line 74
    :cond_0
    :goto_0
    return-object p0

    .line 69
    :cond_1
    instance-of v0, p0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v0, :cond_2

    .line 70
    check-cast p0, Lcom/netflix/android/org/json/JSONObject;

    invoke-static {p0}, Lcom/netflix/msl/util/JsonUtil;->toMap(Lcom/netflix/android/org/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_2
    instance-of v0, p0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lcom/netflix/android/org/json/JSONArray;

    invoke-static {p0}, Lcom/netflix/msl/util/JsonUtil;->toList(Lcom/netflix/android/org/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMap(Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/org/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtil;->toMap(Lcom/netflix/android/org/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static isEmptyObject(Lcom/netflix/android/org/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->names()Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 22
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 24
    check-cast p0, Ljava/util/Map;

    .line 25
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/JsonUtil;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 36
    :cond_1
    :goto_1
    return-object p0

    .line 29
    :cond_2
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 31
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_2

    :cond_3
    move-object p0, v0

    .line 34
    goto :goto_1
.end method

.method public static toList(Lcom/netflix/android/org/json/JSONArray;)Ljava/util/List;
    .locals 3

    .prologue
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/JsonUtil;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object v1
.end method

.method public static toMap(Lcom/netflix/android/org/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/org/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 51
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/msl/util/JsonUtil;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method
