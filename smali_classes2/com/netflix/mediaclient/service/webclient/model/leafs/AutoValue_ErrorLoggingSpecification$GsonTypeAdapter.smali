.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultDisableChancePercentage:I

.field private defaultDisabled:Z

.field private defaultImplementation:Ljava/lang/String;

.field private final disableChancePercentageAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final disabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final implementationAdapter:Lcom/google/gson/TypeAdapter;
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
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultImplementation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultDisabled:Z

    .line 27
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultDisableChancePercentage:I

    .line 29
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->implementationAdapter:Lcom/google/gson/TypeAdapter;

    .line 30
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->disabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 31
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->disableChancePercentageAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 9

    .line 50
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultImplementation:Ljava/lang/String;

    .line 56
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultDisabled:Z

    .line 57
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultDisableChancePercentage:I

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v4, v5, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x5b80f80a

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_4

    const v6, 0x639e22e8

    if-eq v5, v6, :cond_3

    const v6, 0x6455abb2

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "implementation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const-string v5, "disable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const-string v5, "disableChancePercentage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    :cond_5
    :goto_1
    if-eqz v4, :cond_8

    if-eq v4, v8, :cond_7

    if-eq v4, v7, :cond_6

    .line 78
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 74
    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->disableChancePercentageAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 70
    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->disabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 66
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->implementationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 83
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification;

    invoke-direct {p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification;-><init>(Ljava/lang/String;ZI)V

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultDisableChancePercentage(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;
    .locals 0

    .line 94
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultDisableChancePercentage:I

    return-object p0
.end method

.method public setDefaultDisabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultDisabled:Z

    return-object p0
.end method

.method public setDefaultImplementation(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->defaultImplementation:Ljava/lang/String;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)V
    .locals 2

    if-nez p2, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "implementation"

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->implementationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getImplementation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disable"

    .line 42
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->disabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->isDisabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableChancePercentage"

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->disableChancePercentageAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDisableChancePercentage()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ErrorLoggingSpecification$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)V

    return-void
.end method