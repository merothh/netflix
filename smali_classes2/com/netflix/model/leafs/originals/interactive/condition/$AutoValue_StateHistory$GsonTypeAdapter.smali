.class public final Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultGlobal:Lcom/netflix/model/leafs/originals/interactive/condition/State;

.field private defaultPersistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

.field private final globalAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/State;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->defaultPersistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->defaultGlobal:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    .line 23
    new-instance p1, Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;

    invoke-direct {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->persistentAdapter:Lcom/google/gson/TypeAdapter;

    .line 24
    new-instance p1, Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;

    invoke-direct {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->globalAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;
    .locals 7

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 46
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->defaultPersistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    .line 47
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->defaultGlobal:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    .line 48
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 49
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4a16fc5d

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x1e8b8e97

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "persistent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v4, "global"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_5

    .line 64
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->globalAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    goto :goto_0

    .line 56
    :cond_6
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->persistentAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    goto :goto_0

    .line 68
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 69
    new-instance p1, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;

    invoke-direct {p1, v0, v1}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;-><init>(Lcom/netflix/model/leafs/originals/interactive/condition/State;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultGlobal(Lcom/netflix/model/leafs/originals/interactive/condition/State;)Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->defaultGlobal:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    return-object p0
.end method

.method public setDefaultPersistent(Lcom/netflix/model/leafs/originals/interactive/condition/State;)Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->defaultPersistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V
    .locals 2

    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "persistent"

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 34
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->persistentAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "global"

    .line 35
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 36
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->globalAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->global()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    return-void
.end method
