.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "$AutoValue_UmaAlert.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;",
        ">;"
    }
.end annotation


# instance fields
.field private final abTestCellAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final abTestIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blockingAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final bodyAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cta1Adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end field

.field private final cta2Adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end field

.field private final localeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final messageIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final messageNameAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final titleAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 34
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->abTestCellAdapter:Lcom/google/gson/TypeAdapter;

    .line 35
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->abTestIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->localeAdapter:Lcom/google/gson/TypeAdapter;

    .line 37
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->messageNameAdapter:Lcom/google/gson/TypeAdapter;

    .line 38
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->messageIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 39
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 40
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->blockingAdapter:Lcom/google/gson/TypeAdapter;

    .line 41
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    .line 42
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->bodyAdapter:Lcom/google/gson/TypeAdapter;

    .line 43
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->cta1Adapter:Lcom/google/gson/TypeAdapter;

    .line 44
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->cta2Adapter:Lcom/google/gson/TypeAdapter;

    .line 45
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->timestampAdapter:Lcom/google/gson/TypeAdapter;

    .line 46
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 19

    .prologue
    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const-wide/16 v8, 0x0

    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v12, 0x0

    .line 101
    const/4 v13, 0x0

    .line 102
    const/4 v14, 0x0

    .line 103
    const/4 v15, 0x0

    .line 104
    const-wide/16 v16, 0x0

    .line 105
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v18, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 111
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 111
    :sswitch_0
    const-string/jumbo v18, "abTestCell"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v18, "abTestId"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v18, "locale"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v18, "messageName"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v18, "messageId"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v18, "viewType"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v18, "blocking"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v18, "body"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v18, "cta1"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v18, "cta2"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v18, "timestamp"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    .line 113
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->abTestCellAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_0

    .line 117
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->abTestIdAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_0

    .line 121
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->localeAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v2

    .line 122
    goto/16 :goto_0

    .line 125
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->messageNameAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    .line 126
    goto/16 :goto_0

    .line 129
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->messageIdAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto/16 :goto_0

    .line 133
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v10, v2

    .line 134
    goto/16 :goto_0

    .line 137
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->blockingAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto/16 :goto_0

    .line 141
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    .line 142
    goto/16 :goto_0

    .line 145
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->bodyAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    .line 146
    goto/16 :goto_0

    .line 149
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->cta1Adapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-object v14, v2

    .line 150
    goto/16 :goto_0

    .line 153
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->cta2Adapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-object v15, v2

    .line 154
    goto/16 :goto_0

    .line 157
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->timestampAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto/16 :goto_0

    .line 165
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 166
    new-instance v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;

    invoke-direct/range {v3 .. v17}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;-><init>(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;J)V

    return-object v3

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        -0x55d4dc7e -> :sswitch_4
        -0x4169f1a6 -> :sswitch_2
        -0x340d6cce -> :sswitch_3
        -0x279c93cb -> :sswitch_6
        0x2e39a2 -> :sswitch_8
        0x2ec021 -> :sswitch_9
        0x2ec022 -> :sswitch_a
        0x3492916 -> :sswitch_b
        0x6942258 -> :sswitch_7
        0x117e6855 -> :sswitch_0
        0x31910cce -> :sswitch_1
        0x4747637f -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 50
    const-string/jumbo v0, "abTestCell"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->abTestCellAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->abTestCell()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 52
    const-string/jumbo v0, "abTestId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->abTestIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->abTestId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->locale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "locale"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->localeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->locale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 58
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    const-string/jumbo v0, "messageName"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->messageNameAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 62
    :cond_1
    const-string/jumbo v0, "messageId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->messageIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    const-string/jumbo v0, "viewType"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 68
    :cond_2
    const-string/jumbo v0, "blocking"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->blockingAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 71
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 74
    :cond_3
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    const-string/jumbo v0, "body"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->bodyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 78
    :cond_4
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 79
    const-string/jumbo v0, "cta1"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->cta1Adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 82
    :cond_5
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 83
    const-string/jumbo v0, "cta2"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->cta2Adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 86
    :cond_6
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->timestampAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 89
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    return-void
.end method
