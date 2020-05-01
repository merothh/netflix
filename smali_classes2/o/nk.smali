.class public abstract Lo/nk;
.super Lo/nq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/nq<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lo/nq;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "router"

    return-object v0
.end method

.method protected P()V
    .locals 2

    .line 48
    iget-object v0, p0, Lo/nk;->g:Lo/cz;

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/nk;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lo/agE;)Lorg/json/JSONObject;
    .locals 0

    .line 254
    invoke-virtual {p1}, Lo/agE;->d()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Lo/nk;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b(Lo/agE;)Lorg/json/JSONObject;
    .locals 4

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/nk;->s:J

    .line 229
    :try_start_0
    invoke-virtual {p0, p1}, Lo/nk;->e(Lo/agE;)V

    .line 230
    invoke-virtual {p0, p1}, Lo/nk;->a(Lo/agE;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p0, p1}, Lo/nk;->c(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 236
    :goto_0
    invoke-virtual {p0}, Lo/nk;->ag()V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/nk;->s:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/nk;->s:J

    .line 243
    invoke-virtual {p0}, Lo/nk;->K()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "Parsing returned null."

    invoke-direct {p1, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    return-object p1
.end method

.method public b(Ljava/util/Map;)[B
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "ApiNqMslVolleyReques"

    .line 81
    invoke-virtual {p0}, Lo/nk;->aa()Lo/mB;

    move-result-object v7

    const/4 v11, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p0, p1}, Lo/nk;->c(Ljava/util/Map;)Lo/zE$Application;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Lo/nk;->Z()Lo/zX;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lo/nk;->Z()Lo/zX;

    move-result-object v1

    invoke-interface {v1}, Lo/zX;->c()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lo/nk;->Z()Lo/zX;

    move-result-object v2

    invoke-interface {v2}, Lo/zX;->O_()Lo/aie;

    move-result-object v2

    move-object v8, v1

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v8, v2

    move-object v9, v8

    .line 104
    :goto_0
    iget-object v2, p1, Lo/zE$Application;->a:Ljava/lang/String;

    iget-object v3, p1, Lo/zE$Application;->e:Ljava/lang/String;

    iget-object v4, p1, Lo/zE$Application;->c:Ljava/util/Map;

    iget-object v5, p1, Lo/zE$Application;->b:Ljava/lang/String;

    iget-object v6, p1, Lo/zE$Application;->d:Ljava/lang/String;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lo/mB;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lo/nk;->k()Ljava/lang/String;

    move-result-object v2

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0}, Lo/nk;->q()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v9}, Lo/nk;->d(Lo/aie;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, Lo/nk;->f()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0}, Lo/nk;->I()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0}, Lo/nk;->O()Z

    move-result v13

    move-object v1, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, p1

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    invoke-virtual/range {v1 .. v10}, Lo/mB;->b(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "API request failed with MSL exception"

    .line 119
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    invoke-virtual {p0, p1}, Lo/nk;->d(Lcom/netflix/msl/MslException;)Ljava/lang/Throwable;

    move-result-object v0

    .line 121
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 124
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 116
    invoke-virtual {p0, p1}, Lo/nk;->b(Lcom/netflix/mediaclient/service/msl/client/MslErrorException;)V

    .line 117
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "API request failed with JSON exception"

    .line 113
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 268
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ApiNqMslVolleyReques"

    const-string v1, "error parsing json"

    .line 270
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ApiNqMslVolleyReques"

    if-eqz p1, :cond_1

    .line 139
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v3, "X-Netflix.api-script-execution-time"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v4, "X-Netflix.execution-time"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    iget-object v4, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v5, "X-Netflix.api-script-revision"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lo/nk;->x:Ljava/lang/String;

    .line 147
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lo/nk;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Failed to parse server execution time!"

    .line 152
    invoke-static {v1, v3, v5, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    :cond_0
    :goto_0
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/nk;->t:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Failed to parse api script execution time!"

    .line 161
    invoke-static {v1, v2, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_1
    const-string v2, "execTime not found!"

    .line 165
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 168
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->c:[B

    if-eqz v2, :cond_3

    .line 169
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length v2, v2

    iput v2, p0, Lo/nk;->c:I

    .line 177
    :cond_3
    :try_start_2
    iget-object p1, p1, Lo/ExitTransitionCoordinator;->c:[B

    .line 182
    invoke-virtual {p0}, Lo/nk;->aa()Lo/mB;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo/mB;->d([B)Lo/agE;

    move-result-object p1
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    :try_start_3
    invoke-virtual {p0, p1}, Lo/nk;->b(Lo/agE;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 214
    invoke-virtual {p0}, Lo/nk;->K()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 215
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    const-string v0, "Parsing returned null."

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x0

    .line 217
    invoke-static {p1, v0}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 207
    instance-of v0, p1, Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_5

    .line 208
    check-cast p1, Lcom/android/volley/VolleyError;

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    .line 210
    :cond_5
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Failed to unwrap response "

    .line 188
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->y:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method
