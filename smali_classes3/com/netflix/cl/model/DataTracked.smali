.class public Lcom/netflix/cl/model/DataTracked;
.super Lcom/netflix/cl/model/Data;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Tracked;


# instance fields
.field private trackingInfo:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/netflix/cl/model/Data;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netflix/cl/model/DataTracked;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 21
    invoke-super {p0}, Lcom/netflix/cl/model/Data;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/netflix/cl/model/DataTracked;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    const-string v2, "trackingInfo"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addJsonSerializerToJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/netflix/cl/model/DataTracked;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method
