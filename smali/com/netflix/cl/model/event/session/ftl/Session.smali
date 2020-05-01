.class public abstract Lcom/netflix/cl/model/event/session/ftl/Session;
.super Lcom/netflix/cl/model/event/session/Session;
.source ""


# instance fields
.field private cell:Ljava/lang/Long;

.field private targets:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;[Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/Session;-><init>()V

    const-string v0, "ftl.Session"

    .line 21
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/ftl/Session;->addContextType(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/ftl/Session;->cell:Ljava/lang/Long;

    .line 23
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/ftl/Session;->targets:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/Session;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/ftl/Session;->cell:Ljava/lang/Long;

    const-string v2, "cell"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/ftl/Session;->targets:[Ljava/lang/String;

    const-string v2, "targets"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
