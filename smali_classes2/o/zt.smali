.class public abstract Lo/zt;
.super Lcom/android/volley/Request;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;",
        "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private d:Lo/ze;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field protected p:Lo/zz;

.field protected q:Lo/cz;

.field protected r:I

.field protected s:Lo/afR;

.field protected t:J


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    .line 76
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lo/zt;->e:Ljava/util/Map;

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lo/zt;->a(Z)V

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/zt;->t:J

    return-void
.end method

.method protected static a(Lo/ExitTransitionCoordinator;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 296
    iget-object v1, p0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object p0, p0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v1, "X-Netflix.eas.identity.mismatchack"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 301
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v0, "true"

    .line 309
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-static {p0, p1, p2, v0}, Lo/zt;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string p1, "; "

    .line 271
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lo/zt;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lo/zt;->q:Lo/cz;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/zt;->q:Lo/cz;

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    invoke-interface {v0}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/zt;->q:Lo/cz;

    invoke-interface {v2}, Lo/cz;->e()Lo/ds;

    move-result-object v2

    invoke-interface {v2}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-Netflix.esn"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/adP;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Netflix.session.id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 180
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected J()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract N()Ljava/lang/String;
.end method

.method protected P()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected Y()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lo/zt;->s:Lo/afR;

    invoke-interface {v0}, Lo/afR;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected Z()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lo/zt;->d:Lo/ze;

    invoke-interface {v0}, Lo/ze;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/zt;->d:Lo/ze;

    .line 277
    invoke-interface {v0}, Lo/ze;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/zt;->t:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/zt;->t:J

    .line 400
    invoke-virtual {p0, p1}, Lo/zt;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public aa()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lo/zt;->d:Lo/ze;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ab()J
    .locals 2

    .line 432
    iget-wide v0, p0, Lo/zt;->t:J

    return-wide v0
.end method

.method protected ac()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lo/zt;->s:Lo/afR;

    invoke-interface {v0}, Lo/afR;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected ag()Z
    .locals 3

    .line 457
    iget-object v0, p0, Lo/zt;->d:Lo/ze;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Lo/ze;->c()Ljava/lang/String;

    move-result-object v1

    .line 459
    iget-object v0, p0, Lo/zt;->d:Lo/ze;

    invoke-interface {v0}, Lo/ze;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 462
    :goto_0
    invoke-virtual {p0}, Lo/zt;->J()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 464
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x0

    return v0

    .line 476
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lo/zt;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/volley/Request;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/zt;->b:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lo/zt;->f:I

    return-void
.end method

.method public b(Lo/cz;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lo/zt;->q:Lo/cz;

    return-void
.end method

.method protected abstract c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public d(Lcom/android/volley/VolleyError;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 405
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_volleyrequest"

    const-string v2, "VolleyError: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lo/zt;->t:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lo/zt;->t:J

    .line 408
    iget-object v0, p1, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on response:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget-object v3, v3, Lo/ExitTransitionCoordinator;->c:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    iget-object v0, p0, Lo/zt;->p:Lo/zz;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cd:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, v0, v1}, Lo/aeK;->b(Lcom/android/volley/VolleyError;Lo/zz;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object p1

    .line 413
    invoke-virtual {p0, p1}, Lo/zt;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected abstract d(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public d(Lo/afR;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/zt;->s:Lo/afR;

    return-void
.end method

.method public d(Lo/ze;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lo/zt;->d:Lo/ze;

    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length v0, v0

    iput v0, p0, Lo/zt;->r:I

    .line 323
    :cond_0
    invoke-virtual {p0}, Lo/zt;->K()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/zt;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/zt;->ag()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 325
    iget v3, p1, Lo/ExitTransitionCoordinator;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "nf_volleyrequest"

    const-string v5, "Response status %d"

    invoke-static {v3, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 328
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v5, "Set-Cookie"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 329
    iget-object v5, p0, Lo/zt;->d:Lo/ze;

    invoke-interface {v5}, Lo/ze;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lo/afP;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v5

    .line 330
    invoke-static {v2}, Lo/afP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 331
    invoke-static {v2}, Lo/afP;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    iget-object v8, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v9, "X-Netflix.deviceIpAddr"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 334
    invoke-static {v8}, Lo/zo;->d(Ljava/lang/String;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 336
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    if-eqz v5, :cond_2

    iget-object v4, v5, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v4, "null"

    :goto_1
    aput-object v4, v8, v1

    const-string v1, "can process ? %b -  newId %s"

    invoke-static {v3, v1, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    .line 337
    iget-object v0, p0, Lo/zt;->d:Lo/ze;

    if-eqz v0, :cond_3

    .line 338
    invoke-interface {v0, v5}, Lo/ze;->b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 344
    :cond_3
    invoke-static {v6}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    iget-object v0, p0, Lo/zt;->s:Lo/afR;

    invoke-interface {v0, v6}, Lo/afR;->a(Ljava/lang/String;)V

    .line 349
    :cond_4
    invoke-static {v7}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    iget-object v0, p0, Lo/zt;->s:Lo/afR;

    invoke-interface {v0, v7}, Lo/afR;->d(Ljava/lang/String;)V

    .line 353
    :cond_5
    invoke-static {p1}, Lo/zt;->a(Lo/ExitTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "Identity mismatch detected on server side"

    .line 354
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Wrong state. Identity mismatch detected on server side"

    .line 356
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    .line 361
    :cond_6
    invoke-virtual {p0}, Lo/zt;->K()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lo/zt;->ag()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p1, "Identity mismatch detected on client side"

    .line 362
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Wrong state. Identity mismatch detected on client side"

    .line 364
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    .line 371
    :cond_7
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lo/ExitTransitionCoordinator;->c:[B

    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    invoke-static {v3}, Lo/LauncherActivity;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 373
    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lo/ExitTransitionCoordinator;->c:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 378
    :goto_2
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lo/zt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    invoke-virtual {p0}, Lo/zt;->S()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    .line 388
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    const-string v0, "Parsing returned null."

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 v0, 0x0

    .line 390
    invoke-static {p1, v0}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 380
    instance-of v0, p1, Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_9

    .line 381
    check-cast p1, Lcom/android/volley/VolleyError;

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    .line 383
    :cond_9
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected j(Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lo/zt;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 133
    invoke-virtual {p0, p1}, Lo/zt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/zt;->b:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lo/zt;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/zt;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    :goto_0
    iput p1, p0, Lo/zt;->f:I

    .line 138
    iget-object p1, p0, Lo/zt;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    iput v0, p0, Lo/zt;->f:I

    goto :goto_1

    .line 141
    :cond_1
    iget-object p1, p0, Lo/zt;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 143
    iput v0, p0, Lo/zt;->f:I

    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lo/zt;->f:I

    :goto_1
    return-void

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not change the URL of a VolleyWebCLientRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/zt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 166
    iget v0, p0, Lo/zt;->f:I

    return v0
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

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    invoke-virtual {p0}, Lo/zt;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lo/zt;->s:Lo/afR;

    .line 195
    invoke-interface {v1}, Lo/afR;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/zt;->s:Lo/afR;

    .line 196
    invoke-interface {v2}, Lo/afR;->e()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v0, v1, v2}, Lo/zt;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lo/zt;->Y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget-object v1, p0, Lo/zt;->s:Lo/afR;

    .line 202
    invoke-interface {v1}, Lo/afR;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/zt;->s:Lo/afR;

    .line 203
    invoke-interface {v2}, Lo/afR;->a()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v0, v1, v2}, Lo/zt;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    invoke-virtual {p0}, Lo/zt;->Z()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 207
    iget-object v1, p0, Lo/zt;->d:Lo/ze;

    .line 209
    invoke-interface {v1}, Lo/ze;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lo/zt;->d:Lo/ze;

    .line 210
    invoke-interface {v3}, Lo/ze;->d()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {v0, v1, v3}, Lo/zt;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lo/zt;->d:Lo/ze;

    .line 213
    invoke-interface {v1}, Lo/ze;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lo/zt;->d:Lo/ze;

    .line 214
    invoke-interface {v3}, Lo/ze;->e()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v0, v1, v3, v2}, Lo/zt;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lo/zt;->e:Ljava/util/Map;

    const-string v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lo/zt;->d:Lo/ze;

    if-eqz v1, :cond_3

    .line 230
    invoke-interface {v1}, Lo/ze;->c()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    iget-object v4, p0, Lo/zt;->e:Ljava/util/Map;

    const-string v5, "X-Netflix.request.client.user.guid"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_3
    iget-object v1, p0, Lo/zt;->e:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p0}, Lo/zt;->A()Lo/FragmentController;

    move-result-object v0

    const-string v1, "X-Netflix.Request.Attempt"

    if-eqz v0, :cond_4

    .line 239
    iget-object v3, p0, Lo/zt;->e:Ljava/util/Map;

    invoke-interface {v0}, Lo/FragmentController;->a()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_4
    iget-object v0, p0, Lo/zt;->e:Ljava/util/Map;

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_0
    iget-object v0, p0, Lo/zt;->e:Ljava/util/Map;

    invoke-direct {p0, v0}, Lo/zt;->e(Ljava/util/Map;)V

    .line 246
    iget-object v0, p0, Lo/zt;->e:Ljava/util/Map;

    return-object v0
.end method
