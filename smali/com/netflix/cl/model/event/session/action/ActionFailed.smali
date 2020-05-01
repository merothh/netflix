.class public Lcom/netflix/cl/model/event/session/action/ActionFailed;
.super Lcom/netflix/cl/model/event/session/SessionEnded;
.source ""


# instance fields
.field private error:Lcom/netflix/cl/model/Error;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/cl/model/event/session/SessionEnded;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    const-string p1, "ActionFailed"

    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/session/action/ActionFailed;->addContextType(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/action/ActionFailed;->error:Lcom/netflix/cl/model/Error;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/SessionEnded;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/ActionFailed;->error:Lcom/netflix/cl/model/Error;

    const-string v2, "error"

    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/cl/model/event/session/action/ActionFailed;->addJsonSerializerToJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;

    return-object v0
.end method
