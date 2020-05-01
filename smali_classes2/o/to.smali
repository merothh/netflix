.class Lo/to;
.super Lo/jC;
.source ""


# instance fields
.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;ZLjava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 30
    iput-object p1, p0, Lo/to;->e:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lo/to;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 32
    iput-boolean p3, p0, Lo/to;->d:Z

    .line 33
    invoke-direct {p0, p4}, Lo/to;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 4

    .line 47
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 48
    instance-of v0, p1, Lcom/google/gson/JsonObject;

    const-string v1, "nf_playreport"

    if-nez v0, :cond_0

    const-string p1, "unable to construct logblob - unable to create json tree"

    .line 49
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_0
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    :try_start_0
    iget-object v2, p0, Lo/to;->j:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {v0}, Lo/adN;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "unable to construct logblob"

    .line 56
    invoke-static {v1, v0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lo/to;->G_()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/to;->d:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/to;->e:Ljava/lang/String;

    return-object v0
.end method
