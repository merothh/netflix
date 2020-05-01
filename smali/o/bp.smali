.class Lo/bp;
.super Lo/bc;
.source ""


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lo/bc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 82
    iget-object v0, p0, Lo/bp;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 83
    invoke-static {p2}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    invoke-virtual {p0}, Lo/bp;->c()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v5

    invoke-virtual {p0}, Lo/bp;->d()Ljava/lang/String;

    move-result-object v6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":tinyUrlEp"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v3, ""

    move-object v2, p1

    .line 82
    invoke-static/range {v0 .. v7}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 76
    iget-object v0, p0, Lo/bp;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 77
    invoke-static {p2}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    invoke-virtual {p0}, Lo/bp;->c()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v5

    invoke-virtual {p0}, Lo/bp;->d()Ljava/lang/String;

    move-result-object v6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":tinyUrlMov"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v3, ""

    move-object v2, p1

    .line 76
    invoke-static/range {v0 .. v7}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(Lo/aeb$StateListAnimator;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lo/bp;->d(Lo/aeb$StateListAnimator;)V

    return-void
.end method

.method static synthetic c(Lo/bp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/bp;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lo/aeb$StateListAnimator;)V
    .locals 9

    .line 52
    invoke-virtual {p1}, Lo/aeb$StateListAnimator;->a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lo/aeb$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v4

    .line 54
    iget-object v0, p0, Lo/bp;->a:Ljava/util/Map;

    invoke-static {v0}, Lo/aeb;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_0

    .line 61
    iget-object v2, p0, Lo/bp;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lo/aeb$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v0}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    invoke-virtual {p0}, Lo/bp;->c()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v6

    invoke-virtual {p0}, Lo/bp;->d()Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-static/range {v2 .. v7}, Lo/Dw;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lo/bp;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 69
    invoke-static {v0}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    .line 70
    invoke-virtual {p0}, Lo/bp;->c()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v6

    invoke-virtual {p0}, Lo/bp;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":mov"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v3, ""

    move-object v0, p1

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 67
    invoke-static/range {v0 .. v7}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/bp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/bp;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lo/bp;Lo/aeb$StateListAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/bp;->c(Lo/aeb$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 0

    .line 82
    new-instance p2, Lo/bn;

    invoke-direct {p2, p0, p1, p3}, Lo/bn;-><init>(Lo/bp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lo/bp;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 0

    .line 76
    new-instance p2, Lo/bq;

    invoke-direct {p2, p0, p1, p3}, Lo/bq;-><init>(Lo/bp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lo/bp;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 3

    const-string v0, "NflxHandler"

    const-string v1, "handleViewDetailsAction starts..."

    .line 37
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lo/bp;->a()Lo/aeb$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "handleViewDetailsAction fails, no video info found!"

    .line 41
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {v1}, Lo/aeb$StateListAnimator;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "handleViewDetailsAction ends, handling with delay."

    .line 44
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 47
    :cond_1
    invoke-virtual {v1}, Lo/aeb$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lo/bo;

    invoke-direct {v2, p0, v1}, Lo/bo;-><init>(Lo/bp;Lo/aeb$StateListAnimator;)V

    invoke-virtual {p0, v0, v2}, Lo/bp;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    return-object v0
.end method
