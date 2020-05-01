.class public Lcom/netflix/model/leafs/TrackableListSummary;
.super Lcom/netflix/model/leafs/ListSummary;
.source "TrackableListSummary.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrackableListSummary"


# instance fields
.field private heroTrackId:I

.field private listPos:I

.field private requestId:Ljava/lang/String;

.field private trackId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/netflix/model/leafs/ListSummary;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/ListSummary;-><init>(Landroid/os/Parcel;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->trackId:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->heroTrackId:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->listPos:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->requestId:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getHeroTrackId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->heroTrackId:I

    return v0
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->listPos:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->trackId:I

    return v0
.end method

.method public isHero()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/netflix/model/leafs/ListSummary;->populate(Lcom/google/gson/JsonElement;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 37
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    .line 38
    const-string/jumbo v1, "TrackableListSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Populating with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsIntSafe(Lcom/google/gson/JsonElement;)I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->trackId:I

    goto :goto_0

    .line 41
    :sswitch_0
    const-string/jumbo v4, "trackId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "heroTrackId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "listPos"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "requestId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    .line 43
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsIntSafe(Lcom/google/gson/JsonElement;)I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->heroTrackId:I

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsIntSafe(Lcom/google/gson/JsonElement;)I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->listPos:I

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->requestId:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_2
    return-void

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f9f2c3a -> :sswitch_0
        0xad85cd6 -> :sswitch_2
        0x12978e6c -> :sswitch_1
        0x295c940a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 52
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    .line 53
    const-string/jumbo v1, "TrackableListSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Populating with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/netflix/model/leafs/ListSummary;->set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v0

    :goto_1
    return v0

    .line 55
    :sswitch_0
    const-string/jumbo v2, "trackId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "heroTrackId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "listPos"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "requestId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 57
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/TrackableListSummary;->trackId:I

    goto :goto_1

    .line 60
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/TrackableListSummary;->heroTrackId:I

    goto :goto_1

    .line 63
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/TrackableListSummary;->listPos:I

    goto :goto_1

    .line 66
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/TrackableListSummary;->requestId:Ljava/lang/String;

    goto :goto_1

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f9f2c3a -> :sswitch_0
        0xad85cd6 -> :sswitch_2
        0x12978e6c -> :sswitch_1
        0x295c940a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setListPos(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/netflix/model/leafs/TrackableListSummary;->listPos:I

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TrackableListSummary [trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/TrackableListSummary;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", listPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/TrackableListSummary;->listPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/TrackableListSummary;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/netflix/model/leafs/ListSummary;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    iget v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->trackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->heroTrackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->listPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/netflix/model/leafs/TrackableListSummary;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return-void
.end method
