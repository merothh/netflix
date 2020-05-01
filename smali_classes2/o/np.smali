.class public abstract Lo/np;
.super Lcom/android/volley/Request;
.source ""

# interfaces
.implements Lo/zW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;",
        "Lo/zW;"
    }
.end annotation


# static fields
.field protected static n:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private b:Lo/zF;

.field private d:Lo/mB;

.field private e:I

.field protected f:Lo/zE;

.field protected g:Lo/cz;

.field private h:Ljava/lang/String;

.field protected i:Lcom/netflix/mediaclient/service/user/UserAgent;

.field protected j:Lo/zz;

.field protected k:Lo/zX;

.field protected l:I

.field protected m:J

.field protected o:Z

.field protected p:Ljava/util/UUID;

.field protected q:J

.field protected r:Ljava/lang/String;

.field protected s:J

.field protected t:J

.field protected u:I

.field protected x:Ljava/lang/String;

.field protected y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/np;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    const-wide/16 v0, -0x1

    .line 142
    iput-wide v0, p0, Lo/np;->q:J

    const/4 p1, 0x0

    .line 173
    invoke-virtual {p0, p1}, Lo/np;->a(Z)V

    .line 174
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lo/np;->p:Ljava/util/UUID;

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/np;->m:J

    return-void
.end method

.method private J()Z
    .locals 1

    .line 718
    invoke-virtual {p0}, Lo/np;->ad()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/np;->ah()Z

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

