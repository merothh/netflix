.class Lo/nB;
.super Lo/jC;
.source ""


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/util/List;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;",
            ">;",
            "Ljava/util/Collection<",
            "Lo/nA;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 28
    iput-object p2, p0, Lo/nB;->c:Ljava/lang/String;

    .line 30
    :try_start_0
    iget-object p2, p0, Lo/nB;->j:Lorg/json/JSONObject;

    const-string v0, "url"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object p1, p0, Lo/nB;->j:Lorg/json/JSONObject;

    const-string p2, "ctx"

    invoke-static {p3}, Lo/adN;->b(Lcom/google/gson/JsonObject;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object p1, p0, Lo/nB;->j:Lorg/json/JSONObject;

    const-string p2, "reqopts"

    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-static {p3}, Lo/adN;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object p1, p0, Lo/nB;->j:Lorg/json/JSONObject;

    const-string p2, "data"

    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-static {p3}, Lo/adN;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "nf_probe"

    const-string p2, "unable to create probe logblob"

    .line 35
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/nB;->c:Ljava/lang/String;

    return-object v0
.end method
