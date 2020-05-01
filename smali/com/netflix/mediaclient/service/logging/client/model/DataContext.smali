.class public Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
.super Ljava/lang/Object;
.source "DataContext.java"


# static fields
.field public static final RANK:Ljava/lang/String; = "rank"

.field public static final REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final ROW:Ljava/lang/String; = "row"

.field private static final TAG:Ljava/lang/String; = "DataContext"

.field public static final TRACK_ID:Ljava/lang/String; = "trackId"

.field public static final VIDEO_ID:Ljava/lang/String; = "videoId"

.field public static final XID:Ljava/lang/String; = "xid"


# instance fields
.field private rank:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private row:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "row"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private trackId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private videoId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private xid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xid"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    .prologue
    .line 206
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 207
    if-nez p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v0, "DataContext"

    const-string/jumbo v1, "Asset is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getVideoPos()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getListPos()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRow(Ljava/lang/Integer;)V

    .line 223
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRequestId(Ljava/lang/String;)V

    .line 224
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getTrackId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setTrackId(Ljava/lang/Integer;)V

    .line 226
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRank(Ljava/lang/Integer;)V

    .line 227
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/NumberUtils;->toIntegerSafely(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setVideoId(Ljava/lang/Integer;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 215
    if-nez p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "DataContext"

    const-string/jumbo v1, "playContext is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v0

    goto :goto_0
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 268
    if-nez p0, :cond_0

    .line 288
    :goto_0
    return-object v1

    .line 272
    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>()V

    .line 273
    const-string/jumbo v0, "rank"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 274
    if-gez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    .line 276
    const-string/jumbo v0, "videoId"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 277
    if-gez v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    .line 279
    const-string/jumbo v0, "row"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 280
    if-gez v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    .line 282
    const-string/jumbo v0, "trackId"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 283
    if-gez v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    .line 285
    const-string/jumbo v0, "requestId"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    .line 286
    const-string/jumbo v0, "xid"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    move-object v1, v2

    .line 288
    goto :goto_0

    .line 274
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 277
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 280
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 283
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public getRank()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRow()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    return-object v0
.end method

.method public setRank(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    .line 199
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setRow(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    .line 181
    return-void
.end method

.method public setTrackId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    .line 126
    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    .line 145
    return-void
.end method

.method public setXid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 246
    const-string/jumbo v1, "requestId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 249
    const-string/jumbo v1, "trackId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 252
    const-string/jumbo v1, "videoId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 255
    const-string/jumbo v1, "xid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 258
    const-string/jumbo v1, "row"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 261
    const-string/jumbo v1, "rank"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :cond_5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DataContext [requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", xid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
