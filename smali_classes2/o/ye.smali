.class public Lo/ye;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/xZ;


# instance fields
.field protected final a:Lo/H;

.field protected b:Lo/FragmentHostCallback;

.field private c:Lo/FragmentHostCallback;

.field private d:Ljava/io/File;

.field protected final e:Landroid/content/Context;

.field private f:Lo/yh;

.field private volatile g:Lcom/netflix/mediaclient/util/gfx/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/H;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 112
    iput-object p1, p0, Lo/ye;->e:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lo/ye;->a:Lo/H;

    return-void
.end method

.method private a()V
    .locals 3

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/ye;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "downloads"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ye;->d:Ljava/io/File;

    .line 142
    iget-object v0, p0, Lo/ye;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lo/ye;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    :cond_0
    new-instance v0, Lo/yh;

    iget-object v1, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    invoke-virtual {v1}, Lo/FragmentHostCallback;->c()Lo/ContextImpl;

    move-result-object v1

    check-cast v1, Lo/FragmentTransaction;

    invoke-direct {v0, v1}, Lo/yh;-><init>(Lo/FragmentTransaction;)V

    iput-object v0, p0, Lo/ye;->f:Lo/yh;

    return-void
.end method

.method private b(Lo/np;)Z
    .locals 5

    .line 657
    invoke-virtual {p0}, Lo/ye;->getMSLClient()Lo/zE;

    move-result-object v0

    check-cast v0, Lo/bV;

    invoke-virtual {v0}, Lo/bV;->isReady()Z

    move-result v0

    const-string v1, "nf_service_resourcefetcher"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "MSL agent is not ready, droping request"

    .line 658
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 666
    :cond_0
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    invoke-interface {v0}, Lo/dc;->m()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 668
    invoke-static {p1}, Lo/ye;->e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "DRM resources suspended, unable to add MSL request %s to queue..."

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 669
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->ad:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p1, v0}, Lo/np;->d(Lcom/android/volley/VolleyError;)V

    return v2

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 673
    invoke-static {p1}, Lo/ye;->e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v2, "Adding MSL request %s to queue..."

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 674
    invoke-virtual {p0}, Lo/ye;->getMSLClient()Lo/zE;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/zE;->e(Lo/zW;)V

    .line 675
    iget-object v0, p0, Lo/ye;->c:Lo/FragmentHostCallback;

    invoke-virtual {v0, p1}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v3
.end method

