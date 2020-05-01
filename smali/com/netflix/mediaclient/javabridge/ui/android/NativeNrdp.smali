.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeNrdp.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Nrdp;


# static fields
.field public static final METHOD_getConfigList:Ljava/lang/String; = "getConfigList"

.field public static final METHOD_setConfigData:Ljava/lang/String; = "setConfigData"

.field private static final TAG:Ljava/lang/String; = "nf_nedp"


# instance fields
.field private ready:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->ready:Z

    .line 52
    return-void
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 134
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "config"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    const-string/jumbo v3, "data"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 142
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    const-string/jumbo v4, "nf_nedp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NativeNrdp received event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    const-string/jumbo v4, "background"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    invoke-virtual {p0, v1, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->handleNccpEvent(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 150
    :cond_3
    const-string/jumbo v4, "config"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    const-string/jumbo v2, "type"

    const-string/jumbo v4, "config"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v2, "list"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 158
    :cond_4
    const-string/jumbo v4, "nrdconf"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    const-string/jumbo v4, "commandReceived"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string/jumbo v2, "type"

    const-string/jumbo v4, "command"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string/jumbo v2, "parameters"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 171
    :cond_5
    const-string/jumbo v3, "ObjectSyncComplete"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->ready:Z

    .line 173
    const-string/jumbo v0, "init"

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/InitEvent;

    invoke-direct {v1}, Lcom/netflix/mediaclient/event/nrdp/InitEvent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    move-result v0

    goto/16 :goto_0

    .line 176
    :cond_6
    const-string/jumbo v3, "EventSourceError"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "fatalerror"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 182
    :cond_7
    const-string/jumbo v3, "Method"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "invalidargument"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string/jumbo v2, "object"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v2, "method"

    const-string/jumbo v3, "method"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v2, "argument"

    const-string/jumbo v3, "returnValue"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 192
    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string/jumbo v2, "nf_nedp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nobody to handle by name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "properties"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "nf_nedp"

    const-string/jumbo v1, "handlePropertyUpdate:: properties does not exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public debug()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "nf_nedp"

    const-string/jumbo v1, "exit:: noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public getConfigList()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "getConfigList"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiagnosisTool()Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMdxController()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMedia()Lcom/netflix/mediaclient/javabridge/ui/IMedia;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "nrdp"

    return-object v0
.end method

.method public getRegistration()Lcom/netflix/mediaclient/javabridge/ui/Registration;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStorage()Lcom/netflix/mediaclient/javabridge/ui/Storage;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->ready:Z

    return v0
.end method

.method public now()J
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    .line 92
    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string/jumbo v1, "nf_nedp"

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

    .line 97
    :cond_0
    const-string/jumbo v1, "PropertyUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string/jumbo v0, "nf_nedp"

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

    .line 101
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->handlePropertyUpdate(Lorg/json/JSONObject;)I

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 103
    :cond_2
    const-string/jumbo v0, "nf_nedp"

    const-string/jumbo v1, "processUpdate: handle event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v1, "nf_nedp"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 239
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 240
    const-string/jumbo v1, "name"

    const-string/jumbo v2, "utf8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "setConfigData"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string/jumbo v1, "nf_nedp"

    const-string/jumbo v2, "Failed to setConfigData"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
