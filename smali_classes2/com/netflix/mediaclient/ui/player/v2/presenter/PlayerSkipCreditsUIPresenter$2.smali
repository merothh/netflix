.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VR;-><init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;Lio/reactivex/Observable;)V
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
.field final synthetic d:Lo/VR;


# direct methods
.method public constructor <init>(Lo/VR;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$2;->d:Lo/VR;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/UP;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$2;->d:Lo/VR;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/VR;->c(Z)V

    .line 36
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$2;->d:Lo/VR;

    invoke-static {p1}, Lo/VR;->b(Lo/VR;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$2;->d:Lo/VR;

    invoke-static {p1}, Lo/VR;->b(Lo/VR;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;->d(Z)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$2;->a(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
