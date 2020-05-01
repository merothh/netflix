.class public Lo/Tr;
.super Lo/Ul;
.source ""


# instance fields
.field private A:Lo/WN;

.field private B:Lo/Tf;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
    .locals 1

    const-string v0, "playerFragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lo/Ul;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    return-void
.end method

.method private final A()Lo/Tf;
    .locals 2

    .line 130
    iget-object v0, p0, Lo/Tr;->B:Lo/Tf;

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lo/Tr;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->m()Lo/AK;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Lo/AK;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v0

    iput-object v0, p0, Lo/Tr;->B:Lo/Tf;

    .line 138
    :cond_1
    iget-object v0, p0, Lo/Tr;->B:Lo/Tf;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 174
    invoke-super {p0}, Lo/Ul;->b()V

    .line 175
    iget-object v0, p0, Lo/Tr;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lo/Tr;->A:Lo/WN;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/WN;->j()V

    :cond_0
    return-void
.end method

.method protected c(ZZZ)I
    .locals 5

    .line 185
    iget-object v0, p0, Lo/Tr;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->m()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lo/Tr;->B:Lo/Tf;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/Tf;->O()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    sget-object v0, Lo/gy;->a:Lo/gy$Activity;

    invoke-virtual {v0}, Lo/gy$Activity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eF:I

    goto :goto_2

    .line 189
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lo/Ul;->c(ZZZ)I

    move-result p1

    :goto_2
    return p1
.end method

.method public c()V
    .locals 1

    .line 169
    invoke-super {p0}, Lo/Ul;->c()V

    .line 170
    iget-object v0, p0, Lo/Tr;->A:Lo/WN;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/WN;->b()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 8

    .line 101
    invoke-direct {p0}, Lo/Tr;->A()Lo/Tf;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Lo/Tf;->au()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 104
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

    .line 105
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

    .line 107
    new-instance p2, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;

    .line 108
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p1}, Lo/Tf;->t()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {p0}, Lo/Tr;->l()Z

    move-result v4

    .line 112
    sget-object p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->o:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string p3, "PlayContextImp.OFFLINE_U\u2026EPISODE_POST_PLAY_CONTEXT"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v5

    .line 113
    sget-object p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->p:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string p3, "PlayContextImp.OFFLINE_A\u2026EPISODE_POST_PLAY_CONTEXT"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v6

    .line 114
    sget-object p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string p3, "PlayContextImp.DFLT_NEXT_EPISODE_POST_PLAY_CONTEXT"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v7

    move-object v0, p2

    .line 107
    invoke-direct/range {v0 .. v7}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;-><init>(Lo/AK;Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 115
    new-instance p1, Lo/Uq;

    check-cast p2, Lcom/netflix/model/leafs/PostPlayExperience;

    iget-object p3, p0, Lo/Tr;->t:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-direct {p1, p2, p3}, Lo/Uq;-><init>(Lcom/netflix/model/leafs/PostPlayExperience;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    .line 116
    invoke-virtual {p0, p1}, Lo/Tr;->b(Lo/Uq;)V

    goto :goto_1

    .line 118
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "The NEXT videoDetails or playableId was null for OfflinePostPlayForPlayer#fetchPostPlayVideos"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "The videoDetails or nextEpisodeId was null for OfflinePostPlayForPlayer#fetchPostPlayVideos"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected d(Landroid/view/LayoutInflater;Lcom/netflix/model/leafs/PostPlayItem;ZZZLo/TZ;I)V
    .locals 3

    if-eqz p2, :cond_4

    .line 48
    iget-object v0, p0, Lo/Tr;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    const-string v1, "mPostPlayExperience"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nextEpisode"

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Tr;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nextEpisodeSeamless"

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    :cond_0
    iget-object p1, p0, Lo/Tr;->B:Lo/Tf;

    const/4 p3, 0x0

    if-nez p1, :cond_2

    .line 51
    sget-object p1, Lo/Rs;->e:Lo/Rs;

    iget-object p4, p0, Lo/Tr;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->m()Lo/AK;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    move-object p4, p3

    :goto_0
    invoke-virtual {p1, p4}, Lo/Rs;->a(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    iput-object p1, p0, Lo/Tr;->B:Lo/Tf;

    .line 53
    :cond_2
    iget-object p1, p0, Lo/Tr;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->aa_()Lio/reactivex/subjects/Subject;

    move-result-object p3

    :cond_3
    if-eqz p3, :cond_5

    .line 56
    sget-object p1, Lo/Xr;->b:Lo/Xr$ActionBar;

    .line 57
    iget-object p4, p0, Lo/Tr;->i:Landroid/widget/LinearLayout;

    const-string p5, "mItemsContainer"

    invoke-static {p4, p5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroid/view/ViewGroup;

    .line 60
    iget-object p5, p0, Lo/Tr;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {p5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result p5

    .line 56
    invoke-virtual {p1, p4, p2, p3, p5}, Lo/Xr$ActionBar;->d(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;Z)Lo/Xr;

    move-result-object p1

    check-cast p1, Lo/WN;

    iput-object p1, p0, Lo/Tr;->A:Lo/WN;

    .line 62
    iget-object p1, p0, Lo/Tr;->A:Lo/WN;

    if-eqz p1, :cond_5

    .line 63
    check-cast p1, Lo/Xr;

    iget-object p2, p0, Lo/Tr;->B:Lo/Tf;

    invoke-virtual {p1, p2}, Lo/Xr;->d(Lo/Tf;)V

    goto :goto_1

    .line 67
    :cond_4
    invoke-super/range {p0 .. p7}, Lo/Ul;->d(Landroid/view/LayoutInflater;Lcom/netflix/model/leafs/PostPlayItem;ZZZLo/TZ;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public d()Z
    .locals 2

    .line 85
    sget-object v0, Lo/gy;->a:Lo/gy$Activity;

    invoke-virtual {v0}, Lo/gy$Activity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lo/Rs;->e:Lo/Rs;

    iget-object v1, p0, Lo/Tr;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->m()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/Rs;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 89
    :cond_1
    invoke-direct {p0}, Lo/Tr;->A()Lo/Tf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Lo/Tf;->au()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 5

    .line 143
    sget-object v0, Lo/gm;->c:Lo/gm$ActionBar;

    invoke-virtual {v0}, Lo/gm$ActionBar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-super {p0}, Lo/Ul;->e()V

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lo/Tr;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    const-string v1, "mPostPlayExperience"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nextEpisode"

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/Tr;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisodeSeamless"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    invoke-super {p0}, Lo/Ul;->e()V

    goto :goto_1

    .line 149
    :cond_2
    :goto_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 150
    new-instance v1, Lcom/netflix/cl/model/event/discrete/Presented;

    .line 151
    sget-object v2, Lcom/netflix/cl/model/AppView;->nextEpisodeButton:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    .line 152
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 153
    iget-object v4, p0, Lo/Tr;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {v4}, Lo/Ul;->d(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    .line 150
    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/cl/model/event/discrete/Presented;-><init>(Lcom/netflix/cl/model/AppView;Ljava/lang/Boolean;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    .line 149
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    :goto_1
    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 162
    invoke-super {p0, p1}, Lo/Ul;->e(Z)V

    .line 163
    iget-object p1, p0, Lo/Tr;->A:Lo/WN;

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lo/WN;->h()Z

    move-result v0

    iget-object v1, p0, Lo/Tr;->l:Lo/aeC$TaskDescription;

    const-string v2, "autoplayTimer"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/aeC$TaskDescription;->a()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lo/WN;->a(ZI)V

    :cond_0
    return-void
.end method
