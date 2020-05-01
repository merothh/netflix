.class public final Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/BillboardCTA;",
        ">;"
    }
.end annotation


# instance fields
.field private final billboardPhaseAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bookmarkPositionAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBillboardPhase:Ljava/lang/String;

.field private defaultBookmarkPosition:Ljava/lang/String;

.field private defaultGalleryId:Ljava/lang/String;

.field private defaultIgnoreBookmark:Z

.field private defaultIndex:I

.field private defaultName:Ljava/lang/String;

.field private defaultSequenceNumber:Ljava/lang/String;

.field private defaultSuppressPostPlay:Z

.field private defaultType:Ljava/lang/String;

.field private defaultVideoId:Ljava/lang/String;

.field private final galleryIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
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

.field private final indexAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
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

.field private final sequenceNumberAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final suppressPostPlayAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
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

    .line 44
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultBillboardPhase:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultSuppressPostPlay:Z

    .line 39
    iput-boolean v1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultIgnoreBookmark:Z

    .line 40
    iput v1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultIndex:I

    .line 41
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultSequenceNumber:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultBookmarkPosition:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultGalleryId:Ljava/lang/String;

    .line 45
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->nameAdapter:Lcom/google/gson/TypeAdapter;

    .line 46
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 47
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->billboardPhaseAdapter:Lcom/google/gson/TypeAdapter;

    .line 48
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 49
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->suppressPostPlayAdapter:Lcom/google/gson/TypeAdapter;

    .line 50
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->ignoreBookmarkAdapter:Lcom/google/gson/TypeAdapter;

    .line 51
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->indexAdapter:Lcom/google/gson/TypeAdapter;

    .line 52
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->sequenceNumberAdapter:Lcom/google/gson/TypeAdapter;

    .line 53
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->bookmarkPositionAdapter:Lcom/google/gson/TypeAdapter;

    .line 54
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->galleryIdAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/BillboardCTA;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 91
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 92
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultName:Ljava/lang/String;

    .line 93
    iget-object v3, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 94
    iget-object v4, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultBillboardPhase:Ljava/lang/String;

    .line 95
    iget-object v5, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    .line 96
    iget-boolean v6, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultSuppressPostPlay:Z

    .line 97
    iget-boolean v7, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultIgnoreBookmark:Z

    .line 98
    iget v8, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultIndex:I

    .line 99
    iget-object v9, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultSequenceNumber:Ljava/lang/String;

    .line 100
    iget-object v10, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultBookmarkPosition:Ljava/lang/String;

    .line 101
    iget-object v11, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultGalleryId:Ljava/lang/String;

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .line 102
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "suppressPostPlay"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "ignoreBookmark"

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
    const-string v4, "galleryId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_4
    const-string v4, "index"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_7
    const-string v4, "billboardPhase"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_8
    const-string v4, "sequenceNumber"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_9
    const-string v4, "bookmarkPosition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 146
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->galleryIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v22, v2

    goto/16 :goto_0

    .line 142
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->bookmarkPositionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    goto/16 :goto_0

    .line 138
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->sequenceNumberAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    goto/16 :goto_0

    .line 134
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->indexAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_0

    .line 130
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->ignoreBookmarkAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v18, v2

    goto/16 :goto_0

    .line 126
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->suppressPostPlayAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_0

    .line 122
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    goto/16 :goto_0

    .line 118
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->billboardPhaseAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    goto/16 :goto_0

    .line 114
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v14, v2

    goto/16 :goto_0

    .line 110
    :pswitch_9
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->nameAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    goto/16 :goto_0

    .line 154
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 155
    new-instance v1, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA;

    move-object v12, v1

    invoke-direct/range {v12 .. v22}, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d10f381 -> :sswitch_9
        -0x50b45596 -> :sswitch_8
        -0x3e0f6e84 -> :sswitch_7
        0x337a8b -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x5fb28d2 -> :sswitch_4
        0x130bf40d -> :sswitch_3
        0x1afceaf6 -> :sswitch_2
        0x3b441528 -> :sswitch_1
        0x4432cdc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    .line 23
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/BillboardCTA;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultBillboardPhase(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultBillboardPhase:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultBookmarkPosition(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultBookmarkPosition:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultGalleryId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultGalleryId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultIgnoreBookmark(Z)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultIgnoreBookmark:Z

    return-object p0
.end method

.method public setDefaultIndex(I)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 182
    iput p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultIndex:I

    return-object p0
.end method

.method public setDefaultName(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultName:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultSequenceNumber(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultSequenceNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultSuppressPostPlay(Z)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultSuppressPostPlay:Z

    return-object p0
.end method

.method public setDefaultType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultVideoId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/BillboardCTA;)V
    .locals 2

    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "name"

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->nameAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 66
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "billboardPhase"

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 68
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->billboardPhaseAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->billboardPhase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "videoId"

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 70
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->videoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "suppressPostPlay"

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 72
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->suppressPostPlayAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->suppressPostPlay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "ignoreBookmark"

    .line 73
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 74
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->ignoreBookmarkAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "index"

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->indexAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "sequenceNumber"

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->sequenceNumberAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "bookmarkPosition"

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 80
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->bookmarkPositionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->bookmarkPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "galleryId"

    .line 81
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 82
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->galleryIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->galleryId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/netflix/model/leafs/originals/BillboardCTA;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/BillboardCTA;)V

    return-void
.end method
