.class public final Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/SeasonRenewal;",
        ">;"
    }
.end annotation


# instance fields
.field private final assetsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/SeasonRenewalAsset;",
            ">;>;"
        }
    .end annotation
.end field

.field private final autoPlaySecondsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/SeasonRenewalAsset;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAutoPlaySeconds:I

.field private defaultDisplayUpNext:Z

.field private defaultMessage:Ljava/lang/String;

.field private defaultWatchedTopNodeid:I

.field private final displayUpNextAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final messageAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final watchedTopNodeidAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultMessage:Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultDisplayUpNext:Z

    .line 31
    iput v1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultAutoPlaySeconds:I

    .line 32
    iput v1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultWatchedTopNodeid:I

    .line 33
    iput-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultAssets:Ljava/util/Map;

    .line 35
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->messageAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->displayUpNextAdapter:Lcom/google/gson/TypeAdapter;

    .line 37
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->autoPlaySecondsAdapter:Lcom/google/gson/TypeAdapter;

    .line 38
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->watchedTopNodeidAdapter:Lcom/google/gson/TypeAdapter;

    .line 39
    const-class v0, Ljava/util/Map;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    const-class v1, Lcom/netflix/model/leafs/SeasonRenewalAsset;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->assetsAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/SeasonRenewal;
    .locals 12

    .line 62
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 67
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultMessage:Ljava/lang/String;

    .line 68
    iget-boolean v1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultDisplayUpNext:Z

    .line 69
    iget v2, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultAutoPlaySeconds:I

    .line 70
    iget v3, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultWatchedTopNodeid:I

    .line 71
    iget-object v4, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultAssets:Ljava/util/Map;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    .line 72
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 73
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v11, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "autoPlaySeconds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "watchedTopNodeid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "assets"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "displayUpNext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v11, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 100
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->assetsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v10, v0

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->watchedTopNodeidAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v9, v0

    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->autoPlaySecondsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v8, v0

    goto/16 :goto_0

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->displayUpNextAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->messageAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto/16 :goto_0

    .line 104
    :cond_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 105
    new-instance p1, Lcom/netflix/model/leafs/AutoValue_SeasonRenewal;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/netflix/model/leafs/AutoValue_SeasonRenewal;-><init>(Ljava/lang/String;ZIILjava/util/Map;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x68b8cc70 -> :sswitch_4
        -0x53ef8c7d -> :sswitch_3
        0x28682644 -> :sswitch_2
        0x38eb0007 -> :sswitch_1
        0x665bcb7c -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/SeasonRenewal;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultAssets(Ljava/util/Map;)Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/SeasonRenewalAsset;",
            ">;)",
            "Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultAssets:Ljava/util/Map;

    return-object p0
.end method

.method public setDefaultAutoPlaySeconds(I)Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;
    .locals 0

    .line 116
    iput p1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultAutoPlaySeconds:I

    return-object p0
.end method

.method public setDefaultDisplayUpNext(Z)Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultDisplayUpNext:Z

    return-object p0
.end method

.method public setDefaultMessage(Ljava/lang/String;)Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultWatchedTopNodeid(I)Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;
    .locals 0

    .line 120
    iput p1, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->defaultWatchedTopNodeid:I

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/SeasonRenewal;)V
    .locals 2

    if-nez p2, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "message"

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 49
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->messageAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/SeasonRenewal;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "displayUpNext"

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 51
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->displayUpNextAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/SeasonRenewal;->displayUpNext()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "autoPlaySeconds"

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 53
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->autoPlaySecondsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/SeasonRenewal;->autoPlaySeconds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "watchedTopNodeid"

    .line 54
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 55
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->watchedTopNodeidAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/SeasonRenewal;->watchedTopNodeid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "assets"

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 57
    iget-object v0, p0, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->assetsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/SeasonRenewal;->assets()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/netflix/model/leafs/SeasonRenewal;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/$AutoValue_SeasonRenewal$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/SeasonRenewal;)V

    return-void
.end method
