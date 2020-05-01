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

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 80
    return-void
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 182
    const-string/jumbo v0, "data"

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "name"

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    if-eqz v0, :cond_1

    .line 186
    const-string/jumbo v2, "nf_object"

    const-string/jumbo v3, "handleEvent data !null"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string/jumbo v2, "appIDChanged"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleResetAppId(Lorg/json/JSONObject;)I

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 191
    :cond_0
    const-string/jumbo v2, "sessionIDChanged"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleResetSessionId(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 196
    :cond_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Nobody to handle!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    const-string/jumbo v0, "properties"

    invoke-virtual {p0, p1, v0, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handlePropertyUpdate:: properties does not exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 150
    :cond_0
    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const-string/jumbo v1, "appid"

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    if-eqz v1, :cond_2

    .line 153
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
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

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    .line 157
    iput-object v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    .line 161
    :cond_2
    const-string/jumbo v1, "xid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    const-string/jumbo v1, "xid"

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mXid:Ljava/lang/String;

    .line 165
    :cond_3
    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    const-string/jumbo v1, "sessionid"

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 170
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleResetAppId(Lorg/json/JSONObject;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 205
    const-string/jumbo v2, "sessionid"

    invoke-virtual {p0, p1, v2, v7}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string/jumbo v3, "appid"

    invoke-virtual {p0, p1, v3, v7}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
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

    .line 210
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

    .line 212
    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    .line 213
    iput-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
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

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    .line 219
    iput-object v7, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    if-eqz v0, :cond_3

    .line 223
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handleResetAppId:: app id is changed and callback exist, report"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    invoke-interface {v0, v3, v2}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;->changed(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_3
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handleResetAppId:: app id is changed but callback does NOT exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleResetSessionId(Lorg/json/JSONObject;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 234
    const-string/jumbo v1, "sessionid"

    invoke-virtual {p0, p1, v1, v5}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
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

    .line 239
    :cond_0
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    if-eqz v0, :cond_1

    .line 241
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v2, "Log.handleResetSessionId:: session id is changed and callback exist, report"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;->sessionCreated(Ljava/lang/String;)V

    .line 243
    iput-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    .line 247
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handleResetSessionId:: session id is changed but callback does NOT exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "flush"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "log"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "nrdp.log"

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method public log(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V
    .locals 4

    .prologue
    .line 274
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

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized processUpdate(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
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

    .line 122
    :cond_0
    const-string/jumbo v1, "PropertyUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
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

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handlePropertyUpdate(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 136
    :goto_0
    monitor-exit p0

    return v0

    .line 128
    :cond_2
    :try_start_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "processUpdate: handle event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :try_start_2
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public resetAppID()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "resetAppID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public resetSessionID(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V
    .locals 4

    .prologue
    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "resetSessionID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public setAppIdChangedListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    .line 339
    return-void
.end method

.method public setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    if-eqz p1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    .line 346
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    goto :goto_0

    .line 351
    :cond_1
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    goto :goto_0
.end method
