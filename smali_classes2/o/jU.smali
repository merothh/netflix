.class public Lo/jU;
.super Lo/nn;
.source ""


# instance fields
.field private D:Ljava/lang/String;

.field private b:Lo/cz;

.field private final d:Lo/jd$StateListAnimator;

.field private e:Landroid/content/Context;

.field private v:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field private w:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lo/cz;Lo/jd$StateListAnimator;)V
    .locals 4

    .line 57
    invoke-direct {p0}, Lo/nn;-><init>()V

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->k:Lcom/netflix/mediaclient/net/NetworkRequestType;

    iput-object v0, p0, Lo/jU;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 58
    iput-object p3, p0, Lo/jU;->b:Lo/cz;

    .line 59
    iput-object p1, p0, Lo/jU;->e:Landroid/content/Context;

    .line 60
    iput-object p4, p0, Lo/jU;->d:Lo/jd$StateListAnimator;

    .line 63
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 64
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object v0, p2, p4

    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lo/jU;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    sget-object v3, Lcom/netflix/mediaclient/net/NetworkRequestType;->k:Lcom/netflix/mediaclient/net/NetworkRequestType;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/net/NetworkRequestType;->k:Lcom/netflix/mediaclient/net/NetworkRequestType;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iput-object v0, p0, Lo/jU;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    goto :goto_2

    .line 70
    :cond_1
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->k:Lcom/netflix/mediaclient/net/NetworkRequestType;

    iput-object v0, p0, Lo/jU;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 74
    :goto_2
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iput-object p1, p0, Lo/jU;->w:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "nf_pds_sendPdsBundleMsl"

    const-string p2, "error in creating json array"

    .line 78
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private al()V
    .locals 2

    .line 220
    invoke-static {}, Lo/gZ;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->e:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;)V

    :cond_0
    return-void
.end method

.method private d(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9

    const-string v0, "languages"

    const-string v1, "params"

    const-string v2, "xid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 173
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 174
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 177
    iget-object v6, p0, Lo/jU;->D:Ljava/lang/String;

    invoke-static {v6}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 178
    new-instance v6, Lorg/json/JSONArray;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, p0, Lo/jU;->D:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 184
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 185
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 186
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_1

    .line 187
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "nf_pds_sendPdsBundleMsl"

    const-string v2, "error inserting languages"

    .line 193
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object p1
.end method

.method private d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 200
    invoke-static {}, Lo/gZ;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nf_pds_sendPdsBundleMsl"

    const-string v1, "Logging details on failure"

    .line 201
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 204
    instance-of v2, p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    if-eqz v2, :cond_0

    .line 205
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->h()Lcom/netflix/cl/model/Error;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "It should be NetflixStatus. This should NOT happen!"

    .line 207
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    new-instance v0, Lcom/netflix/cl/model/Error;

    const-string v2, "pdsDeliveryFailure"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Error;)V

    .line 211
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/ExtLogger;->logError(Lcom/netflix/cl/model/Error;)V

    .line 214
    :cond_1
    invoke-static {}, Lo/gZ;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->e:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;Lcom/netflix/mediaclient/StatusCode;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 89
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected O()Z
    .locals 1

    .line 84
    invoke-static {}, Lo/hb;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected W()Ljava/lang/String;
    .locals 4

    .line 104
    iget-object v0, p0, Lo/jU;->w:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lo/jU;->d(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lo/jU;->w:Lorg/json/JSONArray;

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "url"

    const-string v2, "bundle"

    .line 108
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "params"

    .line 109
    iget-object v2, p0, Lo/jU;->w:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "nf_pds_sendPdsBundleMsl"

    const-string v3, "unable to build pdsBundle"

    .line 111
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 163
    invoke-direct {p0, p1}, Lo/jU;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 164
    iget-object v0, p0, Lo/jU;->d:Lo/jd$StateListAnimator;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1}, Lo/jd$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_pds_sendPdsBundleMsl"

    const-string v0, "callback null?"

    .line 167
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/jU;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected e(Lorg/json/JSONObject;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Lo/jU;->al()V

    .line 153
    iget-object v0, p0, Lo/jU;->d:Lo/jd$StateListAnimator;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lo/jU;->e:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->k:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    invoke-static {v0, p1, v1}, Lo/iZ;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lo/jU;->d:Lo/jd$StateListAnimator;

    invoke-interface {v0, p1}, Lo/jd$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_pds_sendPdsBundleMsl"

    const-string v0, "callback null?"

    .line 157
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/jU;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-super {p0}, Lo/nn;->q()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    iget-object v1, p0, Lo/jU;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    sget-object v2, Lcom/netflix/mediaclient/net/NetworkRequestType;->k:Lcom/netflix/mediaclient/net/NetworkRequestType;

    if-ne v1, v2, :cond_0

    const-string v1, "events/start"

    goto :goto_0

    :cond_0
    const-string v1, "events/keepAlive"

    .line 138
    :goto_0
    invoke-direct {p0}, Lo/jU;->U()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lo/aei;->e(Ljava/util/Map;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_pds_sendPdsBundleMsl"

    const-string v4, "Failed to get MSL headers"

    .line 140
    invoke-static {v3, v1, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-super {p0}, Lo/nn;->u()Ljava/util/Map;

    move-result-object v0

    const-string v1, "languages"

    .line 120
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lo/jU;->D:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lo/jU;->D:Ljava/lang/String;

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected u_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "[\"pdsEventBundle\"]"

    .line 129
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
