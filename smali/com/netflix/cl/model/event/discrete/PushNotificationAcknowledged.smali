.class public Lcom/netflix/cl/model/event/discrete/PushNotificationAcknowledged;
.super Lcom/netflix/cl/model/event/discrete/PushNotificationResolved;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/netflix/cl/model/event/discrete/PushNotificationResolved;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    const-string p1, "PushNotificationAcknowledged"

    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/discrete/PushNotificationAcknowledged;->addContextType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/netflix/cl/model/event/discrete/PushNotificationResolved;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