.method private N()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lo/np;->u()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 531
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 532
    invoke-virtual {p0}, Lo/np;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/np;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_volleyrequest"

    const-string v4, "Failed to get BODY as string"

    .line 536
    invoke-static {v3, v1, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method

.method private static a(Lcom/netflix/msl/MslException;)Ljava/lang/Throwable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    .line 856
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lo/np;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 408
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_0

    const-string p2, "; "

    .line 410
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    invoke-virtual {p0}, Lo/np;->ae()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 398
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v1}, Lo/afP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const-string v3, "nfvdid"

    .line 401
    invoke-direct {p0, v0, v3, v1, v2}, Lo/np;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 404
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cookie"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static b(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;"
        }
    .end annotation

    const-string v0, "nf_volleyrequest"

    if-eqz p1, :cond_2

    .line 964
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 976
    invoke-static {v1}, Lo/afP;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 977
    invoke-static {v3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 979
    invoke-static {v2}, Lo/afP;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    const/4 v3, 0x0

    .line 981
    :goto_0
    invoke-static {v3}, Lo/afP;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 988
    invoke-static {v4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object v4, v3, v2

    const-string v1, "Update cookies for user %s: newId %s"

    .line 989
    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 990
    new-instance v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-direct {v0, p0, v4, p1}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    const-string p0, "MSL headers not found!"

    .line 965
    invoke-static {v0, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "nf_volleyrequest"

    if-eqz p1, :cond_1

    .line 1002
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    const-string p0, "key: %s, value: %s"

    .line 1014
    invoke-static {v0, p0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1

    :cond_1
    :goto_0
    const-string p0, "MSL headers not found!"

    .line 1003
    invoke-static {v0, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 809
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 810
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 816
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 818
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static d(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 866
    :cond_0
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    return-object p0

    .line 870
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p0

    .line 873
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lo/np;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget v0, v0, Lo/ExitTransitionCoordinator;->d:I

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_0

    .line 1020
    new-instance p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget v0, v0, Lo/ExitTransitionCoordinator;->d:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 1023
    new-instance p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aG:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p0

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget v0, v0, Lo/ExitTransitionCoordinator;->d:I

    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_2

    .line 1026
    new-instance p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p0

    .line 1028
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cw:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-object v0
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

    .line 386
    iget-object v0, p0, Lo/np;->k:Lo/zX;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/zX;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lo/np;->g:Lo/cz;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/np;->g:Lo/cz;

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    invoke-interface {v0}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/np;->g:Lo/cz;

    invoke-interface {v2}, Lo/cz;->e()Lo/ds;

    move-result-object v2

    invoke-interface {v2}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-Netflix.esn"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
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
.method protected K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lo/np;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lo/np;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 514
    :cond_0
    invoke-virtual {p0}, Lo/np;->g()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 517
    :cond_1
    invoke-direct {p0}, Lo/np;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract P()V
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lo/np;->h:Ljava/lang/String;

    return-object v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected V()J
    .locals 2

    .line 299
    iget-wide v0, p0, Lo/np;->m:J

    return-wide v0
.end method

.method protected W()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lo/np;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    invoke-direct {p0}, Lo/np;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()Lo/zX;
    .locals 1

    .line 544
    iget-object v0, p0, Lo/np;->k:Lo/zX;

    return-object v0
.end method

.method protected a(Lo/zE$Activity;)Lo/zX;
    .locals 3

    .line 775
    new-instance v0, Lo/aic;

    iget-object v1, p1, Lo/zE$Activity;->e:Lo/ahS;

    iget-object v2, p1, Lo/zE$Activity;->c:Lo/ahX;

    invoke-direct {v0, v1, v2}, Lo/aic;-><init>(Lo/ahS;Lo/ahX;)V

    .line 776
    iget-object p1, p1, Lo/zE$Activity;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lo/np;->e(Ljava/lang/String;Lo/aie;)Lo/zX;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lo/ze;)Lo/zX;
    .locals 3

    .line 781
    new-instance v0, Lo/ahY;

    invoke-interface {p1}, Lo/ze;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/ze;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ahY;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-interface {p1}, Lo/ze;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lo/np;->e(Ljava/lang/String;Lo/aie;)Lo/zX;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lo/np;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-void
.end method

.method protected a(Lcom/netflix/msl/MslConstants$ResponseCode;)V
    .locals 3

    .line 612
    sget-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v1, 0x1

    const-string v2, "nf_volleyrequest"

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 617
    invoke-virtual {p1}, Lcom/netflix/msl/MslConstants$ResponseCode;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "No special treatment for %s"

    invoke-static {v2, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "User reauthorization required, log user out"

    .line 613
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iput-boolean v1, p0, Lo/np;->o:Z

    .line 615
    iget-object p1, p0, Lo/np;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->f()V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/np;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/np;->m:J

    .line 233
    invoke-virtual {p0}, Lo/np;->V()J

    .line 238
    iget-object v0, p0, Lo/np;->d:Lo/mB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/mB;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lo/np;->d:Lo/mB;

    invoke-virtual {v0}, Lo/mB;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/oc;->d(Landroid/content/Context;)V

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Lo/np;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Exception;)Z
.end method

.method public a_(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 2

    .line 888
    invoke-static {p1}, Lo/aeK;->a(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 890
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-object v1

    .line 892
    :cond_0
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_1

    .line 893
    invoke-static {p1}, Lo/np;->e(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p1

    return-object p1

    .line 895
    :cond_1
    invoke-virtual {p0}, Lo/np;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    invoke-static {p1}, Lo/aeK;->c(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public aa()Lo/mB;
    .locals 1

    .line 312
    iget-object v0, p0, Lo/np;->d:Lo/mB;

    return-object v0
.end method

.method public ab()Ljava/util/Map;
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

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lo/np;->q()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_volleyrequest"

    const-string v3, "Failed to get MSL headers"

    .line 496
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected ac()Ljava/lang/Boolean;
    .locals 1

    .line 591
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected ad()Z
    .locals 1

    .line 728
    invoke-virtual {p0}, Lo/np;->Z()Lo/zX;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 733
    :cond_0
    invoke-interface {v0}, Lo/zX;->O_()Lo/aie;

    move-result-object v0

    .line 734
    instance-of v0, v0, Lo/aic;

    return v0
.end method

.method protected ae()Landroid/content/Context;
    .locals 1

    .line 878
    iget-object v0, p0, Lo/np;->d:Lo/mB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/mB;->d()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected af()Z
    .locals 5

    .line 744
    invoke-virtual {p0}, Lo/np;->ad()Z

    move-result v0

    const-string v1, "nf_volleyrequest"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "handleNotAuthorized:: Already tried to relogin using tokens..."

    .line 745
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    sget-object v0, Lo/np;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    .line 750
    :cond_0
    invoke-virtual {p0}, Lo/np;->aa()Lo/mB;

    move-result-object v0

    invoke-virtual {v0}, Lo/mB;->g()Lo/zE$Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 751
    iget-object v3, v0, Lo/zE$Activity;->e:Lo/ahS;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lo/zE$Activity;->c:Lo/ahX;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "handleNotAuthorized:: According to MSL store, user was logged in before, check user agent"

    .line 755
    invoke-static {v1, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v3, p0, Lo/np;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    const-string v0, "handleNotAuthorized:: Mismatch between user agent and MSL store, user is NOT logged in according to user agent, but its credentials are found in MSL store. We can not renew its credentials, log user out!"

    .line 758
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iput-boolean v4, p0, Lo/np;->o:Z

    .line 760
    iget-object v0, p0, Lo/np;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Z)V

    return v2

    :cond_2
    const-string v2, "handleNotAuthorized:: User is currently logged in, we will try to refresh his credentials, since we received that he/she is not authorized."

    .line 765
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0, v0}, Lo/np;->a(Lo/zE$Activity;)Lo/zX;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/np;->c(Lo/zX;)V

    .line 767
    iget v0, p0, Lo/np;->u:I

    add-int/2addr v0, v4

    iput v0, p0, Lo/np;->u:I

    .line 768
    sget-object v0, Lo/np;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v4

    :cond_3
    :goto_0
    return v2
.end method

.method protected ag()V
    .locals 2

    .line 698
    invoke-direct {p0}, Lo/np;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lo/np;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method protected ah()Z
    .locals 1

    .line 687
    invoke-virtual {p0}, Lo/np;->Z()Lo/zX;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 692
    :cond_0
    invoke-interface {v0}, Lo/zX;->O_()Lo/aie;

    move-result-object v0

    .line 693
    instance-of v0, v0, Lo/ahY;

    return v0
.end method

.method protected am()Z
    .locals 5

    .line 916
    invoke-virtual {p0}, Lo/np;->ah()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "nf_volleyrequest"

    if-eqz v0, :cond_0

    const-string v0, "handleNotAuthorized:: Already tried to relogin using cookies..."

    .line 917
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    sget-object v0, Lo/np;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    .line 922
    :cond_0
    iget-object v0, p0, Lo/np;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "handleNotAuthorized:: User is NOT currently logged in, pass this failure regular way..."

    .line 923
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 927
    :cond_1
    iget-object v0, p0, Lo/np;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->h()Lo/ze;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 928
    invoke-interface {v0}, Lo/ze;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0}, Lo/ze;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0}, Lo/ze;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "handleNotAuthorized:: Mismatch between user agent and MSL store, user is logged in according to user agent. We have cookies, just retry"

    .line 935
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget v1, p0, Lo/np;->u:I

    add-int/2addr v1, v3

    iput v1, p0, Lo/np;->u:I

    .line 937
    invoke-virtual {p0, v0}, Lo/np;->a(Lo/ze;)Lo/zX;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/np;->c(Lo/zX;)V

    .line 938
    sget-object v0, Lo/np;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    :cond_3
    :goto_0
    const-string v0, "handleNotAuthorized:: Missing cookies, force user out... This should NOT happen here!"

    .line 929
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iput-boolean v3, p0, Lo/np;->o:Z

    .line 931
    iget-object v0, p0, Lo/np;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->f()V

    return v1
.end method

.method protected abstract b(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected b(Lcom/netflix/mediaclient/service/msl/client/MslErrorException;)V
    .locals 7

    .line 639
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->d()Lo/ahF;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "nf_volleyrequest"

    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {v0}, Lo/ahF;->c()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 642
    invoke-virtual {v0}, Lo/ahF;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v0}, Lo/ahF;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0}, Lo/ahF;->c()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$ResponseCode;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x3

    invoke-virtual {v0}, Lo/ahF;->c()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/msl/MslConstants$ResponseCode;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "API request failed with MSL error exception, error message: %s, error code %d, error code: %s %d"

    invoke-static {v2, p1, v1, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    invoke-virtual {v0}, Lo/ahF;->c()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/np;->a(Lcom/netflix/msl/MslConstants$ResponseCode;)V

    goto :goto_0

    :cond_0
    new-array v3, v5, [Ljava/lang/Object;

    .line 645
    invoke-virtual {v0}, Lo/ahF;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v0}, Lo/ahF;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "API request failed with MSL error exception, error message: %s, error code %d, error code: null"

    invoke-static {v2, p1, v0, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "API request failed with MSL error exception, no error header found"

    .line 648
    invoke-static {v2, p1, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/np;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/volley/Request;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/np;->r:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lo/np;->e:I

    return-void
.end method

.method public abstract b(Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation
.end method

.method protected c(Ljava/util/Map;)Lo/zE$Application;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/zE$Application;"
        }
    .end annotation

    .line 944
    invoke-virtual {p0}, Lo/np;->ab()Ljava/util/Map;

    move-result-object v0

    .line 945
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 946
    invoke-virtual {p0}, Lo/np;->M()Ljava/lang/String;

    move-result-object v6

    .line 947
    invoke-virtual {p0}, Lo/np;->Y()Ljava/lang/String;

    move-result-object v5

    .line 948
    invoke-virtual {p0}, Lo/np;->g()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GET"

    goto :goto_0

    :cond_0
    const-string v0, "POST"

    :goto_0
    move-object v3, v0

    .line 950
    new-instance v0, Lo/zE$Application;

    invoke-virtual {p0}, Lo/np;->Q()Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lo/zE$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "nf_volleyrequest"

    invoke-static {v1, p1}, Lo/ChooserTargetService;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected c(Ljava/lang/Exception;)V
    .locals 2

    .line 658
    invoke-virtual {p0, p1}, Lo/np;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 661
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-nez v0, :cond_1

    .line 665
    invoke-virtual {p0}, Lo/np;->ag()V

    .line 666
    instance-of v0, p1, Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_0

    .line 667
    check-cast p1, Lcom/android/volley/VolleyError;

    throw p1

    .line 670
    :cond_0
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 662
    :cond_1
    invoke-virtual {p0}, Lo/np;->ag()V

    .line 663
    check-cast p1, Lcom/android/volley/VolleyError;

    throw p1

    :cond_2
    const-string v0, "nf_volleyrequest"

    const-string v1, "Not authorized handled ny implementation"

    .line 659
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    check-cast p1, Lcom/android/volley/VolleyError;

    throw p1
.end method

.method public c(Lo/mB;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lo/np;->d:Lo/mB;

    return-void
.end method

.method public c(Lo/zE;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lo/np;->f:Lo/zE;

    return-void
.end method

.method public c(Lo/zX;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lo/np;->k:Lo/zX;

    return-void
.end method

.method public c(Lo/zz;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lo/np;->j:Lo/zz;

    return-void
.end method

.method protected final d(Lo/aie;)Ljava/lang/Boolean;
    .locals 0

    if-eqz p1, :cond_0

    .line 604
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 606
    :cond_0
    invoke-virtual {p0}, Lo/np;->ac()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/netflix/msl/MslException;)Ljava/lang/Throwable;
    .locals 4

    .line 825
    invoke-static {p1}, Lo/np;->a(Lcom/netflix/msl/MslException;)Ljava/lang/Throwable;

    move-result-object p1

    .line 826
    instance-of v0, p1, Lcom/netflix/msl/MslCryptoException;

    if-eqz v0, :cond_0

    .line 827
    move-object v0, p1

    check-cast v0, Lcom/netflix/msl/MslCryptoException;

    .line 828
    invoke-virtual {v0}, Lcom/netflix/msl/MslCryptoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encryption envelope key ID does not match crypto context key ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_volleyrequest"

    const-string v1, "ESN mismatch:: current ESN is not same one from master token, clear MSL store and try to recover"

    .line 829
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lo/np;->d:Lo/mB;

    invoke-virtual {v0}, Lo/mB;->h()V

    const/4 v0, 0x1

    .line 831
    iput-boolean v0, p0, Lo/np;->o:Z

    .line 832
    iget-object v0, p0, Lo/np;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Z)V

    .line 833
    iget-object v0, p0, Lo/np;->b:Lo/zF;

    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    invoke-interface {v1}, Lo/bO;->e()Lo/hT;

    move-result-object v1

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->cL:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {v1, v2, v3}, Lo/hT;->c(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lo/hR;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/zF;->d(Lo/hR;)Z

    :cond_0
    return-object p1
.end method

.method public d(Lcom/android/volley/VolleyError;)V
    .locals 6

    .line 253
    iget-object v0, p1, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    const-string v1, "nf_volleyrequest"

    if-eqz v0, :cond_0

    .line 254
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

    .line 257
    :cond_0
    iget-boolean v0, p0, Lo/np;->y:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 258
    iput-boolean v3, p0, Lo/np;->y:Z

    .line 259
    iget-object v0, p0, Lo/np;->f:Lo/zE;

    if-eqz v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "Retry request %s"

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 261
    iget-object p1, p0, Lo/np;->f:Lo/zE;

    invoke-interface {p1, p0}, Lo/zE;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void

    .line 266
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lo/np;->m:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lo/np;->m:J

    .line 267
    iget-object v0, p0, Lo/np;->j:Lo/zz;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cd:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, v0, v1}, Lo/aeK;->b(Lcom/android/volley/VolleyError;Lo/zz;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0}, Lo/np;->d(Lcom/netflix/mediaclient/android/app/NetflixStatus;)V

    .line 271
    iget-object v1, p0, Lo/np;->d:Lo/mB;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo/mB;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 273
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    .line 274
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :cond_3
    invoke-virtual {p0, v0}, Lo/np;->b(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/NetflixStatus;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cC:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_1

    const-string p1, "nf_volleyrequest"

    const-string v0, "processStatus:: MSL_USERAUTH_ENTITY_MISMATCH, clear ESN depended saved data..."

    .line 293
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p1, p0, Lo/np;->g:Lo/cz;

    invoke-interface {p1}, Lo/cz;->ap()V

    :cond_1
    return-void
.end method

.method protected abstract d(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public d(Lo/cz;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lo/np;->g:Lo/cz;

    .line 330
    invoke-virtual {p0}, Lo/np;->P()V

    return-void
.end method

.method protected e(Ljava/lang/String;Lo/aie;)Lo/zX;
    .locals 1

    .line 787
    new-instance v0, Lo/np$3;

    invoke-direct {v0, p0, p1, p2}, Lo/np$3;-><init>(Lo/np;Ljava/lang/String;Lo/aie;)V

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 448
    iput p1, p0, Lo/np;->l:I

    return-void
.end method

.method protected e(Lo/agE;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 704
    invoke-virtual {p1}, Lo/agE;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_volleyrequest"

    const-string v4, "checkForErrors ApiHttpWrapper status: %s, "

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 705
    invoke-virtual {p1}, Lo/agE;->a()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 706
    invoke-virtual {p1}, Lo/agE;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lo/np;->k()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%d bad url? %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 707
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aG:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    throw v0
.end method

.method public e(Lo/zF;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lo/np;->b:Lo/zF;

    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 3

    .line 180
    iget-object v0, p0, Lo/np;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string p1, "nf_volleyrequest"

    const-string v0, "Reusing existing request..."

    .line 181
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    iput-object p1, p0, Lo/np;->r:Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lo/np;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 186
    iput v0, p0, Lo/np;->e:I

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lo/np;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/np;->h:Ljava/lang/String;

    .line 191
    iget-object p1, p0, Lo/np;->h:Ljava/lang/String;

    const-string v2, "/msl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 192
    iget-object p1, p0, Lo/np;->h:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/np;->h:Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    .line 195
    iput v0, p0, Lo/np;->e:I

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lo/np;->e:I

    :goto_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lo/np;->r:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 221
    iget v0, p0, Lo/np;->e:I

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

    .line 353
    invoke-super {p0}, Lcom/android/volley/Request;->q()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne v0, v1, :cond_1

    .line 355
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/np;->p:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.request.uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-direct {p0, v0}, Lo/np;->a(Ljava/util/Map;)V

    .line 363
    iget-object v1, p0, Lo/np;->g:Lo/cz;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/np;->g:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lo/np;->g:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/RaEvent;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 367
    :cond_2
    invoke-virtual {p0}, Lo/np;->A()Lo/FragmentController;

    move-result-object v1

    const-string v2, "X-Netflix.Request.Attempt"

    if-eqz v1, :cond_3

    .line 369
    invoke-interface {v1}, Lo/FragmentController;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v1, "1"

    .line 371
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :goto_0
    invoke-direct {p0, v0}, Lo/np;->e(Ljava/util/Map;)V

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

    .line 624
    invoke-super {p0}, Lcom/android/volley/Request;->u()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Lo/adY;

    invoke-direct {v0}, Lo/adY;-><init>()V

    goto :goto_0

    .line 628
    :cond_0
    instance-of v1, v0, Lo/aec;

    if-nez v1, :cond_1

    .line 629
    new-instance v1, Lo/adY;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lo/adY;-><init>(I)V

    .line 630
    invoke-interface {v1, v0}, Lo/aec;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/msl; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/np;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
