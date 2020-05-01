.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VL;->h(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/VL;

.field final synthetic d:Z


# direct methods
.method public constructor <init>(Lo/VL;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->a:Lo/VL;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->d:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/akj;)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->n()V

    .line 151
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Lo/WB;->a(Z)V

    .line 153
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->j()V

    .line 154
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/WB;->b(Z)V

    .line 155
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->f()V

    .line 156
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/WB;->e(Z)V

    .line 157
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->a:Lo/VL;

    invoke-virtual {p1, v0}, Lo/VL;->c(Z)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;->b(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
