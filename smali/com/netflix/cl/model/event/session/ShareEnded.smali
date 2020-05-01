.class public Lcom/netflix/cl/model/event/session/ShareEnded;
.super Lcom/netflix/cl/model/event/session/SessionEnded;
.source ""


# instance fields
.field private shares:[Lcom/netflix/cl/model/ShareInfo;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/event/session/action/Share;[Lcom/netflix/cl/model/ShareInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/netflix/cl/model/event/session/SessionEnded;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    const-string p1, "ShareEnded"

    .line 23
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/session/ShareEnded;->addContextType(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/ShareEnded;->shares:[Lcom/netflix/cl/model/ShareInfo;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/SessionEnded;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/ShareEnded;->shares:[Lcom/netflix/cl/model/ShareInfo;

    const-string v2, "shares"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
