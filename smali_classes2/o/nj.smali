.class public abstract Lo/nj;
.super Lo/np;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nj$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/np<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private e:Z

.field protected h:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lo/np;-><init>(I)V

    .line 149
    invoke-virtual {p0}, Lo/nj;->T()Z

    move-result v0

    iput-boolean v0, p0, Lo/nj;->e:Z

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->c:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iput-object v0, p0, Lo/nj;->h:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lo/np;-><init>(I)V

    .line 149
    invoke-virtual {p0}, Lo/nj;->T()Z

    move-result v0

    iput-boolean v0, p0, Lo/nj;->e:Z

    .line 75
    iput-object p1, p0, Lo/nj;->h:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    return-void
.end method

.method private U()Lo/nj$Activity;
    .locals 3

    .line 274
    invoke-virtual {p0}, Lo/nj;->Z()Lo/zX;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lo/nj;->Z()Lo/zX;

    move-result-object v0

    invoke-interface {v0}, Lo/zX;->c()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p0}, Lo/nj;->Z()Lo/zX;

    move-result-object v0

    invoke-interface {v0}, Lo/zX;->O_()Lo/aie;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 285
    :goto_0
    new-instance v2, Lo/nj$Activity;

    invoke-direct {v2, v1, v0}, Lo/nj$Activity;-><init>(Ljava/lang/String;Lo/aie;)V

    return-object v2
.end method

