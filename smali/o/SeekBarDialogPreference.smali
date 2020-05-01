.class public final Lo/SeekBarDialogPreference;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final b(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)Lo/PreferenceGroupAdapter;
    .locals 6

    .line 26
    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "thisGson.entrySet()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 90
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 28
    move-object v5, p1

    check-cast v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 29
    invoke-static {v2, v5}, Lo/SeekBarDialogPreference;->c(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lo/PreferenceGroupAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 31
    invoke-static {v4, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 36
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "thatGson.entrySet()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 102
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 37
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-nez v5, :cond_4

    .line 39
    new-instance v5, Lo/PreferenceManager;

    invoke-direct {v5, v3, v2}, Lo/PreferenceManager;-><init>(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V

    invoke-static {v4, v5}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 102
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 44
    check-cast v1, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lo/akz;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 46
    new-instance v3, Lo/PreferenceScreen;

    invoke-direct {v3, p0}, Lo/PreferenceScreen;-><init>(Ljava/util/List;)V

    .line 45
    :cond_6
    check-cast v3, Lo/PreferenceGroupAdapter;

    goto :goto_3

    .line 51
    :cond_7
    new-instance v0, Lo/PreferenceManager;

    check-cast p0, Lcom/google/gson/JsonElement;

    invoke-direct {v0, p0, p1}, Lo/PreferenceManager;-><init>(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V

    move-object v3, v0

    check-cast v3, Lo/PreferenceGroupAdapter;

    :goto_3
    return-object v3
.end method

.method private static final c(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lo/PreferenceGroupAdapter;
    .locals 1

    .line 14
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/gson/JsonObject;

    invoke-static {p0, p1}, Lo/SeekBarDialogPreference;->b(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)Lo/PreferenceGroupAdapter;

    move-result-object p0

    goto :goto_1

    .line 16
    :cond_0
    invoke-static {p0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lo/PreferenceManager;

    invoke-direct {v0, p0, p1}, Lo/PreferenceManager;-><init>(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    move-object p0, v0

    check-cast p0, Lo/PreferenceGroupAdapter;

    :goto_1
    return-object p0
.end method

.method public static final d(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lo/PreferenceGroupAdapter;
    .locals 1

    const-string v0, "thisGson"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p1}, Lo/SeekBarDialogPreference;->c(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lo/PreferenceGroupAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lo/PreferenceScreen;

    invoke-direct {p0}, Lo/PreferenceScreen;-><init>()V

    check-cast p0, Lo/PreferenceGroupAdapter;

    :goto_0
    return-object p0
.end method
