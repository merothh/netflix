.class public final Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultDelay:J

.field private defaultDelta:Ljava/lang/Float;

.field private defaultDuration:J

.field private defaultEase:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

.field private defaultFromOrigin:Z

.field private defaultFromValue:Ljava/lang/Float;

.field private defaultToValue:Ljava/lang/Float;

.field private final delayAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final deltaAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final durationAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final easeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/Ease;",
            ">;"
        }
    .end annotation
.end field

.field private final fromOriginAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final fromValueAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final toValueAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultFromValue:Ljava/lang/Float;

    .line 31
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultToValue:Ljava/lang/Float;

    const-wide/16 v1, 0x0

    .line 32
    iput-wide v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDelay:J

    .line 33
    iput-wide v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDuration:J

    .line 34
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDelta:Ljava/lang/Float;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultFromOrigin:Z

    .line 36
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultEase:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    .line 38
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->fromValueAdapter:Lcom/google/gson/TypeAdapter;

    .line 39
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->toValueAdapter:Lcom/google/gson/TypeAdapter;

    .line 40
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->delayAdapter:Lcom/google/gson/TypeAdapter;

    .line 41
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->durationAdapter:Lcom/google/gson/TypeAdapter;

    .line 42
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->deltaAdapter:Lcom/google/gson/TypeAdapter;

    .line 43
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->fromOriginAdapter:Lcom/google/gson/TypeAdapter;

    .line 44
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->easeAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 76
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultFromValue:Ljava/lang/Float;

    .line 77
    iget-object v3, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultToValue:Ljava/lang/Float;

    .line 78
    iget-wide v4, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDelay:J

    .line 79
    iget-wide v6, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDuration:J

    .line 80
    iget-object v8, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDelta:Ljava/lang/Float;

    .line 81
    iget-boolean v9, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultFromOrigin:Z

    .line 82
    iget-object v10, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultEase:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    move-object v12, v2

    move-object v13, v3

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    .line 83
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "fromOrigin"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v4, "delta"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_2
    const-string v4, "delay"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "fromValue"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "ease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v4, "toValue"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "duration"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->easeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    move-object/from16 v20, v2

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->fromOriginAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_0

    .line 107
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->deltaAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    move-object/from16 v18, v2

    goto/16 :goto_0

    .line 103
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->durationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide/from16 v16, v2

    goto/16 :goto_0

    .line 99
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->delayAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v14, v2

    goto/16 :goto_0

    .line 95
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->toValueAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    move-object v13, v2

    goto/16 :goto_0

    .line 91
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->fromValueAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    move-object v12, v2

    goto/16 :goto_0

    .line 123
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 124
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;

    move-object v11, v1

    invoke-direct/range {v11 .. v20}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;-><init>(Ljava/lang/Float;Ljava/lang/Float;JJLjava/lang/Float;ZLcom/netflix/model/leafs/originals/interactive/animations/Ease;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_6
        -0x4559984a -> :sswitch_5
        0x2f63ee -> :sswitch_4
        0x447c3e7 -> :sswitch_3
        0x5b0b983 -> :sswitch_2
        0x5b0bbb8 -> :sswitch_1
        0x79accb70 -> :sswitch_0
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

    .line 22
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultDelay(J)Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDelay:J

    return-object p0
.end method

.method public setDefaultDelta(Ljava/lang/Float;)Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDelta:Ljava/lang/Float;

    return-object p0
.end method

.method public setDefaultDuration(J)Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;
    .locals 0

    .line 139
    iput-wide p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultDuration:J

    return-object p0
.end method

.method public setDefaultEase(Lcom/netflix/model/leafs/originals/interactive/animations/Ease;)Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultEase:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    return-object p0
.end method

.method public setDefaultFromOrigin(Z)Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultFromOrigin:Z

    return-object p0
.end method

.method public setDefaultFromValue(Ljava/lang/Float;)Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultFromValue:Ljava/lang/Float;

    return-object p0
.end method

.method public setDefaultToValue(Ljava/lang/Float;)Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->defaultToValue:Ljava/lang/Float;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;)V
    .locals 3

    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "fromValue"

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->fromValueAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->fromValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "toValue"

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->toValueAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "delay"

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 58
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->delayAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->delay()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "duration"

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 60
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->durationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->duration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "delta"

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 62
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->deltaAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->delta()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "fromOrigin"

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->fromOriginAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->fromOrigin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "ease"

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 66
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->easeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->ease()Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;)V

    return-void
.end method
