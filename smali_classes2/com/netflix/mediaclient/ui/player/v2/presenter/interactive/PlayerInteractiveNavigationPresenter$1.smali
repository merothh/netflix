.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/We;-><init>(Lo/Xv;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/We;


# direct methods
.method public constructor <init>(Lo/We;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v0, p1, Lo/UP$PendingIntent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lo/UP$PendingIntent;

    invoke-virtual {p1}, Lo/UP$PendingIntent;->c()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0, p1}, Lo/We;->a(Lo/We;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lo/Xv;->b(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Z)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0, p1}, Lo/We;->d(Lo/We;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    goto/16 :goto_2

    .line 45
    :cond_0
    instance-of v0, p1, Lo/UP$Application;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object v0

    check-cast p1, Lo/UP$Application;

    invoke-virtual {p1}, Lo/UP$Application;->c()Lo/Tv;

    move-result-object p1

    invoke-virtual {p1}, Lo/Tv;->k()Lo/Bc;

    move-result-object p1

    const-string v3, "it.playbackWrapper.videoDetails"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->isInDebug()Z

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/Xv;->a(Z)V

    goto/16 :goto_2

    .line 48
    :cond_2
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-virtual {v0}, Lo/We;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object v0

    invoke-interface {v0}, Lo/Xv;->c()V

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-virtual {v0}, Lo/We;->h()Z

    move-result v0

    if-nez v0, :cond_c

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result p1

    if-nez p1, :cond_c

    .line 53
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {p1}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object p1

    invoke-interface {p1}, Lo/Xv;->e()V

    goto/16 :goto_2

    .line 57
    :cond_3
    instance-of v0, p1, Lo/UP$Activity;

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object v0

    check-cast p1, Lo/UP$Activity;

    invoke-virtual {p1}, Lo/UP$Activity;->b()I

    move-result v1

    invoke-virtual {p1}, Lo/UP$Activity;->d()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lo/Xv;->c(IZ)V

    goto/16 :goto_2

    .line 60
    :cond_4
    instance-of v0, p1, Lo/UP$VoiceInteractor;

    if-eqz v0, :cond_6

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lo/UP$VoiceInteractor;

    invoke-virtual {v1}, Lo/UP$VoiceInteractor;->b()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/Xv;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0}, Lo/We;->a(Lo/We;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 63
    invoke-virtual {v1}, Lo/UP$VoiceInteractor;->b()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    const-string v3, "it.currentPlaylistTimestamp.segmentId"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->config()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;->playerControlsSnapshots()Z

    move-result v2

    :cond_5
    if-eqz v2, :cond_c

    .line 69
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object v2

    .line 70
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;

    invoke-direct {v4, v0, v1, p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;-><init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;Lo/UP;)V

    check-cast v4, Lo/alN;

    .line 68
    invoke-static {v2, v3, v4}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto :goto_2

    .line 99
    :cond_6
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 100
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {p1}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object p1

    invoke-interface {p1}, Lo/Xv;->g()V

    .line 101
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {p1}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object p1

    invoke-interface {p1}, Lo/Xv;->h()V

    goto :goto_2

    .line 103
    :cond_7
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {p1}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object p1

    invoke-interface {p1}, Lo/Xv;->g()V

    goto :goto_2

    .line 106
    :cond_8
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 107
    :cond_9
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 108
    :cond_a
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {p1}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object p1

    invoke-interface {p1}, Lo/Xv;->b()V

    goto :goto_2

    .line 111
    :cond_b
    instance-of p1, p1, Lo/UP$LoaderManager;

    if-eqz p1, :cond_c

    .line 112
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-virtual {p1}, Lo/We;->m()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 113
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {p1}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object p1

    invoke-interface {p1}, Lo/Xv;->h()V

    :cond_c
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
