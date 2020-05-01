.class Lo/ny;
.super Lo/zt;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ny$Application;,
        Lo/ny$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zt<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Lo/ny$StateListAnimator;

.field private e:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILo/ny$StateListAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;",
            ">;I",
            "Lo/ny$StateListAnimator;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-static {p2}, Lo/ny;->a(Ljava/util/List;)I

    move-result v0

    invoke-direct {p0, v0}, Lo/zt;-><init>(I)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ny;->g:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lo/ny;->e:Ljava/lang/String;

    iput-object p1, p0, Lo/ny;->b:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lo/ny;->d:Lo/ny$StateListAnimator;

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;

    .line 52
    sget-object v0, Lo/ny$3;->e:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->d()Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, p4, :cond_2

    const/4 p4, 0x2

    if-eq v0, p4, :cond_1

    const/4 p4, 0x3

    if-eq v0, p4, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, p0, Lo/ny;->h:[B

    goto :goto_0

    .line 57
    :cond_1
    iget-object p4, p0, Lo/ny;->e:Ljava/lang/String;

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p4

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/ny;->e:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_2
    iget-object p4, p0, Lo/ny;->g:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->e()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int/2addr p3, p4

    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lo/ny;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "pulse"

    invoke-virtual {p2, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ny;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;",
            ">;)I"
        }
    .end annotation

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;

    .line 70
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->d()Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;->BODY:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()Lo/FragmentController;
    .locals 4

    .line 144
    new-instance v0, Lo/ContentProviderHolder;

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lo/ContentProviderHolder;-><init>(IIF)V

    return-object v0
.end method

.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 130
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lo/ny;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 0

    const-string p1, ""

    .line 79
    invoke-virtual {p0, p1}, Lo/ny;->j(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p1, p0, Lo/ny;->e:Ljava/lang/String;

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/ny;->g(Ljava/lang/String;)V

    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "OK"

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 106
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->c:[B

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v2, "X-Ftl-Probe-Data"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v3, "X-Ftl-Error"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    .line 113
    :goto_0
    iget-object v3, p0, Lo/ny;->d:Lo/ny$StateListAnimator;

    new-instance v4, Lo/ny$Application;

    iget-object v5, p0, Lo/ny;->b:Ljava/lang/String;

    iget-object p1, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length p1, p1

    invoke-direct {v4, v5, p1, v1, v2}, Lo/ny$Application;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lo/ny$StateListAnimator;->d(Lo/ny$Application;)V

    :cond_1
    const-string p1, "OK"

    .line 115
    invoke-static {p1, v0}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Ljava/util/Map;
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

    .line 95
    :try_start_0
    invoke-super {p0}, Lo/zt;->q()Ljava/util/Map;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lo/ny;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_probe"

    const-string v3, "unable to use Netflix headers"

    .line 99
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    iget-object v0, p0, Lo/ny;->g:Ljava/util/Map;

    return-object v0
.end method

.method public v()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lo/ny;->h:[B

    return-object v0
.end method
