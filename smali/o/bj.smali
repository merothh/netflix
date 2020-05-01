.class Lo/bj;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;
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

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1

    .line 195
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1, v0, p2, p3}, Lo/bj;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1, v0, p2, p3}, Lo/bj;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1

    :cond_0
    const-string p1, "NflxHandler"

    const-string p2, "Video ID not found, return to LOLOMO"

    .line 184
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lo/bj;->e()V

    .line 186
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method protected b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 131
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object p2, p0, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v5, Lo/bj$Activity;

    invoke-direct {v5, p0, p4, p3}, Lo/bj$Activity;-><init>(Lo/bj;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 134
    iget-object p2, p0, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lo/bj$Activity;

    invoke-direct {v2, p0, p4, p3}, Lo/bj$Activity;-><init>(Lo/bj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, v1, v0, v2}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    goto :goto_0

    .line 135
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 136
    iget-object p2, p0, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    new-instance v0, Lo/bj$Activity;

    invoke-direct {v0, p0, p4, p3}, Lo/bj$Activity;-><init>(Lo/bj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, v1, v0}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected d(Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 3

    .line 146
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NflxHandler"

    if-eqz v0, :cond_0

    const-string p2, "Starting local playback"

    .line 147
    invoke-static {v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p2, p0, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-static {p2, v0, p1, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_1

    .line 154
    :cond_0
    iget-object v0, p0, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "MDX is null, go local playback"

    .line 157
    invoke-static {v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "MDX exist, check if target is available"

    .line 160
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-interface {v0, p2}, Lo/zN;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 162
    invoke-virtual {p0}, Lo/bj;->e()V

    .line 163
    iget-object p2, p0, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {p2, v0, p1, p3, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    return-void

    :cond_2
    const-string p2, "MDX does not know target dial UUID, go local playback"

    .line 166
    invoke-static {v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    iget-object p2, p0, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-static {p2, v0, p1, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :goto_1
    return-void
.end method

.method public w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 5

    const-string v0, "NflxHandler"

    const-string v1, "handlePlayAction starts..."

    .line 51
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lo/bj;->a:Ljava/util/Map;

    const-string v2, "targetid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lo/aeb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lo/bj;->a()Lo/aeb$StateListAnimator;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "handlePlayAction fails, no video info found!"

    .line 55
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {v2}, Lo/aeb$StateListAnimator;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "handlePlayAction ends, handling with delay."

    .line 59
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    :cond_1
    const-string v3, "handlePlayAction, handling."

    .line 63
    invoke-static {v0, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v2}, Lo/aeb$StateListAnimator;->a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    .line 65
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v2, :cond_4

    .line 71
    iget-object v2, p0, Lo/bj;->a:Ljava/util/Map;

    invoke-static {v2}, Lo/aeb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "no episode id"

    .line 73
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 76
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p0, Lo/bj;->a:Ljava/util/Map;

    invoke-static {v3}, Lo/aeb;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lo/bj;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 85
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 66
    :cond_5
    :goto_0
    invoke-virtual {v2}, Lo/aeb$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/bj;->a:Ljava/util/Map;

    invoke-static {v2}, Lo/aeb;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lo/bj;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
