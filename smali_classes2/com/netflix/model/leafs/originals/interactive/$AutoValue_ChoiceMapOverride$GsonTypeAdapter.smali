.class public final Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultDefaultIndex:Ljava/lang/Integer;

.field private final defaultIndexAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSegmentWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final segmentWeightsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultDefaultIndex:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultSegmentWeights:Ljava/util/Map;

    .line 28
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultIndexAdapter:Lcom/google/gson/TypeAdapter;

    .line 29
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->segmentWeightsAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;
    .locals 7

    .line 46
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 51
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultDefaultIndex:Ljava/lang/Integer;

    .line 52
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultSegmentWeights:Ljava/util/Map;

    .line 53
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 54
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x27fadcef

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const v5, -0x1cd9e9b8

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "segmentWeights"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "defaultIndex"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_5

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 65
    :cond_5
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->segmentWeightsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultIndexAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 73
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 74
    new-instance p1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoiceMapOverride;

    invoke-direct {p1, v0, v1}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoiceMapOverride;-><init>(Ljava/lang/Integer;Ljava/util/Map;)V

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultDefaultIndex(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultDefaultIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDefaultSegmentWeights(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultSegmentWeights:Ljava/util/Map;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;)V
    .locals 2

    if-nez p2, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "defaultIndex"

    .line 38
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 39
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->defaultIndexAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;->defaultIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "segmentWeights"

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 41
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->segmentWeightsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;->segmentWeights()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ChoiceMapOverride$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;)V

    return-void
.end method
