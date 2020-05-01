.class public Lcom/netflix/cl/model/event/session/action/cs/Call;
.super Lcom/netflix/cl/model/event/session/action/Action;
.source ""


# instance fields
.field private codec:Ljava/lang/String;

.field private sharedUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/action/Action;-><init>()V

    const-string v0, "cs.Call"

    .line 21
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/cs/Call;->addContextType(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/action/cs/Call;->codec:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/action/cs/Call;->sharedUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/Action;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/cs/Call;->codec:Ljava/lang/String;

    const-string v2, "codec"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/cs/Call;->sharedUuid:Ljava/lang/String;

    const-string v2, "sharedUuid"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
