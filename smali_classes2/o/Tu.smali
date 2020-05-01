.class public final Lo/Tu;
.super Lo/Um;
.source ""


# instance fields
.field private B:Lo/Tf;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
    .locals 1

    const-string v0, "playerFragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lo/Um;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    return-void
.end method

.method private final C()Lo/Tf;
    .locals 2

    .line 72
    iget-object v0, p0, Lo/Tu;->B:Lo/Tf;

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lo/Tu;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->m()Lo/AK;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Lo/AK;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v0

    iput-object v0, p0, Lo/Tu;->B:Lo/Tf;

    .line 80
    :cond_1
    iget-object v0, p0, Lo/Tu;->B:Lo/Tf;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 8

    .line 44
    invoke-direct {p0}, Lo/Tu;->C()Lo/Tf;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1}, Lo/Tf;->au()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 47
    invoke-virtual {p1}, Lo/Tf;->au()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object p2

    const-string p3, "nextVideoDetails.playable"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 50
    new-instance p2, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;

    .line 51
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lo/Tf;->t()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p0}, Lo/Tu;->l()Z

    move-result v4

    sget-object p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->o:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string p3, "PlayContextImp.OFFLINE_U\u2026EPISODE_POST_PLAY_CONTEXT"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v5

    .line 55
    sget-object p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->p:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string p3, "PlayContextImp.OFFLINE_A\u2026EPISODE_POST_PLAY_CONTEXT"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v6

    .line 56
    sget-object p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string p3, "PlayContextImp.DFLT_NEXT_EPISODE_POST_PLAY_CONTEXT"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v7

    move-object v0, p2

    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;-><init>(Lo/AK;Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 57
    new-instance p1, Lo/Uq;

    check-cast p2, Lcom/netflix/model/leafs/PostPlayExperience;

    iget-object p3, p0, Lo/Tu;->t:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-direct {p1, p2, p3}, Lo/Uq;-><init>(Lcom/netflix/model/leafs/PostPlayExperience;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    .line 58
    invoke-virtual {p0, p1}, Lo/Tu;->b(Lo/Uq;)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "The NEXT videoDetails or playableId was null for OfflinePostPlayForPlayer#fetchPostPlayVideos"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "The videoDetails or nextEpisodeId was null for OfflinePostPlayForPlayer#fetchPostPlayVideos"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 32
    invoke-direct {p0}, Lo/Tu;->C()Lo/Tf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lo/Tf;->au()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
