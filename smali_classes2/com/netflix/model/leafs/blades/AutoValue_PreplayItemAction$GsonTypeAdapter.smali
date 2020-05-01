.class public final Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/blades/PreplayItemAction;",
        ">;"
    }
.end annotation


# instance fields
.field private final bookmarkPositionAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBookmarkPosition:I

.field private defaultDoNotIncrementInterrupter:Z

.field private defaultIgnoreBookmark:Z

.field private defaultName:Ljava/lang/String;

.field private defaultTrackId:I

.field private defaultType:Ljava/lang/String;

.field private defaultVideoId:Ljava/lang/String;

.field private final doNotIncrementInterrupterAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreBookmarkAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final nameAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trackIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final typeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final videoIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultBookmarkPosition:I

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultName:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultTrackId:I

    .line 33
    iput-boolean v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultDoNotIncrementInterrupter:Z

    .line 34
    iput-boolean v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultIgnoreBookmark:Z

    .line 36
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->bookmarkPositionAdapter:Lcom/google/gson/TypeAdapter;

    .line 37
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 38
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->nameAdapter:Lcom/google/gson/TypeAdapter;

    .line 39
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 40
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->trackIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 41
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->doNotIncrementInterrupterAdapter:Lcom/google/gson/TypeAdapter;

    .line 42
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->ignoreBookmarkAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/blades/PreplayItemAction;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 73
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 74
    iget v2, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultBookmarkPosition:I

    .line 75
    iget-object v3, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 76
    iget-object v4, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultName:Ljava/lang/String;

    .line 77
    iget-object v5, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    .line 78
    iget v6, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultTrackId:I

    .line 79
    iget-boolean v7, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultDoNotIncrementInterrupter:Z

    .line 80
    iget-boolean v8, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultIgnoreBookmark:Z

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    .line 81
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "ignoreBookmark"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v4, "doNotIncrementInterrupter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "videoId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "trackId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v4, "bookmarkPosition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->ignoreBookmarkAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v16, v2

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->doNotIncrementInterrupterAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v15, v2

    goto/16 :goto_0

    .line 105
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->trackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v14, v2

    goto/16 :goto_0

    .line 101
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    goto/16 :goto_0

    .line 97
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->nameAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    goto/16 :goto_0

    .line 93
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    goto/16 :goto_0

    .line 89
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->bookmarkPositionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    goto/16 :goto_0

    .line 121
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 122
    new-instance v1, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6d10f381 -> :sswitch_6
        -0x3f9f2c3a -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x1afceaf6 -> :sswitch_2
        0x2df635c9 -> :sswitch_1
        0x3b441528 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/blades/PreplayItemAction;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultBookmarkPosition(I)Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;
    .locals 0

    .line 125
    iput p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultBookmarkPosition:I

    return-object p0
.end method

.method public setDefaultDoNotIncrementInterrupter(Z)Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultDoNotIncrementInterrupter:Z

    return-object p0
.end method

.method public setDefaultIgnoreBookmark(Z)Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultIgnoreBookmark:Z

    return-object p0
.end method

.method public setDefaultName(Ljava/lang/String;)Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultName:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultTrackId(I)Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;
    .locals 0

    .line 141
    iput p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultTrackId:I

    return-object p0
.end method

.method public setDefaultType(Ljava/lang/String;)Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultVideoId(Ljava/lang/String;)Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/blades/PreplayItemAction;)V
    .locals 2

    if-nez p2, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "bookmarkPosition"

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 52
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->bookmarkPositionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->bookmarkPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "name"

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->nameAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "videoId"

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 58
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->videoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "trackId"

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 60
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->trackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->trackId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "doNotIncrementInterrupter"

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 62
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->doNotIncrementInterrupterAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->doNotIncrementInterrupter()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "ignoreBookmark"

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->ignoreBookmarkAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->ignoreBookmark()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/netflix/model/leafs/blades/PreplayItemAction;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/blades/PreplayItemAction;)V

    return-void
.end method
