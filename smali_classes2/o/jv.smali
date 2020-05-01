.class public abstract Lo/jv;
.super Lo/np;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/np<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, v0}, Lo/np;-><init>(I)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected abstract J()Ljava/lang/String;
.end method

.method protected P()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lo/jv;->aa()Lo/mB;

    move-result-object v0

    invoke-virtual {v0}, Lo/mB;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lo/jv;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/jv;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/util/Map;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string p1, "nf_client_log_msl_equest"

    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lo/jv;->ab()Ljava/util/Map;

    .line 97
    invoke-virtual {p0}, Lo/jv;->M()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lo/jv;->Y()Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lo/jv;->Z()Lo/zX;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lo/jv;->Z()Lo/zX;

    move-result-object v2

    invoke-interface {v2}, Lo/zX;->c()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p0}, Lo/jv;->Z()Lo/zX;

    move-result-object v2

    invoke-interface {v2}, Lo/zX;->O_()Lo/aie;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "Executing ichnaea (logging) request..."

    .line 135
    invoke-static {p1, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UTF-8"

    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Lo/jv;->q()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v1, v4, v3, v2}, Lo/jv;->e([BLjava/util/Map;Ljava/lang/String;Lo/aie;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "API request failed with MSL exception"

    .line 145
    invoke-static {p1, v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "API request failed with MSL Error exception"

    .line 142
    invoke-static {p1, v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "API request failed with JSON exception"

    .line 139
    invoke-static {p1, v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected c([B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/jv;->s:J

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Lo/jv;->e([B)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/jv;->s:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/jv;->s:J

    .line 247
    invoke-virtual {p0}, Lo/jv;->K()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "Parsing returned null."

    invoke-direct {p1, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 233
    instance-of v0, p1, Lcom/netflix/falkor/FalkorException;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 237
    :cond_2
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 234
    :cond_3
    :goto_1
    check-cast p1, Lcom/android/volley/VolleyError;

    throw p1
.end method

.method protected abstract e([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "nf_client_log_msl_equest"

    if-eqz p1, :cond_1

    .line 162
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v2, "X-Netflix.api-script-execution-time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v3, "X-Netflix.execution-time"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v4, "X-Netflix.api-script-revision"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lo/jv;->x:Ljava/lang/String;

    .line 170
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 172
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/jv;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "Failed to parse server execution time!"

    .line 175
    invoke-static {v0, v2, v5, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    :cond_0
    :goto_0
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lo/jv;->t:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Failed to parse api script execution time!"

    .line 184
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_1
    const-string v1, "execTime not found!"

    .line 188
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 191
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length v0, v0

    iput v0, p0, Lo/jv;->c:I

    .line 197
    :cond_3
    :try_start_2
    iget-object p1, p1, Lo/ExitTransitionCoordinator;->c:[B

    invoke-virtual {p0, p1}, Lo/jv;->c([B)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    invoke-virtual {p0}, Lo/jv;->K()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 212
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    const-string v0, "Parsing returned null."

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x0

    .line 214
    invoke-static {p1, v0}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 204
    instance-of v0, p1, Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_5

    .line 205
    check-cast p1, Lcom/android/volley/VolleyError;

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    .line 207
    :cond_5
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e([BLjava/util/Map;Ljava/lang/String;Lo/aie;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/aie;",
            ")[B"
        }
    .end annotation
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->s:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
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

    .line 61
    invoke-super {p0}, Lo/np;->q()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Encoding"

    const-string v2, "msl_v1"

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
