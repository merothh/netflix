.class public Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;
.super Lcom/netflix/cl/model/event/session/action/ActionTracked;
.source ""


# instance fields
.field private cardImpression:Lcom/netflix/cl/model/android/MinusOneCardInfo;

.field private trigger:Lcom/netflix/cl/model/android/MinusOneRequestType;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/android/MinusOneCardInfo;Lcom/netflix/cl/model/android/MinusOneRequestType;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0, p3}, Lcom/netflix/cl/model/event/session/action/ActionTracked;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    const-string p3, "android.MinusOneRequest"

    .line 23
    invoke-virtual {p0, p3}, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;->addContextType(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;->cardImpression:Lcom/netflix/cl/model/android/MinusOneCardInfo;

    .line 25
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;->trigger:Lcom/netflix/cl/model/android/MinusOneRequestType;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/ActionTracked;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;->cardImpression:Lcom/netflix/cl/model/android/MinusOneCardInfo;

    const-string v2, "cardImpression"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;->trigger:Lcom/netflix/cl/model/android/MinusOneRequestType;

    const-string v2, "trigger"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
