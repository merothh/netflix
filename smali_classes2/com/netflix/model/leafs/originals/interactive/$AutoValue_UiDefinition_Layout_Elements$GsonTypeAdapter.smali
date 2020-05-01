.class public final Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;",
        ">;"
    }
.end annotation


# instance fields
.field private final backgroundAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;",
            ">;"
        }
    .end annotation
.end field

.field private final choicesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultBackground:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

.field private defaultChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;",
            ">;"
        }
    .end annotation
.end field

.field private defaultNotification:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

.field private defaultTimer:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

.field private final notificationAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final timerAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultBackground:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 29
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultTimer:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    .line 30
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultNotification:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    .line 33
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->backgroundAdapter:Lcom/google/gson/TypeAdapter;

    .line 34
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->timerAdapter:Lcom/google/gson/TypeAdapter;

    .line 35
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->notificationAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;
    .locals 10

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 63
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultBackground:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 64
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultTimer:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    .line 65
    iget-object v2, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    .line 66
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultNotification:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    .line 67
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 68
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v5, v6, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "choices"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "notification"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_2
    const-string v6, "timer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v6, "background"

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

    .line 91
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->notificationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v3, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    goto :goto_0

    .line 83
    :cond_4
    iget-object v2, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->timerAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    goto :goto_0

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->backgroundAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    goto :goto_0

    .line 95
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 96
    new-instance p1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Elements;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Elements;-><init>(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_3
        0x6940745 -> :sswitch_2
        0x237a88eb -> :sswitch_1
        0x2cce56f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultBackground(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultBackground:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    return-object p0
.end method

.method public setDefaultChoices(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultNotification(Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultNotification:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    return-object p0
.end method

.method public setDefaultTimer(Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->defaultTimer:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;)V
    .locals 2

    if-nez p2, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "background"

    .line 46
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 47
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->backgroundAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "timer"

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 49
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->timerAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->timer()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "choices"

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 51
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->choices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "notification"

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 53
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->notificationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->notification()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Elements$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;)V

    return-void
.end method
