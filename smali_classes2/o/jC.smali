.class public abstract Lo/jC;
.super Lo/zv;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/zv;-><init>()V

    return-void
.end method


# virtual methods
.method protected E_()V
    .locals 3

    .line 27
    iget-object v0, p0, Lo/jC;->j:Lorg/json/JSONObject;

    const-string v1, "ftlstatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->d()Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v2, p0, Lo/jC;->j:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Lo/zv;->c(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lo/jC;->E_()V

    return-void
.end method
