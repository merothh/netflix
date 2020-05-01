.class public Lcom/netflix/cl/model/event/session/cs/CallEnded;
.super Lcom/netflix/cl/model/event/session/SessionEnded;
.source ""


# instance fields
.field private qualityReport:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/event/session/action/cs/Call;Lorg/json/JSONObject;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/cl/model/event/session/SessionEnded;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    const-string p1, "cs.CallEnded"

    .line 22
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/session/cs/CallEnded;->addContextType(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/cs/CallEnded;->qualityReport:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/SessionEnded;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/cs/CallEnded;->qualityReport:Lorg/json/JSONObject;

    const-string v2, "qualityReport"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addJsonToJson(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    return-object v0
.end method
