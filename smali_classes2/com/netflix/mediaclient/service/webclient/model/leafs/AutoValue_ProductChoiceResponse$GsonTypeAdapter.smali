.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final choicesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;",
            ">;"
        }
    .end annotation
.end field

.field private defaultIsFallback:Z

.field private defaultLastPlanChangeDate:J

.field private defaultNextBillingDate:J

.field private defaultTrackingInfo:Ljava/lang/String;

.field private final isFallbackAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final lastPlanChangeDateAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final nextBillingDateAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final trackingInfoAdapter:Lcom/google/gson/TypeAdapter;
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
    .locals 4

    .line 33
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultLastPlanChangeDate:J

    .line 29
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultNextBillingDate:J

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultIsFallback:Z

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    .line 32
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultTrackingInfo:Ljava/lang/String;

    .line 34
    const-class v1, Ljava/lang/Long;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->lastPlanChangeDateAdapter:Lcom/google/gson/TypeAdapter;

    .line 35
    const-class v1, Ljava/lang/Long;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->nextBillingDateAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->isFallbackAdapter:Lcom/google/gson/TypeAdapter;

    .line 37
    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    .line 38
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 65
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 66
    iget-wide v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultLastPlanChangeDate:J

    .line 67
    iget-wide v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultNextBillingDate:J

    .line 68
    iget-boolean v6, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultIsFallback:Z

    .line 69
    iget-object v7, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    .line 70
    iget-object v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultTrackingInfo:Ljava/lang/String;

    move-wide v10, v2

    move-wide v12, v4

    move v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    .line 71
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "nextBillingDate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "fallback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "choices"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "lastPlanChangeDate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "trackingInfo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_0

    .line 91
    :cond_4
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v15, v2

    goto :goto_0

    .line 87
    :cond_5
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->isFallbackAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v14, v2

    goto/16 :goto_0

    .line 83
    :cond_6
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->nextBillingDateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v12, v2

    goto/16 :goto_0

    .line 79
    :cond_7
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->lastPlanChangeDateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v10, v2

    goto/16 :goto_0

    .line 103
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 104
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse;-><init>(JJZLjava/util/List;Ljava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x704f3bfb -> :sswitch_4
        -0x65427843 -> :sswitch_3
        0x2cce56f2 -> :sswitch_2
        0x2d5fa6e2 -> :sswitch_1
        0x6b94a7d6 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultChoices(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultIsFallback(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultIsFallback:Z

    return-object p0
.end method

.method public setDefaultLastPlanChangeDate(J)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultLastPlanChangeDate:J

    return-object p0
.end method

.method public setDefaultNextBillingDate(J)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultNextBillingDate:J

    return-object p0
.end method

.method public setDefaultTrackingInfo(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->defaultTrackingInfo:Ljava/lang/String;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
    .locals 3

    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "lastPlanChangeDate"

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->lastPlanChangeDateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->lastPlanChangeDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "nextBillingDate"

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->nextBillingDateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->nextBillingDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "fallback"

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->isFallbackAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->isFallback()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "choices"

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->choices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "trackingInfo"

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->trackingInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ProductChoiceResponse$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V

    return-void
.end method
