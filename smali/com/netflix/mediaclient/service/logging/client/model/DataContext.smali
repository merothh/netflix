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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DataContext"

    const-string/jumbo v1, "Asset is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

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

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getListPos()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRow(Ljava/lang/Integer;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRequestId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getTrackId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setTrackId(Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRank(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/NumberUtils;->toIntegerSafely(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setVideoId(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DataContext"

    const-string/jumbo v1, "playContext is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v0

    goto :goto_0
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>()V

    const-string/jumbo v0, "rank"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    const-string/jumbo v0, "videoId"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    const-string/jumbo v0, "row"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    const-string/jumbo v0, "trackId"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    const-string/jumbo v0, "requestId"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    const-string/jumbo v0, "xid"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public getRank()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRow()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    return-object v0
.end method

.method public setRank(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setRow(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    return-void
.end method

.method public setTrackId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    return-void
.end method

.method public setXid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "requestId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "trackId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "videoId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "xid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "row"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "rank"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
