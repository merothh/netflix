.class public abstract Lcom/netflix/cl/model/event/discrete/DiscreteEventTracked;
.super Lcom/netflix/cl/model/event/discrete/DiscreteEvent;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Tracked;


# instance fields
.field private trackingInfo:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method protected constructor <init>(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netflix/cl/model/event/discrete/DiscreteEventTracked;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/DiscreteEventTracked;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    const-string v2, "trackingInfo"

    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/cl/model/event/discrete/DiscreteEventTracked;->addJsonSerializerToJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netflix/cl/model/event/discrete/DiscreteEventTracked;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method
