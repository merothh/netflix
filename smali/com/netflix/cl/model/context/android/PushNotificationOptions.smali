.class public abstract Lcom/netflix/cl/model/context/android/PushNotificationOptions;
.super Lcom/netflix/cl/model/context/CLContext;
.source ""


# instance fields
.field private channelOptStatus:Lorg/json/JSONObject;

.field private oldDeviceToken:Ljava/lang/String;

.field private systemOptStatus:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/netflix/cl/model/context/CLContext;-><init>()V

    const-string v0, "android.PushNotificationOptions"

    .line 22
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/context/android/PushNotificationOptions;->addContextType(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/cl/model/context/android/PushNotificationOptions;->systemOptStatus:Ljava/lang/Boolean;

    .line 24
    iput-object p2, p0, Lcom/netflix/cl/model/context/android/PushNotificationOptions;->channelOptStatus:Lorg/json/JSONObject;

    .line 25
    iput-object p3, p0, Lcom/netflix/cl/model/context/android/PushNotificationOptions;->oldDeviceToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 35
    invoke-super {p0}, Lcom/netflix/cl/model/context/CLContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/netflix/cl/model/context/android/PushNotificationOptions;->systemOptStatus:Ljava/lang/Boolean;

    const-string v2, "systemOptStatus"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v1, p0, Lcom/netflix/cl/model/context/android/PushNotificationOptions;->channelOptStatus:Lorg/json/JSONObject;

    const-string v2, "channelOptStatus"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addJsonToJson(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 38
    iget-object v1, p0, Lcom/netflix/cl/model/context/android/PushNotificationOptions;->oldDeviceToken:Ljava/lang/String;

    const-string v2, "oldDeviceToken"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
