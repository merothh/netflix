.class public Lcom/netflix/cl/model/event/discrete/PushNotificationResolved;
.super Lcom/netflix/cl/model/event/discrete/DiscreteEventTracked;
.source ""


# instance fields
.field private resolvedTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Lcom/netflix/cl/model/event/discrete/DiscreteEventTracked;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    const-string p2, "PushNotificationResolved"

    .line 20
    invoke-virtual {p0, p2}, Lcom/netflix/cl/model/event/discrete/PushNotificationResolved;->addContextType(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/netflix/cl/model/event/discrete/PushNotificationResolved;->resolvedTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/netflix/cl/model/event/discrete/DiscreteEventTracked;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/PushNotificationResolved;->resolvedTime:Ljava/lang/Long;

    const-string v2, "resolvedTime"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
