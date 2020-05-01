.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final cellAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCell:I

.field private defaultErrorsThrottleLimit:I

.field private defaultHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultMaxTries:I

.field private defaultTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final errorsThrottleLimitAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final hostMapAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hostsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final maxTriesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final targetsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 5

    .line 35
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultCell:I

    .line 30
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultMaxTries:I

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHosts:Ljava/util/List;

    .line 32
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultErrorsThrottleLimit:I

    .line 33
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultTargets:Ljava/util/List;

    .line 34
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHostMap:Ljava/util/Map;

    .line 36
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    .line 37
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->maxTriesAdapter:Lcom/google/gson/TypeAdapter;

    .line 38
    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostsAdapter:Lcom/google/gson/TypeAdapter;

    .line 39
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->errorsThrottleLimitAdapter:Lcom/google/gson/TypeAdapter;

    .line 40
    const-class v1, Ljava/util/List;

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->targetsAdapter:Lcom/google/gson/TypeAdapter;

    .line 41
    const-class v1, Ljava/util/Map;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostMapAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;
    .locals 14

    .line 66
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 71
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultCell:I

    .line 72
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultMaxTries:I

    .line 73
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHosts:Ljava/util/List;

    .line 74
    iget v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultErrorsThrottleLimit:I

    .line 75
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultTargets:Ljava/util/List;

    .line 76
    iget-object v5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHostMap:Ljava/util/Map;

    move v7, v0

    move v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    .line 77
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v13, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "hostMap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "maxTries"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "hosts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "cell"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "errorsThrottleLimit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "targets"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    :cond_2
    :goto_1
    if-eqz v1, :cond_8

    if-eq v1, v13, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 109
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostMapAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v12, v0

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->targetsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v11, v0

    goto/16 :goto_0

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->errorsThrottleLimitAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    goto/16 :goto_0

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v9, v0

    goto/16 :goto_0

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->maxTriesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v8, v0

    goto/16 :goto_0

    .line 85
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 113
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 114
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig;

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig;-><init>(IILjava/util/List;ILjava/util/List;Ljava/util/Map;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5bb03efe -> :sswitch_5
        -0x3ed75efa -> :sswitch_4
        0x2e8962 -> :sswitch_3
        0x5edbfcb -> :sswitch_2
        0x17b73895 -> :sswitch_1
        0x417c7694 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultCell(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0

    .line 117
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultCell:I

    return-object p0
.end method

.method public setDefaultErrorsThrottleLimit(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0

    .line 129
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultErrorsThrottleLimit:I

    return-object p0
.end method

.method public setDefaultHostMap(Ljava/util/Map;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public setDefaultHosts(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHosts:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultMaxTries(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0

    .line 121
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultMaxTries:I

    return-object p0
.end method

.method public setDefaultTargets(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultTargets:Ljava/util/List;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;)V
    .locals 2

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "cell"

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->cell()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "maxTries"

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->maxTriesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->maxTries()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "hosts"

    .line 54
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->hosts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "errorsThrottleLimit"

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->errorsThrottleLimitAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->errorsThrottleLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "targets"

    .line 58
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->targetsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->targets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "hostMap"

    .line 60
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostMapAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->hostMap()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;)V

    return-void
.end method
