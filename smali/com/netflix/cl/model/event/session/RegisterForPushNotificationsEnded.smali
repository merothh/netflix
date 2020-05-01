.class public Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;
.super Lcom/netflix/cl/model/event/session/SessionEnded;
.source ""


# instance fields
.field private deviceToken:Ljava/lang/String;

.field private enabledNotificationTypes:[Lcom/netflix/cl/model/PushNotificationType;

.field private infoOptStatus:Ljava/lang/Boolean;

.field private pushOptStatus:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/event/session/action/RegisterForPushNotifications;[Lcom/netflix/cl/model/PushNotificationType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/cl/model/event/session/SessionEnded;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    const-string p1, "RegisterForPushNotificationsEnded"

    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->addContextType(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->enabledNotificationTypes:[Lcom/netflix/cl/model/PushNotificationType;

    .line 28
    iput-object p3, p0, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->infoOptStatus:Ljava/lang/Boolean;

    .line 29
    iput-object p4, p0, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->pushOptStatus:Ljava/lang/Boolean;

    .line 30
    iput-object p5, p0, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->deviceToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 42
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/SessionEnded;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->enabledNotificationTypes:[Lcom/netflix/cl/model/PushNotificationType;

    const-string v2, "enabledNotificationTypes"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->infoOptStatus:Ljava/lang/Boolean;

    const-string v2, "infoOptStatus"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->pushOptStatus:Ljava/lang/Boolean;

    const-string v2, "pushOptStatus"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;->deviceToken:Ljava/lang/String;

    const-string v2, "deviceToken"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
