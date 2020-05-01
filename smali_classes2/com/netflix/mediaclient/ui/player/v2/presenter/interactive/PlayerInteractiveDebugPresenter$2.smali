.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wc;-><init>(Lo/Vh;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/Vh;

.field final synthetic e:Lo/Wc;


# direct methods
.method public constructor <init>(Lo/Wc;Lo/Vh;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;->e:Lo/Wc;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;->a:Lo/Vh;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 2

    .line 34
    instance-of v0, p1, Lo/UP$Drawable;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lo/UP$Drawable;

    invoke-virtual {p1}, Lo/UP$Drawable;->d()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;->e:Lo/Wc;

    invoke-virtual {p1}, Lo/UP$Drawable;->d()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-static {v0, p1}, Lo/Wc;->b(Lo/Wc;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)V

    goto :goto_0

    .line 39
    :cond_0
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->a()Lo/Tv;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;->a:Lo/Vh;

    invoke-interface {v0, p1}, Lo/Vh;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    instance-of v0, p1, Lo/UP$VoiceInteractor;

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;->a:Lo/Vh;

    invoke-interface {v0}, Lo/Vh;->e()V

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;->a:Lo/Vh;

    .line 47
    check-cast p1, Lo/UP$VoiceInteractor;

    invoke-virtual {p1}, Lo/UP$VoiceInteractor;->b()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p1

    iget-object p1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    const-string v1, "it.currentPlaylistTimestamp.segmentId"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {v0, p1}, Lo/Vh;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
