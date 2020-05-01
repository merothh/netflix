.class public Lo/zg;
.super Lo/jC;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 17
    :try_start_0
    iget-object v0, p0, Lo/zg;->j:Lorg/json/JSONObject;

    const-string v1, "comp"

    const-string v2, "unified"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v0, p0, Lo/zg;->j:Lorg/json/JSONObject;

    const-string v1, "sessiontype"

    iget-object p1, p1, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "nf_ftl"

    const-string v0, "unable to create ftlsession logblob"

    .line 20
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "ftlsession"

    return-object v0
.end method
