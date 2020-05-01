.class public Lo/pX;
.super Lo/pT;
.source ""


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lo/pT;-><init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewableId"

    .line 45
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method protected g()Ljava/lang/String;
    .locals 8

    .line 25
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 29
    :try_start_0
    iget-object v3, p0, Lo/pX;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 30
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {p0, v7}, Lo/pX;->a(Lorg/json/JSONObject;)V

    .line 32
    invoke-direct {p0, v7, v6}, Lo/pX;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Lo/pX;->c(Lorg/json/JSONObject;)V

    const-string v3, "params"

    .line 37
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_manifest_param"

    const-string v4, "error creating manifest params"

    .line 39
    invoke-static {v3, v0, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
