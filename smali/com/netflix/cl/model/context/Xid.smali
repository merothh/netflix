.class public Lcom/netflix/cl/model/context/Xid;
.super Lcom/netflix/cl/model/context/CLContext;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Tracked;


# instance fields
.field private playerId:Ljava/lang/Long;

.field private sharedUuid:Ljava/lang/String;

.field private trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

.field private xid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/netflix/cl/model/context/CLContext;-><init>()V

    const-string v0, "Xid"

    .line 23
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/context/Xid;->addContextType(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/netflix/cl/model/context/Xid;->xid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/netflix/cl/model/context/Xid;->sharedUuid:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/netflix/cl/model/context/Xid;->playerId:Ljava/lang/Long;

    .line 27
    iput-object p4, p0, Lcom/netflix/cl/model/context/Xid;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 40
    invoke-super {p0}, Lcom/netflix/cl/model/context/CLContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/netflix/cl/model/context/Xid;->xid:Ljava/lang/String;

    const-string v2, "xid"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    iget-object v1, p0, Lcom/netflix/cl/model/context/Xid;->sharedUuid:Ljava/lang/String;

    const-string v2, "sharedUuid"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    iget-object v1, p0, Lcom/netflix/cl/model/context/Xid;->playerId:Ljava/lang/Long;

    const-string v2, "playerId"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object v1, p0, Lcom/netflix/cl/model/context/Xid;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    const-string v2, "trackingInfo"

    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/cl/model/context/Xid;->addJsonSerializerToJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/cl/model/context/Xid;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method
