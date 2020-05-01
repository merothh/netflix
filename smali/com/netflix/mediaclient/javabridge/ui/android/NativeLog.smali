.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeLog.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Log;


# static fields
.field public static final CMD_RESULT_EVENT_resetAppID:Ljava/lang/String; = "appIDChanged"

.field public static final CMD_RESULT_EVENT_resetSessionID:Ljava/lang/String; = "sessionIDChanged"

.field public static final METHOD_flush:Ljava/lang/String; = "flush"

.field public static final METHOD_log:Ljava/lang/String; = "log"

.field public static final METHOD_resetAppID:Ljava/lang/String; = "resetAppID"

.field public static final METHOD_resetSessionID:Ljava/lang/String; = "resetSessionID"

.field public static final PROPERTY_APP_ID:Ljava/lang/String; = "appid"

.field public static final PROPERTY_SESSION_ID:Ljava/lang/String; = "sessionid"

.field public static final PROPERTY_XID:Ljava/lang/String; = "xid"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

.field private mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

.field private mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

.field private mSessionId:Ljava/lang/String;

.field private mXid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    return-void
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "data"

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string/jumbo v2, "nf_object"

    const-string/jumbo v3, "handleEvent data !null"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "appIDChanged"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleResetAppId(Lorg/json/JSONObject;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "sessionIDChanged"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleResetSessionId(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Nobody to handle!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "properties"

    invoke-virtual {p0, p1, v0, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handlePropertyUpdate:: properties does not exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "appid"

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_object"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "App ID listener existed, alerted to first app id received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and it is removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    :cond_2
    const-string/jumbo v1, "xid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "xid"

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mXid:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "sessionid"

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleResetAppId(Lorg/json/JSONObject;)I
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    const-string/jumbo v2, "sessionid"

    invoke-virtual {p0, p1, v2, v7}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "appid"

    invoke-virtual {p0, p1, v3, v7}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "nf_object"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Log.handleResetAppId:: Old app id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", new app id "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_object"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Log.handleResetAppId:: Old session id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", new session id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_object"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "App ID listener existed, alerted to first app id received "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " and it is removed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handleResetAppId:: app id is changed and callback exist, report"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    invoke-interface {v0, v3, v2}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;->changed(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handleResetAppId:: app id is changed but callback does NOT exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleResetSessionId(Lorg/json/JSONObject;)I
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    const-string/jumbo v1, "sessionid"

    invoke-virtual {p0, p1, v1, v5}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_object"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Log.handleResetSessionId:: Old session id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", new session id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_object"

    const-string/jumbo v2, "Log.handleResetSessionId:: session id is changed and callback exist, report"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;->sessionCreated(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handleResetSessionId:: session id is changed but callback does NOT exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "flush"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "log"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.log"

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method public log(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "log"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized processUpdate(Lorg/json/JSONObject;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_object"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processUpdate: handle type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "PropertyUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_object"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processUpdate: handle prop update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handlePropertyUpdate(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "processUpdate: handle event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    return-void
.end method

.method public resetAppID()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "resetAppID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetSessionID(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V
    .locals 4

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "resetSessionID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppIdChangedListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    return-void
.end method

.method public setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    goto :goto_0
.end method
