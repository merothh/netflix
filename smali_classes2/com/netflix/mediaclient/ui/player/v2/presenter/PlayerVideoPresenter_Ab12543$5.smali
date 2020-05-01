.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;
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
        "Lo/UU;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/VX;


# direct methods
.method public constructor <init>(Lo/VX;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UU;)V
    .locals 5

    .line 67
    instance-of v0, p1, Lo/UW$AssistContent;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {v0}, Lo/VX;->c(Lo/VX;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {v3}, Lo/VX;->c(Lo/VX;)[I

    move-result-object v3

    check-cast p1, Lo/UW$AssistContent;

    invoke-virtual {p1}, Lo/UW$AssistContent;->e()I

    move-result v4

    aput v4, v3, v1

    .line 71
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {v3}, Lo/VX;->c(Lo/VX;)[I

    move-result-object v3

    invoke-virtual {p1}, Lo/UW$AssistContent;->d()I

    move-result v4

    aput v4, v3, v2

    .line 72
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {v3}, Lo/VX;->e(Lo/VX;)[I

    move-result-object v3

    invoke-virtual {p1}, Lo/UW$AssistContent;->a()I

    move-result v4

    aput v4, v3, v1

    .line 73
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {v3}, Lo/VX;->e(Lo/VX;)[I

    move-result-object v3

    invoke-virtual {p1}, Lo/UW$AssistContent;->c()I

    move-result v4

    aput v4, v3, v2

    .line 74
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {v3}, Lo/VX;->a(Lo/VX;)[I

    move-result-object v3

    invoke-virtual {p1}, Lo/UW$AssistContent;->b()I

    move-result v4

    aput v4, v3, v1

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {v1}, Lo/VX;->a(Lo/VX;)[I

    move-result-object v1

    invoke-virtual {p1}, Lo/UW$AssistContent;->g()I

    move-result p1

    aput p1, v1, v2

    .line 76
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {p1}, Lo/VX;->f(Lo/VX;)V

    if-eqz v0, :cond_1

    .line 78
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {p1}, Lo/VX;->b(Lo/VX;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->e:Lo/VX;

    invoke-static {p1}, Lo/VX;->d(Lo/VX;)Lo/WK;

    move-result-object p1

    invoke-interface {p1}, Lo/WK;->j()V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;->c(Lo/UU;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
