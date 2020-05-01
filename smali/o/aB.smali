.class Lo/aB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aC;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    new-instance v1, Lo/aB$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lo/aB$2;-><init>(Lo/aB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lo/zG;->b(Ljava/lang/String;Lo/zU;)Z

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-interface {p2}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {p2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_0
    return-void
.end method

.method private d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 102
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v5, Lo/aB$Application;

    invoke-direct {v5, p0, p4, p1}, Lo/aB$Application;-><init>(Lo/aB;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v1, p3

    invoke-interface/range {v0 .. v5}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lo/aB$Application;

    invoke-direct {v2, p0, p4, p1}, Lo/aB$Application;-><init>(Lo/aB;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-interface {p2, p3, v0, v1, v2}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lo/aB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lo/aB;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lo/aB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lo/aB;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 1

    .line 55
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;-><init>()V

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;"
        }
    .end annotation

    const-string v0, "NetflixComDownloadHandler"

    const-string v1, "Starting download activity"

    .line 40
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 42
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 44
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0, p2, p1, p3}, Lo/aB;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1

    .line 49
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method
