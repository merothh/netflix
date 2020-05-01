.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultInitialIntervalInMs:I

.field private defaultMaxElapsedTimeInMs:I

.field private defaultMaxIntervalInMs:I

.field private defaultMultiplier:D

.field private defaultRandomizationFactor:D

.field private final initialIntervalInMsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxElapsedTimeInMsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxIntervalInMsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final multiplierAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final randomizationFactorAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultInitialIntervalInMs:I

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultRandomizationFactor:D

    .line 28
    iput-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMultiplier:D

    .line 29
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMaxIntervalInMs:I

    .line 30
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMaxElapsedTimeInMs:I

    .line 32
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->initialIntervalInMsAdapter:Lcom/google/gson/TypeAdapter;

    .line 33
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->randomizationFactorAdapter:Lcom/google/gson/TypeAdapter;

    .line 34
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->multiplierAdapter:Lcom/google/gson/TypeAdapter;

    .line 35
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->maxIntervalInMsAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->maxElapsedTimeInMsAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 64
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 65
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultInitialIntervalInMs:I

    .line 66
    iget-wide v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultRandomizationFactor:D

    .line 67
    iget-wide v5, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMultiplier:D

    .line 68
    iget v7, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMaxIntervalInMs:I

    .line 69
    iget v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMaxElapsedTimeInMs:I

    move v10, v2

    move-wide v11, v3

    move-wide v13, v5

    move v15, v7

    move/from16 v16, v8

    .line 70
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "maxIntervalInMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "multiplier"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "maxElapsedTimeInMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "initialIntervalInMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "randomizationFactor"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->maxElapsedTimeInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v16, v2

    goto :goto_0

    .line 90
    :cond_4
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->maxIntervalInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v15, v2

    goto :goto_0

    .line 86
    :cond_5
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->multiplierAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-wide v13, v2

    goto/16 :goto_0

    .line 82
    :cond_6
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->randomizationFactorAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-wide v11, v2

    goto/16 :goto_0

    .line 78
    :cond_7
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->initialIntervalInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    goto/16 :goto_0

    .line 102
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 103
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy;-><init>(IDDII)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x5a600110 -> :sswitch_4
        -0x27274a8c -> :sswitch_3
        -0xb9e6e50 -> :sswitch_2
        0x4b677dc1 -> :sswitch_1
        0x5114d394 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultInitialIntervalInMs(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;
    .locals 0

    .line 106
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultInitialIntervalInMs:I

    return-object p0
.end method

.method public setDefaultMaxElapsedTimeInMs(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;
    .locals 0

    .line 122
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMaxElapsedTimeInMs:I

    return-object p0
.end method

.method public setDefaultMaxIntervalInMs(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;
    .locals 0

    .line 118
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMaxIntervalInMs:I

    return-object p0
.end method

.method public setDefaultMultiplier(D)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultMultiplier:D

    return-object p0
.end method

.method public setDefaultRandomizationFactor(D)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->defaultRandomizationFactor:D

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;)V
    .locals 3

    if-nez p2, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "initialIntervalInMs"

    .line 46
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->initialIntervalInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getInitialIntervalInMs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "randomizationFactor"

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->randomizationFactorAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getRandomizationFactor()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "multiplier"

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->multiplierAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMultiplier()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "maxIntervalInMs"

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->maxIntervalInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMaxIntervalInMs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "maxElapsedTimeInMs"

    .line 54
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->maxElapsedTimeInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMaxElapsedTimeInMs()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;)V

    return-void
.end method
