.class public final Lcom/netflix/cl/model/event/discrete/LoggerInitialized;
.super Lcom/netflix/cl/model/event/discrete/DiscreteEvent;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;-><init>()V

    const-string v0, "LoggerInitialized"

    .line 27
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/discrete/LoggerInitialized;->addContextType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "version"

    const-string v2, "2.0.2"

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
