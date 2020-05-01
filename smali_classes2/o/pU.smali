.class public Lo/pU;
.super Lo/qa;
.source ""


# instance fields
.field private f:[Z

.field private h:Ljava/lang/String;

.field private i:[Z

.field private k:[Lo/re;

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lo/qa;-><init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    const-string p1, "low"

    .line 36
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lo/pU;->l:Z

    .line 37
    iput-object p4, p0, Lo/pU;->m:Ljava/lang/String;

    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 142
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "preferredAudioLocale"

    .line 143
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_0
    invoke-static {p3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "preferredTextLocale"

    .line 146
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "preferAssistiveAudio"

    .line 149
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method private e(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewableId"

    .line 138
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public b([Lo/re;)Lo/pU;
    .locals 0

    .line 109
    iput-object p1, p0, Lo/pU;->k:[Lo/re;

    return-object p0
.end method

.method public b([Z)Lo/pU;
    .locals 0

    .line 117
    iput-object p1, p0, Lo/pU;->f:[Z

    return-object p0
.end method

.method public c([Z)Lo/pU;
    .locals 0

    .line 125
    iput-object p1, p0, Lo/pU;->i:[Z

    return-object p0
.end method

.method protected c(Lorg/json/JSONObject;Z)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lo/pU;->n()Lorg/json/JSONArray;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    .line 74
    invoke-virtual {p0, v0, p2}, Lo/pU;->a(Lorg/json/JSONArray;Z)V

    .line 75
    invoke-virtual {p0, v0}, Lo/pU;->a(Lorg/json/JSONArray;)V

    .line 76
    invoke-virtual {p0, v0}, Lo/pU;->e(Lorg/json/JSONArray;)V

    const-string p2, "profiles"

    .line 77
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {p0}, Lo/pU;->o()Lorg/json/JSONArray;

    move-result-object p2

    const-string v0, "experimentalProfiles"

    .line 81
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object p2, p0, Lo/pU;->h:Ljava/lang/String;

    const-string v0, "pin"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object p2, p0, Lo/pU;->m:Ljava/lang/String;

    const-string v0, "cellularCap"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-boolean p2, p0, Lo/pU;->l:Z

    const-string v0, "isDataSaveOn"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {p0, p1}, Lo/pU;->b(Lorg/json/JSONObject;)V

    .line 89
    invoke-virtual {p0, p1}, Lo/pU;->d(Lorg/json/JSONObject;)V

    .line 91
    invoke-virtual {p0, p1}, Lo/pU;->h(Lorg/json/JSONObject;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lo/pU;
    .locals 0

    .line 133
    iput-object p1, p0, Lo/pU;->h:Ljava/lang/String;

    return-object p0
.end method

.method protected g()Ljava/lang/String;
    .locals 8

    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 50
    :goto_0
    :try_start_0
    iget-object v4, p0, Lo/pU;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 51
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 52
    iget-object v5, p0, Lo/pU;->f:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {p0, v4, v5}, Lo/pU;->c(Lorg/json/JSONObject;Z)V

    .line 53
    iget-object v5, p0, Lo/pU;->a:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-direct {p0, v4, v5}, Lo/pU;->e(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lo/pU;->c:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lo/pU;->g:[Ljava/lang/String;

    aget-object v6, v6, v3

    iget-object v7, p0, Lo/pU;->j:[Ljava/lang/Boolean;

    aget-object v7, v7, v3

    invoke-direct {p0, v4, v5, v6, v7}, Lo/pU;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "isBranching"

    .line 55
    iget-object v6, p0, Lo/pU;->f:[Z

    aget-boolean v6, v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 56
    iget-object v5, p0, Lo/pU;->i:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    const-string v5, "maxSupportedLanguages"

    const/4 v6, 0x1

    .line 57
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    :cond_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0, v1}, Lo/pU;->c(Lorg/json/JSONObject;)V

    const-string v3, "params"

    .line 63
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_manifest_param"

    const-string v4, "error creating manifest params"

    .line 65
    invoke-static {v3, v0, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(Lorg/json/JSONObject;)V
    .locals 8

    .line 95
    iget-object v0, p0, Lo/pU;->k:[Lo/re;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 96
    aget-object v0, v0, v1

    .line 97
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "challenges"

    .line 98
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 100
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 101
    iget-object v2, v0, Lo/re;->e:Ljava/lang/String;

    const-string v4, "challengeBase64"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget v2, v0, Lo/re;->a:I

    const-string v4, "drmSessionId"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    iget-wide v4, v0, Lo/re;->c:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "clientTime"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "usePsshBox"

    .line 104
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