.method private a(Ljava/util/Map;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FalkorMSLVolleyRequest"

    const-string v2, "ExecuteWithEdgeEnvelope:: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    invoke-virtual {p0}, Lo/nj;->aa()Lo/mB;

    move-result-object v0

    .line 193
    invoke-virtual {p0, p1}, Lo/nj;->c(Ljava/util/Map;)Lo/zE$Application;

    move-result-object p1

    .line 199
    invoke-direct {p0}, Lo/nj;->U()Lo/nj$Activity;

    move-result-object v1

    .line 200
    iget-object v4, p1, Lo/zE$Application;->a:Ljava/lang/String;

    iget-object v5, p1, Lo/zE$Application;->e:Ljava/lang/String;

    iget-object v6, p1, Lo/zE$Application;->c:Ljava/util/Map;

    iget-object v7, p1, Lo/zE$Application;->b:Ljava/lang/String;

    iget-object v8, p1, Lo/zE$Application;->d:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lo/mB;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Lo/nj;->k()Ljava/lang/String;

    move-result-object v4

    const-string v2, "UTF-8"

    .line 208
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 209
    invoke-virtual {p0}, Lo/nj;->q()Ljava/util/Map;

    move-result-object v6

    iget-object v7, v1, Lo/nj$Activity;->d:Ljava/lang/String;

    iget-object v8, v1, Lo/nj$Activity;->b:Lo/aie;

    iget-object p1, v1, Lo/nj$Activity;->b:Lo/aie;

    .line 212
    invoke-virtual {p0, p1}, Lo/nj;->d(Lo/aie;)Ljava/lang/Boolean;

    move-result-object v9

    .line 213
    invoke-virtual {p0}, Lo/nj;->f()Ljava/lang/Object;

    move-result-object v10

    .line 214
    invoke-virtual {p0}, Lo/nj;->I()Ljava/util/List;

    move-result-object v11

    .line 215
    invoke-virtual {p0}, Lo/nj;->O()Z

    move-result v12

    .line 206
    invoke-virtual/range {v3 .. v12}, Lo/mB;->b(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)[B

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/util/Map;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FalkorMSLVolleyRequest"

    const-string v2, "ExecuteWithoutEdgeEnvelope:: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 238
    invoke-virtual {p0}, Lo/nj;->aa()Lo/mB;

    move-result-object v3

    .line 239
    invoke-virtual {p0, p1}, Lo/nj;->c(Ljava/util/Map;)Lo/zE$Application;

    move-result-object p1

    .line 245
    invoke-direct {p0}, Lo/nj;->U()Lo/nj$Activity;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Lo/nj;->k()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-direct {p0, p1}, Lo/nj;->e(Lo/zE$Application;)[B

    move-result-object v5

    iget-object v6, p1, Lo/zE$Application;->c:Ljava/util/Map;

    iget-object v7, v0, Lo/nj$Activity;->d:Ljava/lang/String;

    iget-object v8, v0, Lo/nj$Activity;->b:Lo/aie;

    iget-object p1, v0, Lo/nj$Activity;->b:Lo/aie;

    .line 253
    invoke-virtual {p0, p1}, Lo/nj;->d(Lo/aie;)Ljava/lang/Boolean;

    move-result-object v9

    .line 254
    invoke-virtual {p0}, Lo/nj;->f()Ljava/lang/Object;

    move-result-object v10

    .line 255
    invoke-virtual {p0}, Lo/nj;->I()Ljava/util/List;

    move-result-object v11

    .line 256
    invoke-virtual {p0}, Lo/nj;->O()Z

    move-result v12

    .line 247
    invoke-virtual/range {v3 .. v12}, Lo/mB;->b(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)[B

    move-result-object p1

    return-object p1
.end method

.method private e(Lo/zE$Application;)[B
    .locals 2

    .line 226
    iget-object v0, p1, Lo/zE$Application;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "UTF-8"

    if-eqz v0, :cond_0

    .line 227
    iget-object p1, p1, Lo/zE$Application;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    iget-object p1, p1, Lo/zE$Application;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected static h(Ljava/lang/String;)Z
    .locals 1

    .line 496
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netflix/falkor/FalkorException;->e(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected J()Ljava/lang/String;
    .locals 1

    const-string v0, "get"

    return-object v0
.end method

.method public M_()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected T()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected X()Ljava/lang/String;
    .locals 2

    .line 138
    invoke-virtual {p0}, Lo/nj;->J()Ljava/lang/String;

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

.method protected a(Lo/ExitTransitionCoordinator;)Lo/agE;
    .locals 4

    .line 370
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    .line 376
    iget-boolean v1, p0, Lo/nj;->e:Z

    const-string v2, "FalkorMSLVolleyRequest"

    if-eqz v1, :cond_0

    const-string p1, "createApiHttpWrapper:: using edge envelope..."

    .line 377
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lo/nj;->aa()Lo/mB;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/mB;->d([B)Lo/agE;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "createApiHttpWrapper:: WITHOUT using edge envelope..."

    .line 381
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v0, Lo/agE;

    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    iget v2, p1, Lo/ExitTransitionCoordinator;->d:I

    iget-object p1, p1, Lo/ExitTransitionCoordinator;->c:[B

    const-string v3, "noedge"

    invoke-direct {v0, v3, v1, v2, p1}, Lo/agE;-><init>(Ljava/lang/String;Ljava/util/Map;I[B)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected a(Ljava/lang/Exception;)Z
    .locals 5

    .line 431
    instance-of v0, p1, Lcom/netflix/falkor/FalkorException;

    const-string v1, "handleNotAuthorized:: regular API failure"

    const/4 v2, 0x0

    const-string v3, "FalkorMSLVolleyRequest"

    if-nez v0, :cond_0

    .line 432
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 436
    :cond_0
    check-cast p1, Lcom/netflix/falkor/FalkorException;

    .line 437
    iget-object v0, p0, Lo/nj;->j:Lo/zz;

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bW:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, v0, v4}, Lo/aeK;->b(Lcom/android/volley/VolleyError;Lo/zz;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 438
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->N:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v4, :cond_6

    .line 440
    iget p1, p0, Lo/nj;->u:I

    const/4 v4, 0x2

    if-lt p1, v4, :cond_1

    .line 441
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput-boolean v2, p0, Lo/nj;->y:Z

    return v0

    .line 446
    :cond_1
    sget-object p1, Lo/nj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "User relogin attempt is in process, just retry later..."

    .line 447
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget p1, p0, Lo/nj;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/nj;->u:I

    .line 449
    iput-boolean v0, p0, Lo/nj;->y:Z

    return v0

    :cond_2
    const-string p1, "handleNotAuthorized:: User is not authorized, see if we can relogin..."

    .line 453
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lo/nj;->af()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "handleNotAuthorized:: Trying to relogin using old master token and user id token..."

    .line 456
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iput-boolean v0, p0, Lo/nj;->y:Z

    return v0

    .line 460
    :cond_3
    invoke-virtual {p0}, Lo/nj;->am()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "handleNotAuthorized:: Trying to relogin using cookies...."

    .line 462
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iput-boolean v0, p0, Lo/nj;->y:Z

    return v0

    .line 468
    :cond_4
    iget-object p1, p0, Lo/nj;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lo/nj;->o:Z

    if-nez p1, :cond_5

    const-string p1, "handleNotAuthorized:: User is currently logged in, logged him out..."

    .line 469
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object p1, p0, Lo/nj;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {p1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Z)V

    goto :goto_0

    :cond_5
    const-string p1, "handleNotAuthorized:: User is NOT currently logged in, pass this failure regular way..."

    .line 472
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_6
    :goto_0
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iput-boolean v2, p0, Lo/nj;->y:Z

    return v0
.end method

.method public b(Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "FalkorMSLVolleyRequest"

    const/4 v1, 0x0

    .line 163
    :try_start_0
    iget-boolean v2, p0, Lo/nj;->e:Z

    if-eqz v2, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lo/nj;->a(Ljava/util/Map;)[B

    move-result-object p1

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lo/nj;->d(Ljava/util/Map;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "API request failed with MSL exception"

    .line 176
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    invoke-virtual {p0, p1}, Lo/nj;->d(Lcom/netflix/msl/MslException;)Ljava/lang/Throwable;

    move-result-object v0

    .line 178
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 179
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 181
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 173
    invoke-virtual {p0, p1}, Lo/nj;->b(Lcom/netflix/mediaclient/service/msl/client/MslErrorException;)V

    .line 174
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "API request failed with JSON exception"

    .line 170
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected c(Lo/agE;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/agE;",
            ")TT;"
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Lo/agE;->d()Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-virtual {p0, p1}, Lo/nj;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lo/agE;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/agE;",
            ")TT;"
        }
    .end annotation

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/nj;->s:J

    .line 401
    :try_start_0
    invoke-virtual {p0, p1}, Lo/nj;->e(Lo/agE;)V

    .line 402
    invoke-virtual {p0, p1}, Lo/nj;->c(Lo/agE;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 405
    invoke-virtual {p0, p1}, Lo/nj;->c(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 408
    :goto_0
    invoke-virtual {p0}, Lo/nj;->ag()V

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/nj;->s:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/nj;->s:J

    .line 415
    invoke-virtual {p0}, Lo/nj;->K()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "Parsing returned null."

    invoke-direct {p1, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    return-object p1
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

    const/4 v0, 0x0

    const-string v1, "FalkorMSLVolleyRequest"

    if-eqz p1, :cond_1

    .line 296
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v3, "X-Netflix.api-script-execution-time"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v4, "X-Netflix.execution-time"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 299
    iget-object v4, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v5, "X-Netflix.api-script-revision"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lo/nj;->x:Ljava/lang/String;

    .line 304
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lo/nj;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Failed to parse server execution time!"

    .line 309
    invoke-static {v1, v3, v5, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 313
    :cond_0
    :goto_0
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/nj;->t:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Failed to parse api script execution time!"

    .line 318
    invoke-static {v1, v2, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_1
    const-string v2, "execTime not found!"

    .line 322
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 325
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->c:[B

    if-eqz v2, :cond_3

    .line 326
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length v2, v2

    iput v2, p0, Lo/nj;->c:I

    .line 333
    :cond_3
    :try_start_2
    invoke-virtual {p0, p1}, Lo/nj;->a(Lo/ExitTransitionCoordinator;)Lo/agE;

    move-result-object p1
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 342
    :try_start_3
    invoke-virtual {p0, p1}, Lo/nj;->d(Lo/agE;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 362
    invoke-virtual {p0}, Lo/nj;->K()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 363
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    const-string v0, "Parsing returned null."

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x0

    .line 365
    invoke-static {p1, v0}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 355
    instance-of v0, p1, Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_5

    .line 356
    check-cast p1, Lcom/android/volley/VolleyError;

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    .line 358
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

    .line 336
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 337
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

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

.method public u()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-super {p0}, Lo/np;->u()Ljava/util/Map;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lo/nj;->J()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Lo/nj;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "materialize"

    const-string v2, "true"

    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-virtual {p0}, Lo/nj;->u_()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lo/nj;->X()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of queries is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract u_()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
