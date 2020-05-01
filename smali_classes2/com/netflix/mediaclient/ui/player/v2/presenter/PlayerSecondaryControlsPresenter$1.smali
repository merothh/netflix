.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VM;-><init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/VM;


# direct methods
.method public constructor <init>(Lo/VM;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-virtual {v0}, Lo/VM;->h()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/UP$CursorFactory;

    invoke-virtual {v0}, Lo/UP$CursorFactory;->a()Lo/Tv;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v1, v3, :cond_2

    invoke-virtual {v0}, Lo/UP$CursorFactory;->a()Lo/Tv;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v1, v3, :cond_2

    goto :goto_2

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-virtual {v1}, Lo/VM;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 50
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {v1}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object v1

    invoke-interface {v1}, Lo/WC;->f()V

    .line 51
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-virtual {v0}, Lo/UP$CursorFactory;->a()Lo/Tv;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/Tv;->k()Lo/Bc;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Lo/VM;->a(Lo/Bc;)V

    goto :goto_3

    .line 47
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {v0}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object v0

    invoke-interface {v0}, Lo/WC;->i()V

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {v0}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object v0

    invoke-interface {v0}, Lo/WC;->j()V

    .line 54
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {v0}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object v0

    invoke-interface {v0}, Lo/WC;->c()V

    .line 55
    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-virtual {v0}, Lo/VM;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {v0}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object v0

    instance-of v0, v0, Lo/WY;

    if-eqz v0, :cond_6

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {v0}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object v0

    check-cast v0, Lo/WY;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->f()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/WY;->c(F)V

    .line 59
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {p1}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object p1

    invoke-interface {p1}, Lo/WC;->e()V

    .line 60
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {p1}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object p1

    invoke-interface {p1}, Lo/WC;->k()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 61
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-virtual {p1}, Lo/VM;->f()V

    goto :goto_6

    .line 65
    :cond_7
    instance-of v0, p1, Lo/UP$Paint;

    if-eqz v0, :cond_8

    goto :goto_4

    .line 66
    :cond_8
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 67
    :cond_9
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_a

    .line 68
    :goto_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {p1}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object p1

    invoke-interface {p1}, Lo/WC;->g()V

    goto :goto_6

    .line 70
    :cond_a
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    .line 71
    :cond_b
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    .line 72
    :cond_c
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 73
    :goto_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {p1}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object p1

    invoke-interface {p1}, Lo/WC;->b()V

    goto :goto_6

    .line 75
    :cond_d
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_e

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->e:Lo/VM;

    invoke-static {v0}, Lo/VM;->c(Lo/VM;)Lo/WC;

    move-result-object v0

    .line 77
    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 76
    invoke-interface {v0, p1}, Lo/WC;->c(I)V

    :cond_e
    :goto_6
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
