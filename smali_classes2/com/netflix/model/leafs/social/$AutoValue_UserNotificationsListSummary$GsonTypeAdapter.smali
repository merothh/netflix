.class public final Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/social/UserNotificationsListSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseTrackIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBaseTrackId:I

.field private defaultMdpTrackId:I

.field private defaultNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPlayerTrackId:I

.field private defaultRequestId:Ljava/lang/String;

.field private final mdpTrackIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final playerTrackIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final requestIdAdapter:Lcom/google/gson/TypeAdapter;
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

    .line 34
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultRequestId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultBaseTrackId:I

    .line 31
    iput v1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultMdpTrackId:I

    .line 32
    iput v1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultPlayerTrackId:I

    .line 33
    iput-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultNotifications:Ljava/util/List;

    .line 35
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->requestIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->baseTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 37
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->mdpTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 38
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->playerTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 39
    const-class v0, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->notificationsAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/social/UserNotificationsListSummary;
    .locals 12

    .line 63
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 68
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultRequestId:Ljava/lang/String;

    .line 69
    iget v1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultBaseTrackId:I

    .line 70
    iget v2, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultMdpTrackId:I

    .line 71
    iget v3, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultPlayerTrackId:I

    .line 72
    iget-object v4, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultNotifications:Ljava/util/List;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    .line 73
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v11, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "playerTrackId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "baseTrackId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "requestId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "mdpTrackId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v11, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->notificationsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    goto :goto_0

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->playerTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v9, v0

    goto :goto_0

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->mdpTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v8, v0

    goto/16 :goto_0

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->baseTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->requestIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto/16 :goto_0

    .line 105
    :cond_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 106
    new-instance p1, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationsListSummary;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationsListSummary;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7be26c33 -> :sswitch_4
        0x295c940a -> :sswitch_3
        0x498e47b5 -> :sswitch_2
        0x4bd694e8 -> :sswitch_1
        0x5e8201a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultBaseTrackId(I)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;
    .locals 0

    .line 113
    iput p1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultBaseTrackId:I

    return-object p0
.end method

.method public setDefaultMdpTrackId(I)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;
    .locals 0

    .line 117
    iput p1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultMdpTrackId:I

    return-object p0
.end method

.method public setDefaultNotifications(Ljava/util/List;)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)",
            "Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultNotifications:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultPlayerTrackId(I)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;
    .locals 0

    .line 121
    iput p1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultPlayerTrackId:I

    return-object p0
.end method

.method public setDefaultRequestId(Ljava/lang/String;)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->defaultRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/social/UserNotificationsListSummary;)V
    .locals 2

    if-nez p2, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "requestId"

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 50
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->requestIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->requestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "baseTrackId"

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 52
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->baseTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->baseTrackId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "mdpTrackId"

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->mdpTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->mdpTrackId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "playerTrackId"

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->playerTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->playerTrackId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "notifications"

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 58
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->notificationsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/social/UserNotificationsListSummary;)V

    return-void
.end method
