.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VT;-><init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;Lio/reactivex/Observable;)V
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
.field final synthetic d:Lo/VT;


# direct methods
.method public constructor <init>(Lo/VT;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;->d:Lo/VT;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 2

    .line 64
    instance-of v0, p1, Lo/UP$Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;->d:Lo/VT;

    invoke-static {p1}, Lo/VT;->d(Lo/VT;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;->d(Z)V

    goto :goto_0

    .line 67
    :cond_0
    sget-object v0, Lo/UP$FragmentManager;->c:Lo/UP$FragmentManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;->d:Lo/VT;

    invoke-virtual {p1}, Lo/VT;->b()Z

    move-result p1

    if-nez p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;->d:Lo/VT;

    invoke-static {p1}, Lo/VT;->d(Lo/VT;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;->b(Z)V

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;->d:Lo/VT;

    invoke-static {p1}, Lo/VT;->d(Lo/VT;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;->d(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
