.class public final Lo/pE;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private d:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private e:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 42
    iput-object p2, p0, Lo/pE;->d:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Play context can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d()Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    .line 51
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :try_start_1
    iget-object v0, p0, Lo/pE;->d:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Lorg/json/JSONObject;

    .line 58
    iget-object v0, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-eqz v0, :cond_4

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "request_id"

    .line 60
    iget-object v3, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "row"

    .line 61
    iget-object v3, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getListPos()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "rank"

    .line 62
    iget-object v3, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    iget-object v2, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lolomoId"

    .line 64
    iget-object v3, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_0
    iget-object v2, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getListId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "listId"

    .line 67
    iget-object v3, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getListId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_1
    iget-object v2, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "imageKey"

    .line 70
    iget-object v3, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_2
    iget-object v2, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "uiPlayContextTag"

    .line 73
    iget-object v3, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v2, "uiplaycontext"

    .line 75
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isUIAutoPlay"

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/pE;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->e()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    const-string v2, "nf_invoke"

    const-string v3, "Failed to create JSON object"

    .line 89
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v1
.end method
