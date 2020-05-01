.class public abstract Lo/bZ;
.super Lo/zt;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/zt<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected b:Lo/cz;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:Ljava/lang/String;

.field protected j:I

.field protected k:Ljava/util/UUID;

.field protected l:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;

.field protected o:Lo/cc;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lo/cz;)V
    .locals 2

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0}, Lo/zt;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 102
    iput-wide v0, p0, Lo/bZ;->g:J

    .line 128
    iput-object p2, p0, Lo/bZ;->b:Lo/cz;

    const/4 p2, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Lo/bZ;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lo/cz;I)V
    .locals 2

    .line 133
    invoke-direct {p0, p3}, Lo/zt;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 102
    iput-wide v0, p0, Lo/bZ;->g:J

    .line 134
    iput-object p2, p0, Lo/bZ;->b:Lo/cz;

    const/4 p2, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Lo/bZ;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;)V

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;)V
    .locals 1

    .line 143
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lo/bZ;->k:Ljava/util/UUID;

    .line 144
    iput-object p1, p0, Lo/bZ;->d:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 146
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;->a:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;

    iput-object p1, p0, Lo/bZ;->l:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;

    goto :goto_0

    .line 148
    :cond_0
    iput-object p2, p0, Lo/bZ;->l:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;

    :goto_0
    return-void
.end method

.method protected static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 155
    invoke-static {p1}, Lo/aeH;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "get"

    return-object v0
.end method

.method protected O()Ljava/lang/String;
    .locals 4

    .line 265
    invoke-virtual {p0}, Lo/bZ;->R()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lo/bZ;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lo/bZ;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of queries is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected P()Ljava/lang/String;
    .locals 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    iget-object v2, p0, Lo/bZ;->d:Landroid/content/Context;

    invoke-interface {v1, v2}, Lo/bO;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "languages"

    const-string v3, "&"

    invoke-static {v2, v1, v3}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Q()Ljava/lang/String;
    .locals 2

    .line 436
    invoke-virtual {p0}, Lo/bZ;->N()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "path"

    return-object v0

    :cond_0
    const-string v0, "callPath"

    return-object v0
.end method

.method protected abstract R()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 386
    invoke-super {p0, p1}, Lo/zt;->a(Ljava/lang/Object;)V

    .line 388
    invoke-virtual {p0}, Lo/bZ;->ab()J

    .line 393
    iget-object p1, p0, Lo/bZ;->d:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 394
    invoke-static {p1}, Lo/oc;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a_(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 2

    .line 512
    invoke-static {p1}, Lo/aeK;->a(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-object v1

    .line 516
    :cond_0
    invoke-virtual {p0}, Lo/bZ;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-static {p1}, Lo/aeK;->c(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/bZ;->f:J

    .line 351
    :try_start_0
    invoke-virtual {p0, p1}, Lo/bZ;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/bZ;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/bZ;->f:J

    .line 373
    invoke-virtual {p0}, Lo/bZ;->S()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string p2, "Parsing returned null."

    invoke-direct {p1, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 358
    instance-of p2, p1, Lcom/netflix/falkor/FalkorException;

    if-nez p2, :cond_3

    instance-of p2, p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 363
    :cond_2
    new-instance p2, Lcom/android/volley/VolleyError;

    invoke-direct {p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 360
    :cond_3
    :goto_1
    check-cast p1, Lcom/android/volley/VolleyError;

    throw p1
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 167
    invoke-virtual {p0}, Lo/bZ;->O()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lo/bZ;->N()Ljava/lang/String;

    move-result-object p1

    const-string v2, "method"

    const-string v3, "?"

    invoke-static {v2, p1, v3}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Lo/bZ;->M()Z

    move-result p1

    const-string v2, "&"

    if-eqz p1, :cond_0

    const-string p1, "materialize"

    const-string v3, "true"

    .line 172
    invoke-static {p1, v3, v2}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object p1, p0, Lo/bZ;->e:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    iget-object v0, p0, Lo/bZ;->l:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;->a(Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Lo/adY;

    .line 177
    invoke-virtual {p1}, Lo/adY;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    invoke-virtual {p1, v3}, Lo/adY;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 179
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    invoke-static {v3, v5, v2}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lo/bZ;->P()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_3
    invoke-virtual {p0, v1}, Lo/bZ;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AUIFalkorVolleyWebClientRequest"

    const-string v2, "VolleyWebClientRequest URL = %s"

    .line 192
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1
.end method

.method protected d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 234
    invoke-virtual {p0}, Lo/bZ;->f()Ljava/lang/Object;

    move-result-object v0

    .line 235
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 241
    :goto_0
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "&TAG="

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-object p1
.end method

.method public d(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 405
    invoke-virtual {p0}, Lo/bZ;->ab()J

    move-result-wide v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 406
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string v0, "AUIFalkorVolleyWebClientRequest"

    const-string v1, "request duration time (ms): %d, class: %s, error: %s"

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 409
    iget-object v0, p0, Lo/bZ;->p:Lo/zz;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cd:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, v0, v1}, Lo/aeK;->b(Lcom/android/volley/VolleyError;Lo/zz;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object p1

    .line 411
    iget-object v0, p0, Lo/bZ;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0}, Lo/adw;->b(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lo/bZ;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v0, v1}, Lo/adw;->c(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V

    .line 419
    :cond_0
    invoke-virtual {p0, p1}, Lo/bZ;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "AUIFalkorVolleyWebClientRequest"

    if-eqz p1, :cond_3

    .line 284
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v2, "X-Netflix.api-script-execution-time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v3, "X-Netflix.execution-time"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v4, "X-Netflix.api-script-revision"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lo/bZ;->i:Ljava/lang/String;

    .line 289
    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v4, "Set-Cookie"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "TEMP_PROFILE_ID"

    .line 291
    invoke-static {v4, v3}, Lo/afP;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 292
    iget-object v4, v3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 294
    iget-object v4, p0, Lo/bZ;->b:Lo/cz;

    new-instance v5, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    iget-object v6, v3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v3, v3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lo/cz;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V

    .line 301
    :cond_0
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/bZ;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "Failed to parse server execution time!"

    .line 306
    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :cond_1
    :goto_0
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lo/bZ;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "Failed to parse api script execution time!"

    .line 315
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :cond_2
    :goto_1
    iget v0, p1, Lo/ExitTransitionCoordinator;->d:I

    iput v0, p0, Lo/bZ;->j:I

    goto :goto_2

    :cond_3
    const-string v1, "execTime not found!"

    .line 322
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_2
    invoke-super {p0, p1}, Lo/zt;->e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method protected abstract g(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public q()Ljava/util/Map;
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

    .line 448
    invoke-virtual {p0}, Lo/bZ;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/bZ;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Lcom/android/volley/AuthFailureError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t build valid headers. Cookies are null. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/bZ;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    :goto_0
    invoke-super {p0}, Lo/zt;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 456
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/bZ;->k:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.request.uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v1, p0, Lo/bZ;->b:Lo/cz;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/bZ;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 467
    iget-object v1, p0, Lo/bZ;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/RaEvent;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_3
    const-string v1, "X-Netflix.Request.Routing"

    const-string v2, "{\"path\":\"/nq/aui/endpoint/^1.0.0-mobile/pathEvaluator\", \"control_tag\": \"auinqmobile\"}"

    .line 470
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
