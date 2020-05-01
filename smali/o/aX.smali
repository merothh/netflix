.class public Lo/aX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aC;


# instance fields
.field private final d:Lo/aW;


# direct methods
.method public constructor <init>(Lo/aW;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/aX;->d:Lo/aW;

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    .line 72
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    new-instance v1, Lo/aX$5;

    invoke-direct {v1, p0, p2, p1, p3}, Lo/aX$5;-><init>(Lo/aX;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lo/zG;->b(Ljava/lang/String;Lo/zU;)Z

    .line 84
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 9

    .line 178
    iget-object v0, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v0}, Lo/aW;->b()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v1}, Lo/aW;->e()Z

    move-result v1

    .line 180
    iget-object v2, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v2}, Lo/aW;->c()Z

    move-result v2

    .line 181
    iget-object v3, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v3}, Lo/aW;->d()J

    move-result-wide v3

    long-to-int v4, v3

    .line 184
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v3

    invoke-virtual {v3}, Lo/Am;->l()Lo/zN;

    move-result-object v3

    .line 185
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "NetflixComWatchHandler"

    if-eqz v5, :cond_1

    new-array v0, v6, [Ljava/lang/Object;

    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "Starting local playback setStopRemotePlayback=%b"

    invoke-static {v8, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v3}, Lo/zN;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Disconnecting current target."

    .line 188
    invoke-static {v8, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 189
    invoke-interface {v3, v0, v7}, Lo/zN;->e(Ljava/lang/String;I)V

    .line 190
    invoke-interface {v3, v0}, Lo/zN;->b(Ljava/lang/String;)V

    .line 192
    :cond_0
    invoke-static {p1, p2, p3, p4, v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    const-string v0, "MDX is null, go local playback"

    .line 200
    invoke-static {v8, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v2}, Lo/aW;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lo/zN;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    .line 206
    iget-object v0, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v0}, Lo/aW;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "setDialIpAsCurrentTarget %s %s %b"

    invoke-static {v8, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 208
    :cond_3
    invoke-interface {v3, v0}, Lo/zN;->e(Ljava/lang/String;)Z

    move-result v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v7

    .line 209
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "setDialUuidAsCurrentTarget %s %b"

    invoke-static {v8, v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    const-string v0, "MDX exist, check if target is available"

    .line 211
    invoke-static {v8, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    .line 213
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 214
    invoke-static {p1, p2, p3, p4, v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    return-void

    :cond_4
    const-string v0, "MDX does not know target dial UUID, go local playback"

    .line 217
    invoke-static {v8, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_1
    invoke-static {p1, p2, p3, p4, v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    :goto_2
    return-void
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 2

    .line 91
    new-instance v0, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1
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

    const/4 v0, 0x1

    .line 58
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 59
    invoke-direct {p0, p2, p1, p3}, Lo/aX;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 60
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method protected b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 139
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    iget-object v0, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v0}, Lo/aW;->g()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v6, Lo/aX$Activity;

    invoke-direct {v6, p0, p4, p1, p2}, Lo/aX$Activity;-><init>(Lo/aX;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    move-object v2, p3

    invoke-interface/range {v1 .. v6}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    goto :goto_0

    .line 141
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v1}, Lo/aW;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lo/aX$Activity;

    invoke-direct {v3, p0, p4, p1, p2}, Lo/aX$Activity;-><init>(Lo/aX;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    invoke-interface {v0, p3, v1, v2, v3}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lo/aX$Activity;

    invoke-direct {v2, p0, p4, p1, p2}, Lo/aX$Activity;-><init>(Lo/aX;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 145
    invoke-interface {v0, p3, v1, v2}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 10

    .line 152
    iget-object v0, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v0}, Lo/aW;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-interface {p3}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/aX;->d:Lo/aW;

    invoke-virtual {v2}, Lo/aW;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lo/aX$3;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lo/aX$3;-><init>(Lo/aX;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/AK;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    invoke-interface {v0, p2, v1, v2, v9}, Lo/zG;->d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lo/aX;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :goto_0
    return-void
.end method
