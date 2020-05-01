.class public Lcom/netflix/model/leafs/SummaryImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/Ay;
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/VideoInfo$Summary;


# static fields
.field private static QUICKDRAW_DP_CAN_DOWNLOAD_BIT:J = -0x80000000L

.field private static QUICKDRAW_DP_IN_QUEUE_BIT:J = 0x40000000L

.field private static QUICKDRAW_DP_IS_INTERACTIVE_BIT:J = 0x20000000L

.field private static final TAG:Ljava/lang/String; = "Summary"


# instance fields
.field public availableForDownload:Z

.field public boxartId:Ljava/lang/String;

.field public boxartUrl:Ljava/lang/String;

.field public certificationBoardId:Ljava/lang/String;

.field public certificationLevel:Ljava/lang/String;

.field public certificationValue:Ljava/lang/String;

.field public enumType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public id:Ljava/lang/String;

.field public inQueue:Z

.field public isInteractiveContent:Z

.field public isOriginal:Z

.field public isPreRelease:Z

.field public runtime:I

.field public seasonNumLabel:Ljava/lang/String;

.field public synopsis:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    const-string v0, "-1"

    .line 24
    iput-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBoxartId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->boxartId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxartUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->boxartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->boxartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificationBoardId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationBoardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificationLevel()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificationValue()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEnumType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntime()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->runtime:I

    return v0
.end method

.method public getSeasonNumLabel()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->seasonNumLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->synopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->year:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailableForDownload()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->availableForDownload:Z

    return v0
.end method

.method public isInQueue()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->inQueue:Z

    return v0
.end method

.method public isInteractiveContent()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->isInteractiveContent:Z

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->isOriginal:Z

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/netflix/model/leafs/SummaryImpl;->isPreRelease:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 12

    .line 133
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 139
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "synopsis"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_1
    const-string v5, "boxartUrl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "isOriginal"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_3
    const-string v5, "isPreRelease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_4
    const-string v5, "title"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_6
    const-string v5, "ycs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x9

    goto :goto_1

    :sswitch_7
    const-string v5, "air"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_8
    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_9
    const-string v5, "boxartId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 173
    :pswitch_0
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0007"

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 177
    array-length v2, v1

    const-string v3, ""

    if-lt v2, v11, :cond_2

    aget-object v2, v1, v10

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    iput-object v2, p0, Lcom/netflix/model/leafs/SummaryImpl;->year:Ljava/lang/String;

    .line 178
    array-length v2, v1

    if-lt v2, v9, :cond_3

    aget-object v2, v1, v11

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    iput-object v2, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationValue:Ljava/lang/String;

    .line 179
    array-length v2, v1

    if-lt v2, v8, :cond_4

    aget-object v2, v1, v9

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    iput-object v2, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationLevel:Ljava/lang/String;

    .line 180
    array-length v2, v1

    if-lt v2, v7, :cond_5

    aget-object v2, v1, v8

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    iput-object v2, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationBoardId:Ljava/lang/String;

    .line 181
    array-length v2, v1

    if-ne v2, v6, :cond_6

    aget-object v3, v1, v7

    :cond_6
    iput-object v3, p0, Lcom/netflix/model/leafs/SummaryImpl;->seasonNumLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->synopsis:Ljava/lang/String;

    goto/16 :goto_0

    .line 158
    :pswitch_2
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v1

    .line 159
    sget-wide v3, Lcom/netflix/model/leafs/SummaryImpl;->QUICKDRAW_DP_CAN_DOWNLOAD_BIT:J

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    iput-boolean v3, p0, Lcom/netflix/model/leafs/SummaryImpl;->availableForDownload:Z

    .line 160
    sget-wide v3, Lcom/netflix/model/leafs/SummaryImpl;->QUICKDRAW_DP_IN_QUEUE_BIT:J

    and-long/2addr v3, v1

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, p0, Lcom/netflix/model/leafs/SummaryImpl;->inQueue:Z

    .line 161
    sget-wide v3, Lcom/netflix/model/leafs/SummaryImpl;->QUICKDRAW_DP_IS_INTERACTIVE_BIT:J

    and-long/2addr v3, v1

    cmp-long v7, v3, v5

    if-lez v7, :cond_9

    const/4 v10, 0x1

    :cond_9
    iput-boolean v10, p0, Lcom/netflix/model/leafs/SummaryImpl;->isInteractiveContent:Z

    .line 162
    sget-wide v3, Lcom/netflix/model/leafs/SummaryImpl;->QUICKDRAW_DP_CAN_DOWNLOAD_BIT:J

    sget-wide v5, Lcom/netflix/model/leafs/SummaryImpl;->QUICKDRAW_DP_IN_QUEUE_BIT:J

    or-long/2addr v3, v5

    sget-wide v5, Lcom/netflix/model/leafs/SummaryImpl;->QUICKDRAW_DP_IS_INTERACTIVE_BIT:J

    or-long/2addr v3, v5

    not-long v3, v3

    and-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lcom/netflix/model/leafs/SummaryImpl;->runtime:I

    goto/16 :goto_0

    .line 153
    :pswitch_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->isPreRelease:Z

    goto/16 :goto_0

    .line 152
    :pswitch_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->isOriginal:Z

    goto/16 :goto_0

    .line 151
    :pswitch_5
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    :pswitch_6
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 149
    :pswitch_7
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->boxartId:Ljava/lang/String;

    goto/16 :goto_0

    .line 148
    :pswitch_8
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->boxartUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    :pswitch_9
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->id:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-2"

    .line 143
    iput-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->id:Ljava/lang/String;

    .line 144
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v3, "SPY-17693 Video.Summary is missing id"

    invoke-interface {v1, v2, v3}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_a
    iget-object p1, p0, Lcom/netflix/model/leafs/SummaryImpl;->type:Ljava/lang/String;

    if-nez p1, :cond_b

    .line 186
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-19129: SummaryImpl.type does not exist in the response"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79a7200d -> :sswitch_9
        0xd1b -> :sswitch_8
        0x1794a -> :sswitch_7
        0x1d2a9 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x6942258 -> :sswitch_4
        0x8165cae -> :sswitch_3
        0x22ea311b -> :sswitch_2
        0x44c34d97 -> :sswitch_1
        0x6cff1594 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Summary [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->year:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", certificationValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", certificationLevel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", certificationBoardId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->certificationBoardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seasonNumLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->seasonNumLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", synopsis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->synopsis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->inQueue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", availableForDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->availableForDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", runtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/SummaryImpl;->runtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
