.class public Lcom/netflix/model/leafs/originals/interactive/condition/SnapshotAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private adapter:Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 14
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/SnapshotAdapter;->adapter:Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;
    .locals 3

    .line 27
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_2

    .line 32
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    .line 34
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/SnapshotAdapter;->adapter:Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;

    invoke-virtual {v1, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/SnapshotAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 19
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    .line 20
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/SnapshotAdapter;->adapter:Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/condition/SnapshotAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)V

    return-void
.end method
