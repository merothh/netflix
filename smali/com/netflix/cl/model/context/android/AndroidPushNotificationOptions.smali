.class public Lcom/netflix/cl/model/context/android/AndroidPushNotificationOptions;
.super Lcom/netflix/cl/model/context/android/PushNotificationOptions;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/cl/model/context/android/PushNotificationOptions;-><init>(Ljava/lang/Boolean;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "android.AndroidPushNotificationOptions"

    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/context/android/AndroidPushNotificationOptions;->addContextType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/netflix/cl/model/context/android/PushNotificationOptions;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