.method private b(Lo/zt;)Z
    .locals 4

    .line 578
    instance-of v0, p1, Lo/zn;

    const/4 v1, 0x1

    const-string v2, "nf_service_resourcefetcher"

    if-eqz v0, :cond_0

    const-string v0, "FalkorVolleyWebClientRequest request, check for profile override!"

    .line 579
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object v0, p1

    check-cast v0, Lo/zn;

    invoke-direct {p0, v0}, Lo/ye;->c(Lo/zn;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "FalkorVolleyWebClientRequest:: UserCredentialRegistry injected by profile ID override!"

    .line 581
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 586
    :cond_0
    invoke-virtual {p1}, Lo/zt;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/ye;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/ye;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->h()Lo/ze;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 587
    new-instance v0, Lo/zi;

    invoke-virtual {p0}, Lo/ye;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->h()Lo/ze;

    move-result-object v3

    invoke-direct {v0, v3}, Lo/zi;-><init>(Lo/ze;)V

    invoke-virtual {p1, v0}, Lo/zt;->d(Lo/ze;)V

    const-string p1, "Default UserCredentialRegistry injected by profile ID override!"

    .line 588
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p1, "UserCredentialRegistry existed!"

    .line 591
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private c(Lo/zn;)Z
    .locals 5

    .line 605
    invoke-virtual {p1}, Lo/zn;->Q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_service_resourcefetcher"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/ye;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p0}, Lo/ye;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-virtual {p1}, Lo/zn;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Ljava/lang/String;)Lo/ze;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorization tokens are NOT found for profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/zn;->Q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v3, "Injected user credential repository for overridden profile GUID."

    .line 612
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p1, v0}, Lo/zn;->d(Lo/ze;)V

    return v2

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 618
    invoke-virtual {p1}, Lo/zn;->Q()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Profile GUID not found %b"

    invoke-static {v1, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3
.end method

.method private c(Lo/zt;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 536
    invoke-static {p1}, Lo/ye;->e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_service_resourcefetcher"

    const-string v4, "Adding direct request %s to queue..."

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 538
    invoke-direct {p0, p1}, Lo/ye;->b(Lo/zt;)Z

    .line 540
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->ao()Lo/afR;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/zt;->d(Lo/afR;)V

    .line 542
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->am()I

    move-result v1

    new-array v4, v0, [Ljava/lang/Object;

    .line 543
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "Setting default timeout value for data request to %d ms"

    invoke-static {v2, v5, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 544
    invoke-static {v1}, Lo/aeM;->b(I)Lo/FragmentController;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/zt;->d(Lo/FragmentController;)V

    .line 545
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/zt;->b(Lo/cz;)V

    .line 547
    invoke-direct {p0, p1}, Lo/ye;->d(Lo/zt;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 551
    :cond_0
    iget-object v1, p0, Lo/ye;->c:Lo/FragmentHostCallback;

    invoke-virtual {v1, p1}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v0
.end method

.method private synthetic d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/CompletableEmitter;)V
    .locals 1

    .line 752
    new-instance v0, Lo/ye$4;

    invoke-direct {v0, p0, p3}, Lo/ye$4;-><init>(Lo/ye;Lio/reactivex/CompletableEmitter;)V

    .line 769
    invoke-virtual {p0, p1, p2, v0}, Lo/ye;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/yf;)V

    return-void
.end method

.method private d(Lo/zt;)Z
    .locals 2

    .line 558
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lo/ye;->getAUIAgent()Lo/cc;

    move-result-object v1

    invoke-interface {v1}, Lo/cc;->d()Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 560
    instance-of v1, p1, Lo/bZ;

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {p0}, Lo/ye;->getAUIAgent()Lo/cc;

    move-result-object v0

    invoke-interface {v0}, Lo/cc;->a()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/zt;->b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/zt;->b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "nf_service_resourcefetcher"

    const-string v0, "ApiEndpointRegistry is not available!"

    .line 565
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private static e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Ljava/lang/String;
    .locals 2

    .line 625
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 627
    :cond_0
    instance-of v0, p0, Lo/ng;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 628
    check-cast p0, Lo/ng;

    invoke-virtual {p0}, Lo/ng;->f()Ljava/lang/Object;

    move-result-object p0

    .line 629
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 630
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 632
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 636
    :cond_3
    instance-of v0, p0, Lo/zt;

    if-eqz v0, :cond_5

    .line 637
    check-cast p0, Lo/zt;

    invoke-virtual {p0}, Lo/zt;->f()Ljava/lang/Object;

    move-result-object p0

    .line 638
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 639
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method private e()V
    .locals 8

    .line 162
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->aj()I

    move-result v4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 164
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_service_resourcefetcher"

    const-string v2, "Creating MSL Volley RequestQueue with threadPoolsize of %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    iget-object v1, p0, Lo/ye;->a:Lo/H;

    new-instance v2, Lo/MediaRouteActionProvider;

    invoke-direct {v2}, Lo/MediaRouteActionProvider;-><init>()V

    new-instance v3, Lo/nv;

    iget-object v0, p0, Lo/ye;->e:Landroid/content/Context;

    new-instance v5, Lo/ns;

    iget-object v6, p0, Lo/ye;->a:Lo/H;

    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v7

    invoke-interface {v7}, Lo/cz;->am()I

    move-result v7

    invoke-direct {v5, v0, v6, v7}, Lo/ns;-><init>(Landroid/content/Context;Lo/H;I)V

    invoke-direct {v3, v0, v5}, Lo/nv;-><init>(Landroid/content/Context;Lo/ListActivity;)V

    const/4 v5, 0x1

    const-string v6, "msl"

    invoke-interface/range {v1 .. v6}, Lo/H;->c(Lo/ContextImpl;Lo/DownloadManager;IZLjava/lang/String;)Lo/FragmentHostCallback;

    move-result-object v0

    iput-object v0, p0, Lo/ye;->c:Lo/FragmentHostCallback;

    .line 168
    iget-object v0, p0, Lo/ye;->c:Lo/FragmentHostCallback;

    invoke-virtual {v0}, Lo/FragmentHostCallback;->a()V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/SingleEmitter;)V
    .locals 1

    .line 691
    new-instance v0, Lo/ye$3;

    invoke-direct {v0, p0, p3}, Lo/ye$3;-><init>(Lo/ye;Lio/reactivex/SingleEmitter;)V

    .line 719
    invoke-virtual {p0, p1, p2, v0}, Lo/ye;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/yf;)V

    return-void
.end method

.method static synthetic e(Lo/ye;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/ye;->d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method static synthetic e(Lo/ye;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/ye;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method private j()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 11

    const-string v0, "nf_service_resourcefetcher"

    const-string v1, "ResourceFetcher creating ImageLoader"

    .line 218
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    if-nez v1, :cond_0

    const-string v1, "Attempting to create an ImageLoader with a null RequestQueue"

    .line 221
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->ak()J

    move-result-wide v5

    .line 227
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->ai()I

    move-result v4

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 228
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    const/4 v3, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v3

    const-string v3, "Received request to create new ImageLoader with socketTimeout = %d and minimumTtl = %d ms"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 230
    invoke-static {}, Lo/dN;->g()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 247
    new-instance v0, Lo/afu;

    iget-object v3, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    iget-object v7, p0, Lo/ye;->d:Ljava/io/File;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/afu;-><init>(Lo/FragmentHostCallback;IJLjava/io/File;)V

    return-object v0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->al()I

    move-result v8

    .line 235
    iget-object v5, p0, Lo/ye;->a:Lo/H;

    new-instance v6, Lo/MediaRouteActionProvider;

    invoke-direct {v6}, Lo/MediaRouteActionProvider;-><init>()V

    new-instance v7, Lo/nv;

    iget-object v0, p0, Lo/ye;->e:Landroid/content/Context;

    .line 237
    invoke-virtual {p0}, Lo/ye;->d()Lo/ListActivity;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lo/nv;-><init>(Landroid/content/Context;Lo/ListActivity;)V

    const/4 v9, 0x1

    const-string v10, "frescoRequestQueue"

    .line 235
    invoke-interface/range {v5 .. v10}, Lo/H;->c(Lo/ContextImpl;Lo/DownloadManager;IZLjava/lang/String;)Lo/FragmentHostCallback;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lo/FragmentHostCallback;->a()V

    .line 242
    sget-object v1, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    iget-object v2, p0, Lo/ye;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v4}, Lo/aeY$StateListAnimator;->d(Landroid/content/Context;Lo/FragmentHostCallback;I)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    return-object v0

    .line 232
    :cond_2
    sget-object v0, Lo/afk;->d:Lo/afk$ActionBar;

    iget-object v1, p0, Lo/ye;->e:Landroid/content/Context;

    iget-object v2, p0, Lo/ye;->a:Lo/H;

    invoke-virtual {v0, v1, v2}, Lo/afk$ActionBar;->c(Landroid/content/Context;Lo/H;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/yf;)V
    .locals 9

    .line 362
    iget-object v0, p0, Lo/ye;->f:Lo/yh;

    invoke-static {p1}, Lo/afT;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/yh;->a(Ljava/lang/String;)Lo/yh$Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 366
    invoke-virtual {v0}, Lo/yh$Activity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lo/yh$Activity;->c()J

    move-result-wide v4

    invoke-virtual {v0}, Lo/yh$Activity;->e()J

    move-result-wide v6

    sget-object v8, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    move-object v0, p3

    move-object v1, p1

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, v8

    invoke-interface/range {v0 .. v7}, Lo/yf;->a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 370
    :cond_0
    new-instance v6, Lo/xV;

    new-instance v3, Lo/ye$1;

    invoke-direct {v3, p0, p3, p1}, Lo/ye$1;-><init>(Lo/ye;Lo/yf;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->ai()I

    move-result v4

    iget-object v5, p0, Lo/ye;->f:Lo/yh;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lo/xV;-><init>(Ljava/lang/String;Lo/yf;Lo/FragmentManagerNonConfig$Activity;ILo/yh;)V

    .line 381
    iget-object v0, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    invoke-virtual {v0, v6}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "nf_service_resourcefetcher"

    const-string v0, "Request is null!"

    .line 511
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 512
    monitor-exit p0

    return p1

    .line 515
    :cond_0
    :try_start_1
    instance-of v0, p1, Lo/np;

    if-eqz v0, :cond_1

    .line 517
    check-cast p1, Lo/np;

    invoke-direct {p0, p1}, Lo/ye;->b(Lo/np;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 519
    :cond_1
    :try_start_2
    instance-of v0, p1, Lo/zt;

    if-eqz v0, :cond_2

    .line 521
    check-cast p1, Lo/zt;

    invoke-direct {p0, p1}, Lo/ye;->c(Lo/zt;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 525
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported implementation of NetflixDataRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "resourceFetcher"

    return-object v0
.end method

.method protected b()V
    .locals 7

    .line 152
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->al()I

    move-result v4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_service_resourcefetcher"

    const-string v2, "Creating Volley RequestQueue with threadPoolsize of %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    iget-object v1, p0, Lo/ye;->a:Lo/H;

    invoke-virtual {p0}, Lo/ye;->c()Lo/FragmentTransaction;

    move-result-object v2

    new-instance v3, Lo/nv;

    iget-object v0, p0, Lo/ye;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lo/ye;->d()Lo/ListActivity;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lo/nv;-><init>(Landroid/content/Context;Lo/ListActivity;)V

    const/4 v5, 0x1

    const-string v6, "resources"

    invoke-interface/range {v1 .. v6}, Lo/H;->c(Lo/ContextImpl;Lo/DownloadManager;IZLjava/lang/String;)Lo/FragmentHostCallback;

    move-result-object v0

    iput-object v0, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    .line 157
    iget-object v0, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    invoke-virtual {v0}, Lo/FragmentHostCallback;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 493
    iget-object v0, p0, Lo/ye;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/ye;->d:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/api/res/AssetType;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 690
    new-instance v0, Lo/yc;

    invoke-direct {v0, p0, p1, p2}, Lo/yc;-><init>(Lo/ye;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public c()Lo/FragmentTransaction;
    .locals 5

    .line 484
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/ye;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lo/ye;->e:Landroid/content/Context;

    invoke-static {v1}, Lo/aed;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "nf_service_resourcefetcher"

    const-string v4, "Creating new Volley DiskBasedCache, location: %s,  max size: %d bytes"

    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 487
    new-instance v2, Lo/FragmentTransaction;

    invoke-direct {v2, v0, v1}, Lo/FragmentTransaction;-><init>(Ljava/io/File;I)V

    return-object v2
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/android/volley/Request$Priority;Lo/yf;)V
    .locals 6

    .line 291
    new-instance p2, Lo/xX;

    new-instance v3, Lo/ye$2;

    invoke-direct {v3, p0, p4, p1}, Lo/ye$2;-><init>(Lo/ye;Lo/yf;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->ai()I

    move-result v4

    move-object v0, p2

    move-object v1, p1

    move-object v2, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/xX;-><init>(Ljava/lang/String;Lo/yf;Lo/FragmentManagerNonConfig$Activity;ILcom/android/volley/Request$Priority;)V

    .line 305
    iget-object p1, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    invoke-virtual {p1, p2}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Completable;
    .locals 1

    .line 751
    new-instance v0, Lo/yg;

    invoke-direct {v0, p0, p1, p2}, Lo/yg;-><init>(Lo/ye;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method protected d()Lo/ListActivity;
    .locals 2

    const-string v0, "nf_service_resourcefetcher"

    const-string v1, "Create resource Http Stack"

    .line 475
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v0, Lo/yd;

    iget-object v1, p0, Lo/ye;->a:Lo/H;

    invoke-direct {v0, v1}, Lo/yd;-><init>(Lo/H;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 174
    invoke-super {p0}, Lo/bV;->destroy()V

    .line 175
    iget-object v0, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    const/4 v1, 0x0

    const-string v2, "nf_service_resourcefetcher"

    if-eqz v0, :cond_0

    const-string v0, "Stopping Volley RequestQueue"

    .line 176
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    invoke-virtual {v0}, Lo/FragmentHostCallback;->d()V

    .line 178
    iput-object v1, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    .line 180
    :cond_0
    iget-object v0, p0, Lo/ye;->c:Lo/FragmentHostCallback;

    if-eqz v0, :cond_1

    const-string v0, "Stopping MSL Volley RequestQueue"

    .line 181
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lo/ye;->c:Lo/FragmentHostCallback;

    invoke-virtual {v0}, Lo/FragmentHostCallback;->d()V

    .line 183
    iput-object v1, p0, Lo/ye;->c:Lo/FragmentHostCallback;

    .line 185
    :cond_1
    invoke-static {}, Lo/zo;->e()V

    return-void
.end method

.method protected doInit()V
    .locals 2

    const-string v0, "nf_service_resourcefetcher"

    const-string v1, "ResourceFetcher starting doInit."

    .line 124
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lo/ye;->e:Landroid/content/Context;

    invoke-static {v0}, Lo/zo;->e(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p0}, Lo/ye;->b()V

    .line 128
    invoke-direct {p0}, Lo/ye;->e()V

    .line 129
    invoke-direct {p0}, Lo/ye;->a()V

    .line 132
    invoke-virtual {p0}, Lo/ye;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 134
    const-class v0, Lo/xZ;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo/TextViewMetrics;->d(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 136
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/ye;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/android/volley/Request$Priority;Lo/yf;)V
    .locals 7

    .line 334
    new-instance p2, Lo/yb;

    new-instance v3, Lo/ye$5;

    invoke-direct {v3, p0, p4, p1}, Lo/ye$5;-><init>(Lo/ye;Lo/yf;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lo/ye;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->ai()I

    move-result v4

    iget-object v6, p0, Lo/ye;->d:Ljava/io/File;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lo/yb;-><init>(Ljava/lang/String;Lo/yf;Lo/FragmentManagerNonConfig$Activity;ILcom/android/volley/Request$Priority;Ljava/io/File;)V

    .line 346
    iget-object p1, p0, Lo/ye;->b:Lo/FragmentHostCallback;

    invoke-virtual {p1, p2}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/yf;)V
    .locals 1

    .line 265
    sget-object v0, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lo/ye;->c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/android/volley/Request$Priority;Lo/yf;)V

    return-void
.end method

.method public getAgentLoadEventName()Lcom/netflix/mediaclient/service/logging/perf/Sessions;
    .locals 1

    .line 686
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->j:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    return-object v0
.end method

.method public getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 3

    .line 194
    iget-object v0, p0, Lo/ye;->g:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    if-nez v0, :cond_2

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lo/ye;->g:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    if-nez v0, :cond_1

    .line 197
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    :try_start_1
    invoke-direct {p0}, Lo/ye;->j()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    const-class v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lo/TextViewMetrics;->d(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 203
    iput-object v0, p0, Lo/ye;->g:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 205
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 207
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 209
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/ye;->g:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 0

    .line 681
    invoke-static {}, Lo/zo;->b()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/ye;->g:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lo/ye;->g:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->d(I)V

    :cond_0
    return-void
.end method
