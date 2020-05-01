.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;
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
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/VU;


# direct methods
.method public constructor <init>(Lo/VU;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Lo/UP$CursorFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-static {v0}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object v0

    invoke-interface {v0}, Lo/WG;->c()V

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lo/VU;->d(I)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lo/VU;->e(I)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-static {v0}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {v2}, Lo/VU;->g()I

    move-result v2

    invoke-interface {v0, v2}, Lo/WG;->e(I)V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {p1}, Lo/VU;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {p1}, Lo/VU;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {p1}, Lo/VU;->h()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {v2}, Lo/VU;->g()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lo/VU;->d(IIZ)V

    goto/16 :goto_2

    .line 50
    :cond_2
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 51
    :cond_3
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 52
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {p1}, Lo/VU;->f()Z

    move-result p1

    if-nez p1, :cond_9

    .line 53
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    invoke-interface {p1}, Lo/WG;->g()V

    goto :goto_2

    .line 56
    :cond_4
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 57
    :cond_5
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 58
    :cond_6
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    invoke-interface {p1}, Lo/WG;->b()V

    goto :goto_2

    .line 61
    :cond_7
    instance-of v0, p1, Lo/UP$Configuration;

    if-eqz v0, :cond_8

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    check-cast p1, Lo/UP$Configuration;

    invoke-virtual {p1}, Lo/UP$Configuration;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/VU;->d(I)V

    .line 64
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-static {p1}, Lo/VU;->e(Lo/VU;)Lo/WG;

    move-result-object p1

    invoke-interface {p1}, Lo/WG;->l()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 65
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {p1}, Lo/VU;->h()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {v1}, Lo/VU;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lo/VU;->d(II)V

    goto :goto_2

    .line 68
    :cond_8
    sget-object v0, Lo/UP$FragmentManager;->c:Lo/UP$FragmentManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 70
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {p1}, Lo/VU;->h()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d:Lo/VU;

    invoke-virtual {v2}, Lo/VU;->g()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Lo/VU;->d(IIZ)V

    :cond_9
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
