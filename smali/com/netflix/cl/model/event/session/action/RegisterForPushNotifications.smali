.class public Lcom/netflix/cl/model/event/session/action/RegisterForPushNotifications;
.super Lcom/netflix/cl/model/event/session/action/Action;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Exclusive;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/action/Action;-><init>()V

    const-string v0, "RegisterForPushNotifications"

    .line 19
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/RegisterForPushNotifications;->addContextType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/Action;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
