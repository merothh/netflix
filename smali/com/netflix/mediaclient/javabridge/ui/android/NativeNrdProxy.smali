.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;
.super Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;
.source "NativeNrdProxy.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private media:Lcom/netflix/mediaclient/javabridge/NrdpObject;

.field private network:Lcom/netflix/mediaclient/javabridge/NrdpObject;

.field private nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

.field private objMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/javabridge/NrdpObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 8

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 30
    const-string/jumbo v0, "native_nrd_proxy"

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    .line 59
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "Add all NRD objects"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->media:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 63
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 64
    new-instance v2, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 65
    new-instance v3, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;

    invoke-direct {v3, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 66
    new-instance v4, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    invoke-direct {v4, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 67
    new-instance v5, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;

    invoke-direct {v5, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    iput-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->network:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    .line 68
    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v6}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->media:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v6}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->media:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->network:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->network:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 97
    const-string/jumbo p1, "nrdp"

    .line 104
    :cond_0
    :goto_0
    return-object p1

    .line 100
    :cond_1
    const-string/jumbo v0, "nrdp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nrdp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private handleName(Lorg/json/JSONObject;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 184
    const-string/jumbo v1, "native_nrd_proxy"

    const-string/jumbo v2, "MUNRDP::handleName: start"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    if-nez v1, :cond_1

    .line 188
    const-string/jumbo v1, "native_nrd_proxy"

    const-string/jumbo v2, "handleName:: name not found"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    const-string/jumbo v2, "IMediaControl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "handleName:: IMC event, pass to Media proxy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->media:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 195
    :cond_2
    const-string/jumbo v2, "INetwork"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "handleName:: networking event, pass to !!! proxy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->network:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 198
    :cond_3
    const-string/jumbo v2, "background"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "handleName:: background event, pass to Media proxy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->media:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 201
    :cond_4
    const-string/jumbo v2, "ObjectSyncComplete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "handleName:: ObjectSyncComplete event, pass to Nrdp proxy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 206
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const-string/jumbo v2, "native_nrd_proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pass to UI. Handler not found for name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleObject(Lorg/json/JSONObject;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 222
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v2, "MUNRDP::handleObject: start"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v0, "object"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    if-nez v2, :cond_0

    .line 226
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v2, "handleObject:: object not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 242
    :goto_0
    return v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/NrdpObject;

    .line 231
    if-eqz v0, :cond_2

    .line 232
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string/jumbo v1, "native_nrd_proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handler found for object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    const-string/jumbo v0, "native_nrd_proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pass to UI. Handler not found for object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    .line 242
    goto :goto_0
.end method


# virtual methods
.method public findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string/jumbo v0, "native_nrd_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "findObjectCache::  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/NrdpObject;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string/jumbo v0, "native_nrd_proxy"

    return-object v0
.end method

.method public invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
    .locals 2

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Command is nul, noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "NrdLIb not initialized, initTimeout most likely."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string/jumbo v0, "native_nrd_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invokeMethod(SSS):: object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "NrdLIb not initialized, initTimeout most likely."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processUpdate(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "native_nrd_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processUpdate:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->handleName(Lorg/json/JSONObject;)I

    move-result v1

    .line 154
    if-ne v3, v1, :cond_2

    .line 155
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "MUNRDP::processUpdate: update consumed by name handler"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    const-string/jumbo v2, "object"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 159
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "Object property not found. Push update!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string/jumbo v1, "native_nrd_proxy"

    const-string/jumbo v2, "Invalid JSON string received from NRDlib"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    :cond_3
    if-nez v1, :cond_1

    .line 163
    :try_start_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->handleObject(Lorg/json/JSONObject;)I

    move-result v0

    .line 164
    if-ne v3, v0, :cond_1

    .line 165
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "MUNRDP::processUpdate: update consumed by object handler"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v0, "native_nrd_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty:: object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "NrdLIb not initialized, initTimeout most likely."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
