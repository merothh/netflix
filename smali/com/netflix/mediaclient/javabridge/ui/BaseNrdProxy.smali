.class public abstract Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;
.super Ljava/lang/Object;
.source "BaseNrdProxy.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/NrdProxy;


# static fields
.field protected static final DATA:Ljava/lang/String; = "data"

.field protected static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_BGD:Ljava/lang/String; = "background"

.field public static final NAME_IMC:Ljava/lang/String; = "IMediaControl"

.field public static final NAME_NETWORK:Ljava/lang/String; = "INetwork"

.field public static final NAME_OBJECT_SYNC_COMPLETE:Ljava/lang/String; = "ObjectSyncComplete"

.field protected static final OBJECT:Ljava/lang/String; = "object"

.field protected static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field protected bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

.field protected listener:Lcom/netflix/mediaclient/javabridge/error/CrashListener;

.field protected transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bridge can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    .line 72
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->uiLoaded()V

    .line 131
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NrdProxy::destroy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->disconnect()V

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->close()V

    .line 151
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    .line 114
    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->uiUnloaded()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SPY-10406: Exception form native, ignore..."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NrdProxy::disconnect: transport is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 230
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 214
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 182
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NrdProxy::init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-static {p1, v0, p0}, Lcom/netflix/mediaclient/javabridge/transport/TransportFactory;->createTransport(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/Bridge;Lcom/netflix/mediaclient/javabridge/NrdProxy;)Lcom/netflix/mediaclient/javabridge/transport/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->connect()V

    .line 140
    return-void
.end method

.method public invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
    .locals 2

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Command is nul, noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/invoke/Invoke;->execute(Lcom/netflix/mediaclient/javabridge/transport/Transport;)V

    goto :goto_0
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public declared-synchronized postCrashReport(Lcom/netflix/mediaclient/javabridge/error/CrashReport;)V
    .locals 2

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->listener:Lcom/netflix/mediaclient/javabridge/error/CrashListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->listener:Lcom/netflix/mediaclient/javabridge/error/CrashListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/error/CrashListener;->onCrash(Lcom/netflix/mediaclient/javabridge/error/CrashReport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Listener or report are null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCrashListener()V
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->listener:Lcom/netflix/mediaclient/javabridge/error/CrashListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashListener(Lcom/netflix/mediaclient/javabridge/error/CrashListener;)V
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->listener:Lcom/netflix/mediaclient/javabridge/error/CrashListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
