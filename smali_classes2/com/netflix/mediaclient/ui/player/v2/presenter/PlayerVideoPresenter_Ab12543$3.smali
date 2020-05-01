.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VX;-><init>(Lo/WK;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/VX;


# direct methods
.method public constructor <init>(Lo/VX;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;->e:Lo/VX;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;->e:Lo/VX;

    invoke-static {p1}, Lo/VX;->b(Lo/VX;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;->e:Lo/VX;

    invoke-static {p1}, Lo/VX;->d(Lo/VX;)Lo/WK;

    move-result-object p1

    invoke-interface {p1}, Lo/WK;->b()V

    .line 52
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3$1;-><init>(Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
