.class public Lo/qq;
.super Lo/qk;
.source ""

# interfaces
.implements Lo/qv;


# instance fields
.field private final v:[Ljava/lang/Long;

.field private final w:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;Lo/pS;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;[Ljava/lang/Long;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lo/qk;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;Lo/pS;)V

    .line 34
    iput-object p5, p0, Lo/qq;->w:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;

    .line 35
    iput-object p6, p0, Lo/qq;->v:[Ljava/lang/Long;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 7

    const-string v0, "nf_nq_manifest"

    .line 123
    sget-object v1, Lo/LegacyErrorStrings;->N:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-nez p1, :cond_0

    return-object v1

    .line 128
    :cond_0
    iget-object v2, p0, Lo/qq;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->j:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    .line 133
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 134
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 137
    iget-object v6, p0, Lo/qq;->B:Landroid/content/Context;

    invoke-static {v6, v5, v2}, Lo/iZ;->b(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p1, "manifest for %s has errors, status: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 139
    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v2, "parsing manifest error"

    .line 144
    invoke-static {v0, v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object v1
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 110
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 111
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "movieId"

    .line 112
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "nf_nq_manifest"

    const-string v1, "error building manifest"

    .line 116
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method


# virtual methods
.method public J_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public K_()V
    .locals 2

    .line 150
    sget-object v0, Lo/LegacyErrorStrings;->ai:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v1, 0x0

    invoke-super {p0, v1, v0}, Lo/qk;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public L_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R()[Ljava/lang/Long;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/qq;->v:[Ljava/lang/Long;

    return-object v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected W()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lo/qq;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_nq_manifest"

    const-string v2, "nqBody: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    iget-object v0, p0, Lo/qq;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0, p1}, Lo/qq;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    iget-object v1, p0, Lo/qq;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lo/qq;->w:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;

    iget-object v1, p0, Lo/qq;->v:[Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;->d([Ljava/lang/Long;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lo/qq;->d:Lo/pS;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lo/qq;->d:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/qq;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected e(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "result"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/qq;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Lo/qq;->a(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lo/qq;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 93
    :cond_0
    invoke-virtual {p0, p1, v0}, Lo/qq;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public q()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "nf_nq_manifest"

    const/4 v1, 0x0

    .line 42
    :try_start_0
    invoke-super {p0}, Lo/qk;->q()Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "manifest"

    .line 43
    invoke-static {v2, v3}, Lo/aei;->e(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    const/4 v2, 0x0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Failed to get MSL headers"

    .line 45
    invoke-static {v0, v3, v5, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "headers: %s"

    .line 47
    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2
.end method
