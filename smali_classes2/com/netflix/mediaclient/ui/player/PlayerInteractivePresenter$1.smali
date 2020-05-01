.class public final Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TS;-><init>(Lio/reactivex/Observable;)V
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
.field final synthetic d:Lo/TS;


# direct methods
.method public constructor <init>(Lo/TS;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;->d:Lo/TS;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UP;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    instance-of v0, p1, Lo/UP$Drawable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;->d:Lo/TS;

    invoke-virtual {v0}, Lo/TS;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lo/UP$Drawable;

    invoke-virtual {p1}, Lo/UP$Drawable;->d()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;->d:Lo/TS;

    invoke-virtual {p1}, Lo/UP$Drawable;->d()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-static {v0, p1}, Lo/TS;->b(Lo/TS;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)V

    goto :goto_1

    .line 83
    :cond_0
    instance-of v0, p1, Lo/UP$PendingIntent;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;->d:Lo/TS;

    check-cast p1, Lo/UP$PendingIntent;

    invoke-virtual {p1}, Lo/UP$PendingIntent;->c()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object p1

    invoke-static {v0, p1}, Lo/TS;->d(Lo/TS;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 86
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;->d:Lo/TS;

    invoke-static {p1}, Lo/TS;->d(Lo/TS;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->config()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;->playerControlsSnapshots()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;->d:Lo/TS;

    invoke-static {v1}, Lo/TS;->d(Lo/TS;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v0

    .line 88
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;->c:Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;

    check-cast v1, Lo/alN;

    .line 85
    invoke-static {p1, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;->c(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
