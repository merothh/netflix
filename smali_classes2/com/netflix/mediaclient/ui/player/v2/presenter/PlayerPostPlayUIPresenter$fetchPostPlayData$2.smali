.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayData$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VH;->b()V
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

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayData$2;->d:Lo/VH;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayData$2;->d:Lo/VH;

    invoke-static {v0}, Lo/VH;->c(Lo/VH;)Lo/WA;

    move-result-object v0

    invoke-interface {v0}, Lo/WA;->f()V

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayData$2;->d:Lo/VH;

    if-eqz p1, :cond_3

    check-cast p1, Lo/UP$Resources;

    invoke-virtual {p1}, Lo/UP$Resources;->c()Lo/Ug;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ug;->d()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v1

    invoke-static {v0, v1}, Lo/VH;->b(Lo/VH;Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    .line 142
    invoke-virtual {p1}, Lo/UP$Resources;->e()Lo/Tv;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    const-string v2, "playbackVideoWrapper.videoType"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayData$2;->d:Lo/VH;

    invoke-static {v2}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 150
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    const-string v3, "playbackVideoWrapper.playContext"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->a()Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 149
    :goto_0
    invoke-virtual {v2, v0, v1, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    :cond_2
    return-void

    .line 140
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.PlayerStateEvent.PlayerPreparePostPlay"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayData$2;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
