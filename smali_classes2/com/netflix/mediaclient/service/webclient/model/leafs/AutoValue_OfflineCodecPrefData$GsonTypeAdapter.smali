.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;",
        ">;"
    }
.end annotation


# instance fields
.field private final AVCHighCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final AVCHighCodecForceEnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final VP9HWCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAVCHighCodecEnabled:Z

.field private defaultAVCHighCodecForceEnabled:Z

.field private defaultEveVP9HWCodecEnabled:Z

.field private defaultVP9HWCodecEnabled:Z

.field private final eveVP9HWCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
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

    .line 24
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultVP9HWCodecEnabled:Z

    .line 25
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultAVCHighCodecEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultEveVP9HWCodecEnabled:Z

    .line 27
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultAVCHighCodecForceEnabled:Z

    .line 29
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->VP9HWCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 30
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->AVCHighCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 31
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->eveVP9HWCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 32
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->AVCHighCodecForceEnabledAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;
    .locals 10

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 58
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultVP9HWCodecEnabled:Z

    .line 59
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultAVCHighCodecEnabled:Z

    .line 60
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultEveVP9HWCodecEnabled:Z

    .line 61
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultAVCHighCodecForceEnabled:Z

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 63
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v5, v6, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "isEveVP9HWCodecEnabled"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "isAVCHighCodecEnabled"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "isAVCHighCodecForceEnabled"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v6, "isVP9HWCodecEnabled"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :cond_2
    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->AVCHighCodecForceEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v3, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->eveVP9HWCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 74
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->AVCHighCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 70
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->VP9HWCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_0

    .line 90
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 91
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData;-><init>(ZZZZ)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c789471 -> :sswitch_3
        -0x7147cf5a -> :sswitch_2
        0x5559e271 -> :sswitch_1
        0x7962a06f -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultAVCHighCodecEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultAVCHighCodecEnabled:Z

    return-object p0
.end method

.method public setDefaultAVCHighCodecForceEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultAVCHighCodecForceEnabled:Z

    return-object p0
.end method

.method public setDefaultEveVP9HWCodecEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultEveVP9HWCodecEnabled:Z

    return-object p0
.end method

.method public setDefaultVP9HWCodecEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->defaultVP9HWCodecEnabled:Z

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;)V
    .locals 2

    if-nez p2, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "isVP9HWCodecEnabled"

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->VP9HWCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;->isVP9HWCodecEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isAVCHighCodecEnabled"

    .line 43
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->AVCHighCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;->isAVCHighCodecEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isEveVP9HWCodecEnabled"

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->eveVP9HWCodecEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;->isEveVP9HWCodecEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isAVCHighCodecForceEnabled"

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->AVCHighCodecForceEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;->isAVCHighCodecForceEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineCodecPrefData$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;)V

    return-void
.end method
