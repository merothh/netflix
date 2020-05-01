.class public Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;
.super Lcom/netflix/model/leafs/advisory/AdvisoryImpl;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/advisory/ContentAdvisory;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentAdvisory"


# instance fields
.field public board:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

.field public i18nAdvisories:Ljava/lang/String;

.field public i18nRating:Ljava/lang/String;

.field public icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/ContentAdvisoryIcon;",
            ">;"
        }
    .end annotation
.end field

.field public ratingIconLevel:Ljava/lang/String;

.field public ratingIconValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->icons:Ljava/util/List;

    return-void
.end method

.method private populateIconData(Lcom/google/gson/JsonElement;)V
    .locals 7

    .line 141
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "reasons"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "level"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "board"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/ContentAdvisoryIconImpl;->asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->icons:Ljava/util/List;

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->ratingIconValue:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->ratingIconLevel:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :cond_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->getAdvisoryBoard(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->board:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    goto/16 :goto_0

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        0x598eee6 -> :sswitch_3
        0x6219b84 -> :sswitch_2
        0x6ac9171 -> :sswitch_1
        0x406cb6af -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getAdvisoryBoard()Lcom/netflix/model/leafs/advisory/AdvisoryBoard;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->board:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    return-object v0
.end method

.method public getBoard()Lcom/netflix/model/leafs/advisory/AdvisoryBoard;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->board:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    return-object v0
.end method

.method public getData(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;
    .locals 8

    .line 125
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x671d76a5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x5f6531a

    if-eq v4, v5, :cond_1

    const v5, 0x4455e7d5

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "i18nAdvisories"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "icons"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v4, "i18nRating"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    :cond_3
    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    goto :goto_0

    .line 134
    :cond_4
    invoke-direct {p0, v2}, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->populateIconData(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->i18nAdvisories:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_6
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->i18nRating:Ljava/lang/String;

    goto :goto_0

    :cond_7
    return-object p1
.end method

.method public getI18nAdvisories()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->i18nAdvisories:Ljava/lang/String;

    return-object v0
.end method

.method public getI18nRating()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->i18nRating:Ljava/lang/String;

    return-object v0
.end method

.method public getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/ContentAdvisoryIcon;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->icons:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->i18nRating:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingIconLevel()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->ratingIconLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingIconValue()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->ratingIconValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingLevel()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->ratingIconLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingValue()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->ratingIconValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryMessage()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;->i18nAdvisories:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/netflix/model/leafs/advisory/Advisory$Type;
    .locals 1

    .line 120
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->CONTENT_ADVISORY:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    return-object v0
.end method
