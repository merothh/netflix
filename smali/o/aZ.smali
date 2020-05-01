.class Lo/aZ;
.super Lo/bc;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
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

    .line 30
    invoke-direct {p0, p1, p2}, Lo/bc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic b(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/aeb$StateListAnimator;)V
    .locals 8

    .line 64
    invoke-direct {p0}, Lo/aZ;->j()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v5

    .line 65
    invoke-direct {p0}, Lo/aZ;->d()Ljava/lang/String;

    move-result-object v6

    .line 70
    iget-object v0, p0, Lo/aZ;->a:Ljava/util/Map;

    invoke-static {v0}, Lo/aeb;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string v2, ", type: "

    const-string v3, "NflxHandler"

    if-ne p1, v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Showing details for episode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", show: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lo/aeb$StateListAnimator;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p1, p0, Lo/aZ;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 76
    invoke-virtual {p3}, Lo/aeb$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v1

    new-instance p3, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v2, -0x21c

    invoke-direct {p3, v3, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 77
    invoke-static {v0, p3}, Lo/aeb;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    move-object v0, p1

    move-object v2, p2

    move-object v4, v5

    move-object v5, v6

    .line 75
    invoke-static/range {v0 .. v5}, Lo/Dw;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing details for: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p3, p0, Lo/aZ;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v2, -0x21d

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 84
    invoke-static {v0, v1}, Lo/aeb;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":mov"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v3, ""

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    .line 82
    invoke-static/range {v0 .. v7}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lo/aZ;->a:Ljava/util/Map;

    const-string v1, "msg_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lo/aZ;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/aeb$StateListAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/aZ;->b(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/aeb$StateListAnimator;)V

    return-void
.end method

.method private j()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .line 98
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->e:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 5

    const-string v0, "NflxHandler"

    const-string v1, "handleDownloadAction starts..."

    .line 50
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lo/aZ;->a()Lo/aeb$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "handleDownloadAction fails, no video info found!"

    .line 53
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lo/aeb$StateListAnimator;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "handleDownloadAction ends, handling with delay."

    .line 56
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    :cond_1
    const-string v2, "handleDownloadAction, handling."

    .line 59
    invoke-static {v0, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v1}, Lo/aeb$StateListAnimator;->a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    .line 61
    invoke-virtual {v1}, Lo/aeb$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v1}, Lo/aeb$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/aY;

    invoke-direct {v4, p0, v0, v2, v1}, Lo/aY;-><init>(Lo/aZ;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/aeb$StateListAnimator;)V

    invoke-virtual {p0, v3, v4}, Lo/aZ;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    :goto_0
    return-object v0
.end method
