.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VC;-><init>(Lo/Ww;Lio/reactivex/Observable;)V
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
.field final synthetic d:Lo/VC;


# direct methods
.method public constructor <init>(Lo/VC;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;->d:Lo/VC;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UP;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;->d:Lo/VC;

    invoke-virtual {v0}, Lo/VC;->ap_()Z

    move-result v0

    if-nez v0, :cond_4

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result p1

    if-nez p1, :cond_4

    .line 26
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;->d:Lo/VC;

    invoke-static {p1}, Lo/VC;->b(Lo/VC;)Lo/Ww;

    move-result-object p1

    invoke-interface {p1}, Lo/Ww;->e()V

    goto :goto_1

    .line 29
    :cond_0
    sget-object v0, Lo/UP$ClipData;->c:Lo/UP$ClipData;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;->d:Lo/VC;

    invoke-static {p1}, Lo/VC;->b(Lo/VC;)Lo/Ww;

    move-result-object p1

    invoke-interface {p1}, Lo/Ww;->b()V

    goto :goto_1

    .line 32
    :cond_1
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 34
    :cond_3
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;->d:Lo/VC;

    invoke-static {p1}, Lo/VC;->b(Lo/VC;)Lo/Ww;

    move-result-object p1

    invoke-interface {p1}, Lo/Ww;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;->c(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
