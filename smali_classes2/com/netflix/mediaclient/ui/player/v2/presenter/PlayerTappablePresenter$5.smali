.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VQ;-><init>(Lo/WH;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/VQ;


# direct methods
.method public constructor <init>(Lo/VQ;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/UU;)V
    .locals 2

    .line 109
    sget-object v0, Lo/UU$PackageItemInfo;->c:Lo/UU$PackageItemInfo;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-virtual {p1}, Lo/VQ;->e()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-virtual {p1}, Lo/VQ;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-virtual {p1}, Lo/VQ;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-static {p1}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object p1

    invoke-interface {p1}, Lo/WH;->j()V

    .line 118
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/VQ;->b(Z)V

    goto :goto_1

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-static {p1}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object p1

    invoke-interface {p1}, Lo/WH;->h()V

    .line 123
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-virtual {p1, v0}, Lo/VQ;->e(Z)V

    goto :goto_1

    .line 112
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-static {p1}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object p1

    invoke-interface {p1}, Lo/WH;->h()V

    .line 113
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-virtual {p1, v0}, Lo/VQ;->b(Z)V

    .line 114
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-virtual {p1, v0}, Lo/VQ;->a(Z)V

    goto :goto_1

    .line 126
    :cond_3
    instance-of v0, p1, Lo/UU$Configuration;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-static {v0}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object v0

    check-cast p1, Lo/UU$Configuration;

    invoke-virtual {p1}, Lo/UU$Configuration;->b()Z

    move-result p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->a:Lo/VQ;

    invoke-virtual {v1}, Lo/VQ;->e()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lo/WH;->b(ZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;->e(Lo/UU;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
