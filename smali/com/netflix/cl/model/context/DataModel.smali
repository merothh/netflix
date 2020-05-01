.class public abstract Lcom/netflix/cl/model/context/DataModel;
.super Lcom/netflix/cl/model/context/CLContext;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Tracked;


# instance fields
.field private trackingInfo:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/netflix/cl/model/context/CLContext;-><init>()V

    const-string v0, "DataModel"

    .line 20
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/context/DataModel;->addContextType(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/netflix/cl/model/context/DataModel;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/netflix/cl/model/context/CLContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/netflix/cl/model/context/DataModel;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    const-string v2, "trackingInfo"

    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/cl/model/context/DataModel;->addJsonSerializerToJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/cl/model/context/DataModel;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method
