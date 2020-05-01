.class public Lcom/netflix/cl/model/event/session/action/android/MinusOneRequestEnded;
.super Lcom/netflix/cl/model/event/session/SessionEnded;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Tracked;


# instance fields
.field private cardToPresent:Lorg/json/JSONObject;

.field private trackingInfo:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;Lcom/netflix/cl/model/TrackingInfo;Lorg/json/JSONObject;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/netflix/cl/model/event/session/SessionEnded;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    const-string p1, "android.MinusOneRequestEnded"

    .line 24
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequestEnded;->addContextType(Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequestEnded;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    .line 26
    iput-object p3, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequestEnded;->cardToPresent:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 36
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/SessionEnded;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "trackingInfo"

    .line 38
    iget-object v2, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequestEnded;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequestEnded;->addJsonSerializerToJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;

    const-string v1, "cardToPresent"

    .line 39
    iget-object v2, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequestEnded;->cardToPresent:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequestEnded;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method
