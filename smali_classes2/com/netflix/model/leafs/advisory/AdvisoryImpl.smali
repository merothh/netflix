.class public abstract Lcom/netflix/model/leafs/advisory/AdvisoryImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/advisory/Advisory;


# static fields
.field private static final TAG:Ljava/lang/String; = "Advisory"


# instance fields
.field public displayDelay:F

.field public displayDuration:F

.field public timeLocation:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

.field protected type:Lcom/netflix/model/leafs/advisory/Advisory$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->START:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->timeLocation:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    return-void
.end method

.method public static asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 79
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "type"

    .line 82
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/model/leafs/advisory/Advisory$Type;->fromString(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$Type;

    move-result-object v3

    .line 83
    invoke-static {v3, v2}, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->make(Lcom/netflix/model/leafs/advisory/Advisory$Type;Lcom/google/gson/JsonObject;)Lcom/netflix/model/leafs/advisory/AdvisoryImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getConcreteInstance(Lcom/netflix/model/leafs/advisory/Advisory$Type;)Lcom/netflix/model/leafs/advisory/AdvisoryImpl;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryImpl$1;->$SwitchMap$com$netflix$model$leafs$advisory$Advisory$Type:[I

    invoke-virtual {p0}, Lcom/netflix/model/leafs/advisory/Advisory$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 62
    new-instance p0, Lcom/netflix/model/leafs/advisory/GenericAdvisory;

    invoke-direct {p0}, Lcom/netflix/model/leafs/advisory/GenericAdvisory;-><init>()V

    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;

    invoke-direct {p0}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;-><init>()V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;

    invoke-direct {p0}, Lcom/netflix/model/leafs/advisory/ContentAdvisoryImpl;-><init>()V

    goto :goto_0

    .line 53
    :cond_2
    new-instance p0, Lcom/netflix/model/leafs/advisory/ProductPlacementAdvisory;

    invoke-direct {p0}, Lcom/netflix/model/leafs/advisory/ProductPlacementAdvisory;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static make(Lcom/netflix/model/leafs/advisory/Advisory$Type;Lcom/google/gson/JsonObject;)Lcom/netflix/model/leafs/advisory/AdvisoryImpl;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->getConcreteInstance(Lcom/netflix/model/leafs/advisory/Advisory$Type;)Lcom/netflix/model/leafs/advisory/AdvisoryImpl;

    move-result-object p0

    .line 45
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->populate(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method


# virtual methods
.method public getDelay()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->displayDelay:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->displayDuration:F

    return v0
.end method

.method public getType()Lcom/netflix/model/leafs/advisory/Advisory$Type;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->type:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 7

    .line 112
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 120
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
    const-string v3, "displayDuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v3, "displayTimeGap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "displayTimeLocation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->getData(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->displayDelay:F

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->displayDuration:F

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->fromString(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->timeLocation:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    goto :goto_0

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x546d6c7c -> :sswitch_3
        0x2eefaa -> :sswitch_2
        0x127b35a7 -> :sswitch_1
        0x4207e876 -> :sswitch_0
    .end sparse-switch
.end method
