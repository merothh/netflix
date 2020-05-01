.class public abstract Lo/zn;
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


# static fields
.field private static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# instance fields
.field protected g:Landroid/content/Context;

.field protected h:J

.field protected i:J

.field protected j:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

.field protected k:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

.field protected l:Ljava/util/UUID;

.field protected n:J

.field protected o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    invoke-static {}, Lo/cI;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zn;->e:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    sget-object v1, Lo/zn;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "androidui_samurai"

    aput-object v2, v0, v1

    const-string v1, "{\"path\": \"%s\", \"control_tag\": \"%s\"}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zn;->f:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lo/zt;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 103
    iput-wide v0, p0, Lo/zn;->n:J

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lo/zn;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 131
    invoke-direct {p0, p2}, Lo/zt;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 103
    iput-wide v0, p0, Lo/zn;->n:J

    const/4 p2, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Lo/zn;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;I)V
    .locals 2

    .line 126
    invoke-direct {p0, p3}, Lo/zt;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 103
    iput-wide v0, p0, Lo/zn;->n:J

    .line 127
    invoke-direct {p0, p1, p2}, Lo/zn;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 1

    .line 136
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lo/zn;->l:Ljava/util/UUID;

    .line 137
    iput-object p1, p0, Lo/zn;->g:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 139
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->c:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iput-object p1, p0, Lo/zn;->k:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    goto :goto_0

    .line 141
    :cond_0
    iput-object p2, p0, Lo/zn;->k:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    :goto_0
    return-void
.end method

.method protected static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 148
    invoke-static {p1}, Lo/aeH;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract M()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "get"

    return-object v0
.end method

.method protected O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected T()Ljava/lang/String;
    .locals 4

    .line 236
    invoke-virtual {p0}, Lo/zn;->M()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lo/zn;->V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lo/zn;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of queries is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected V()Ljava/lang/String;
    .locals 2

    .line 408
    invoke-virtual {p0}, Lo/zn;->N()Ljava/lang/String;

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

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 349
    invoke-super {p0, p1}, Lo/zt;->a(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0}, Lo/zn;->ab()J

    .line 356
    iget-object p1, p0, Lo/zn;->g:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 357
    invoke-static {p1}, Lo/oc;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a_(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 2

    .line 472
    invoke-static {p1}, Lo/aeK;->a(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-object v1

    .line 476
    :cond_0
    invoke-virtual {p0}, Lo/zn;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
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

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/zn;->i:J

    .line 313
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lo/zn;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/zn;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/zn;->i:J

    .line 336
    invoke-virtual {p0}, Lo/zn;->S()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 337
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

    .line 320
    instance-of p2, p1, Lcom/netflix/falkor/FalkorException;

    if-nez p2, :cond_3

    instance-of p2, p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 326
    :cond_2
    new-instance p2, Lcom/android/volley/VolleyError;

    invoke-direct {p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 322
    :cond_3
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 323
    check-cast p1, Lcom/android/volley/VolleyError;

    throw p1
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 1

    .line 386
    iput-object p1, p0, Lo/zn;->j:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 387
    iget-object p1, p0, Lo/zn;->j:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/zn;->j(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lo/zn;->N()Ljava/lang/String;

    move-result-object p1

    const-string v1, "method"

    const-string v2, "?"

    invoke-static {v1, p1, v2}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lo/zn;->O()Z

    move-result p1

    const-string v1, "&"

    if-eqz p1, :cond_0

    const-string p1, "materialize"

    const-string v2, "true"

    .line 164
    invoke-static {p1, v2, v1}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    invoke-virtual {p0}, Lo/zn;->j()Z

    move-result p1

    if-nez p1, :cond_1

    .line 168
    invoke-virtual {p0}, Lo/zn;->T()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    iget-object p1, p0, Lo/zn;->j:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    iget-object v2, p0, Lo/zn;->k:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-interface {p1, v2}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->d(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Lo/adY;

    .line 173
    invoke-virtual {p1}, Lo/adY;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v3}, Lo/adY;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 175
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 176
    invoke-static {v3, v5, v1}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p0}, Lo/zn;->j()Z

    move-result p1

    if-nez p1, :cond_4

    .line 181
    invoke-virtual {p0}, Lo/zn;->P()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_4
    invoke-virtual {p0, v0}, Lo/zn;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FalkorVolleyWebClientRequest"

    const-string v2, "VolleyWebClientRequest URL = %s"

    .line 190
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1
.end method

.method protected abstract d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public d(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 368
    invoke-virtual {p0}, Lo/zn;->ab()J

    move-result-wide v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 369
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

    const-string v0, "FalkorVolleyWebClientRequest"

    const-string v1, "request duration time (ms): %d, class: %s, error: %s"

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    iget-object v0, p0, Lo/zn;->p:Lo/zz;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cd:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, v0, v1}, Lo/aeK;->b(Lcom/android/volley/VolleyError;Lo/zz;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object p1

    .line 374
    iget-object v0, p0, Lo/zn;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0}, Lo/adw;->b(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lo/zn;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v0, v1}, Lo/adw;->c(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lo/zn;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 205
    invoke-virtual {p0}, Lo/zn;->f()Ljava/lang/Object;

    move-result-object v0

    .line 206
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "&TAG="

    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-object p1
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "FalkorVolleyWebClientRequest"

    if-eqz p1, :cond_1

    .line 255
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v2, "X-Netflix.api-script-execution-time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v3, "X-Netflix.execution-time"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v4, "X-Netflix.api-script-revision"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lo/zn;->o:Ljava/lang/String;

    .line 263
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/zn;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "Failed to parse server execution time!"

    .line 268
    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :cond_0
    :goto_0
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lo/zn;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "Failed to parse api script execution time!"

    .line 277
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string v1, "execTime not found!"

    .line 282
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lo/zt;->e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    .line 420
    invoke-virtual {p0}, Lo/zn;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/zn;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    new-instance v0, Lcom/android/volley/AuthFailureError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t build valid headers. Cookies are null. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/zn;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    :goto_0
    invoke-super {p0}, Lo/zt;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 428
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/zn;->l:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.request.uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lo/zn;->q:Lo/cz;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/zn;->q:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/zn;->q:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 432
    iget-object v1, p0, Lo/zn;->q:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/RaEvent;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_3
    return-object v0
.end method
