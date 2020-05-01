.class public Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeNetworkDiagnosis.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;


# static fields
.field private static final PROPERTY_connectiontimeout:Ljava/lang/String; = "connectiontimeout"

.field private static final PROPERTY_datatimeout:Ljava/lang/String; = "datatimeout"

.field private static final PROPERTY_url:Ljava/lang/String; = "url"

.field private static final connectiontimeout:I = 0x1770

.field private static final datatimeout:I = 0xfa0


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 26
    return-void
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const-string/jumbo v0, "data"

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string/jumbo v2, "dnsresult"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "getresult"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    const-string/jumbo v1, "INetwork"

    new-instance v2, Lcom/netflix/mediaclient/event/network/NetworkEvent;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/event/network/NetworkEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Nobody to handle networkEvent!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v1, "connectiontimeout"

    const/16 v2, 0x1770

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v1, "datatimeout"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    const-string/jumbo v2, "network"

    const-string/jumbo v3, "get"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "http get failed with "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "network"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "nrdp.network"

    return-object v0
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 5

    .prologue
    .line 44
    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string/jumbo v2, "nf_object"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processUpdate: handle type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    const-string/jumbo v2, "Event"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "INetwork"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNetworkDiagnosis;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
