.class public Lcom/netflix/model/leafs/PostPlayActionImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/PostPlayAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayAction"


# instance fields
.field private final additionalTrackIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ancestorTitle:Ljava/lang/String;

.field private autoPlay:Z

.field private autoPlaySeconds:I

.field private bookmarkPosition:I

.field private displayText:Ljava/lang/String;

.field private doNotIncrementInterrupter:Z

.field private episode:I

.field private forceInterrupt:Z

.field private inMyList:Z

.field private interruptDisplayText:Ljava/lang/String;

.field private interruptThreshold:I

.field private itemIndex:I

.field private logicalStart:J

.field private minutesRemaining:J

.field protected name:Ljava/lang/String;

.field private proxy:Lo/TableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private seamlessStart:I

.field private season:I

.field private seasonSequenceAbbr:Ljava/lang/String;

.field private seasonSequenceLong:Ljava/lang/String;

.field private trackId:I

.field protected type:Ljava/lang/String;

.field private videoId:I

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/netflix/model/leafs/PostPlayActionImpl;-><init>(Lcom/google/gson/JsonElement;Lo/TableLayout;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;Lo/TableLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    const/16 v0, -0x82

    .line 53
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->trackId:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->additionalTrackIds:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->inMyList:Z

    .line 67
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->doNotIncrementInterrupter:Z

    .line 69
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->autoPlay:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seamlessStart:I

    .line 36
    iput-object p2, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->proxy:Lo/TableLayout;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/PostPlayActionImpl;->populate(Lcom/google/gson/JsonElement;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    const/16 v0, -0x82

    .line 53
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->trackId:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->additionalTrackIds:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->inMyList:Z

    .line 67
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->doNotIncrementInterrupter:Z

    .line 69
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->autoPlay:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seamlessStart:I

    .line 43
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->type:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdditionalTrackIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->additionalTrackIds:Ljava/util/Map;

    return-object v0
.end method

.method public getAncestorTitle()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->ancestorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoplaySeconds()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->autoPlaySeconds:I

    return v0
.end method

.method public getBookmarkPosition()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->bookmarkPosition:I

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisode()I
    .locals 1

    .line 339
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->episode:I

    return v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterruptDisplayText()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->interruptDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getInterruptThreshold()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->interruptThreshold:I

    return v0
.end method

.method public getItemIndex()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->itemIndex:I

    return v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->itemIndex:I

    return v0
.end method

.method public getLogicalStart()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->logicalStart:J

    return-wide v0
.end method

.method public getMinutesRemaining()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->minutesRemaining:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayBackVideo()Lo/AZ;
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->proxy:Lo/TableLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "videos"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    .line 127
    iget v5, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->videoId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "summary"

    aput-object v5, v2, v4

    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agj;

    .line 130
    instance-of v2, v0, Lo/AZ;

    if-eqz v2, :cond_1

    .line 131
    check-cast v0, Lo/AZ;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeamlessStart()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seamlessStart:I

    return v0
.end method

.method public getSeason()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->season:I

    return v0
.end method

.method public getSeasonSequenceAbbr()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seasonSequenceAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonSequenceLong()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seasonSequenceLong:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->trackId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->videoId:I

    return v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->autoPlay:Z

    return v0
.end method

.method public isDoNotIncrementInterrupter()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->doNotIncrementInterrupter:Z

    return v0
.end method

.method public isForceInterrupt()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->forceInterrupt:Z

    return v0
.end method

.method public isInMyList()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->inMyList:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 86
    instance-of v2, v1, Lcom/google/gson/JsonNull;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "autoPlaySeconds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "displayText"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "forceInterrupt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "autoPlay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "videoType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "interruptThreshold"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "doNotIncrementInterrupter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "videoId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "inMyList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "additionalTrackIds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "logicalStart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_d
    const-string v3, "season"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_e
    const-string v3, "trackId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_f
    const-string v3, "seamlessStart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x13

    goto :goto_1

    :sswitch_10
    const-string v3, "episode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_11
    const-string v3, "seasonSequenceLong"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_12
    const-string v3, "seasonSequenceAbbr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_13
    const-string v3, "minutesRemaining"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_14
    const-string v3, "interruptDisplayText"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_15
    const-string v3, "bookmarkPosition"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 116
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->autoPlaySeconds:I

    goto/16 :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->autoPlay:Z

    goto/16 :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seamlessStart:I

    goto/16 :goto_0

    .line 113
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->videoId:I

    goto/16 :goto_0

    .line 112
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->doNotIncrementInterrupter:Z

    goto/16 :goto_0

    .line 111
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->inMyList:Z

    goto/16 :goto_0

    .line 104
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    iget-object v2, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->additionalTrackIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 102
    :pswitch_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->interruptDisplayText:Ljava/lang/String;

    goto/16 :goto_0

    .line 101
    :pswitch_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->interruptThreshold:I

    goto/16 :goto_0

    .line 100
    :pswitch_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->forceInterrupt:Z

    goto/16 :goto_0

    .line 99
    :pswitch_a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto/16 :goto_0

    .line 98
    :pswitch_b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->logicalStart:J

    goto/16 :goto_0

    .line 97
    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->minutesRemaining:J

    goto/16 :goto_0

    .line 96
    :pswitch_d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->bookmarkPosition:I

    goto/16 :goto_0

    .line 95
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->episode:I

    goto/16 :goto_0

    .line 94
    :pswitch_f
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seasonSequenceLong:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    :pswitch_10
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seasonSequenceAbbr:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :pswitch_11
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->season:I

    goto/16 :goto_0

    .line 91
    :pswitch_12
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->trackId:I

    goto/16 :goto_0

    .line 90
    :pswitch_13
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/PostPlayActionImpl;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :pswitch_14
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/PostPlayActionImpl;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :pswitch_15
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->displayText:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d10f381 -> :sswitch_15
        -0x69d8b154 -> :sswitch_14
        -0x67b54429 -> :sswitch_13
        -0x643ec5eb -> :sswitch_12
        -0x643993a0 -> :sswitch_11
        -0x5c0e4205 -> :sswitch_10
        -0x4ef9a5f5 -> :sswitch_f
        -0x3f9f2c3a -> :sswitch_e
        -0x3605951d -> :sswitch_d
        -0x23e2aa27 -> :sswitch_c
        -0x2196154c -> :sswitch_b
        -0x1f84ba11 -> :sswitch_a
        0x337a8b -> :sswitch_9
        0x368f3a -> :sswitch_8
        0x1afceaf6 -> :sswitch_7
        0x2df635c9 -> :sswitch_6
        0x32735548 -> :sswitch_5
        0x4f736255 -> :sswitch_4
        0x55bf6d83 -> :sswitch_3
        0x6121dbb8 -> :sswitch_2
        0x662ea10f -> :sswitch_1
        0x665bcb7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAncestorTitle(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->ancestorTitle:Ljava/lang/String;

    return-void
.end method

.method public setBookmarkPosition(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->bookmarkPosition:I

    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->displayText:Ljava/lang/String;

    return-void
.end method

.method public setDoNotIncrementInterrupter(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->doNotIncrementInterrupter:Z

    return-void
.end method

.method public setEpisode(I)V
    .locals 0

    .line 343
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->episode:I

    return-void
.end method

.method public setForceInterrupt(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->forceInterrupt:Z

    return-void
.end method

.method public setInMyList(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->inMyList:Z

    return-void
.end method

.method public setInterruptDisplayText(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->interruptDisplayText:Ljava/lang/String;

    return-void
.end method

.method public setInterruptThreshold(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->interruptThreshold:I

    return-void
.end method

.method public setItemIndex(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->itemIndex:I

    return-void
.end method

.method public setLogicalStart(J)V
    .locals 0

    .line 208
    iput-wide p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->logicalStart:J

    return-void
.end method

.method public setMinutesRemaining(J)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->minutesRemaining:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setSeamlessStart(I)V
    .locals 0

    .line 352
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seamlessStart:I

    return-void
.end method

.method public setSeason(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->season:I

    return-void
.end method

.method public setSeasonSequenceAbbr(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seasonSequenceAbbr:Ljava/lang/String;

    return-void
.end method

.method public setSeasonSequenceLong(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->seasonSequenceLong:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->trackId:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->type:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->videoId:I

    return-void
.end method

.method public setVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayActionImpl;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method
