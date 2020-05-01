.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VU;-><init>(Lo/WG;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/VU;


# direct methods
.method public constructor <init>(Lo/VU;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UU;)V
    .locals 1

    .line 81
    instance-of v0, p1, Lo/UU$LoaderManager;

    if-eqz v0, :cond_0

    .line 82
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/VU;->c(Z)V

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    invoke-interface {p1}, Lo/WG;->j()V

    .line 85
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    invoke-virtual {v0}, Lo/VU;->h()I

    move-result v0

    invoke-interface {p1, v0}, Lo/WG;->c(I)V

    .line 86
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    invoke-interface {p1}, Lo/WG;->i()V

    goto :goto_0

    .line 88
    :cond_0
    instance-of v0, p1, Lo/UU$AssistContent;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    check-cast p1, Lo/UU$AssistContent;

    invoke-virtual {p1}, Lo/UU$AssistContent;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/VU;->d(I)V

    .line 91
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    invoke-virtual {v0}, Lo/VU;->h()I

    move-result v0

    invoke-interface {p1, v0}, Lo/WG;->c(I)V

    goto :goto_0

    .line 93
    :cond_1
    instance-of p1, p1, Lo/UU$ClipData;

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/VU;->c(Z)V

    .line 95
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    invoke-interface {p1}, Lo/WG;->f()V

    .line 96
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->b:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    invoke-interface {p1}, Lo/WG;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;->c(Lo/UU;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
