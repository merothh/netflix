.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VH;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/VH;


# direct methods
.method public constructor <init>(Lo/VH;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;->d:Lo/VH;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/UP;)V
    .locals 10

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;->d:Lo/VH;

    invoke-static {v0}, Lo/VH;->c(Lo/VH;)Lo/WA;

    move-result-object v0

    invoke-interface {v0}, Lo/WA;->f()V

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;->d:Lo/VH;

    if-eqz p1, :cond_5

    move-object v1, p1

    check-cast v1, Lo/UP$Theme;

    invoke-virtual {v1}, Lo/UP$Theme;->b()Lo/Ug;

    move-result-object v2

    invoke-virtual {v2}, Lo/Ug;->d()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v2

    invoke-static {v0, v2}, Lo/VH;->b(Lo/VH;Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    .line 171
    invoke-virtual {v1}, Lo/UP$Theme;->a()Lo/Tv;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 173
    invoke-virtual {v0}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    const-string v4, "playbackVideoWrapper.videoType"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :cond_0
    move-object v6, v3

    .line 179
    invoke-virtual {v1}, Lo/UP$Theme;->d()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v2}, Lo/AK;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 180
    :goto_0
    sget-object v1, Lo/UH;->e:Lo/UH;

    .line 182
    invoke-virtual {v0}, Lo/Tv;->d()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v5

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 181
    :goto_1
    invoke-virtual {v1, v3}, Lo/UH;->c(Z)Lo/UG;

    move-result-object v4

    .line 185
    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v5

    const-string v1, "playable.playableId"

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    const-string v2, "playbackVideoWrapper.playContext"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->a()Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    :goto_2
    move-object v7, v1

    const/4 v9, 0x1

    .line 184
    invoke-virtual/range {v4 .. v9}, Lo/UG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;ZZ)Lio/reactivex/Observable;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;->d:Lo/VH;

    invoke-static {v2}, Lo/VH;->b(Lo/VH;)Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "PostPlayRepositoryFactor\u2026eUntil(destroyObservable)"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 193
    new-instance v1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2$$special$$inlined$let$lambda$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2$$special$$inlined$let$lambda$1;-><init>(Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;Lo/Tv;Lo/UP;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 192
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_4
    return-void

    .line 169
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.PlayerStateEvent.PlayerPreparePostPlayV2"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;->a(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
