.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vy;-><init>(Lo/WI;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/WI;

.field final synthetic b:Lo/Vy;


# direct methods
.method public constructor <init>(Lo/Vy;Lo/WI;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->a:Lo/WI;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-virtual {v0}, Lo/Vy;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->a:Lo/WI;

    invoke-interface {v0}, Lo/WI;->c()V

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-static {v0}, Lo/Vy;->c(Lo/Vy;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->a:Lo/WI;

    invoke-interface {v0}, Lo/WI;->l()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-virtual {v0}, Lo/Vy;->an_()Z

    move-result v0

    if-nez v0, :cond_8

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-virtual {p1}, Lo/Vy;->l()Z

    move-result p1

    if-nez p1, :cond_8

    .line 34
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-virtual {p1}, Lo/Vy;->c()V

    goto :goto_3

    .line 38
    :cond_0
    instance-of v0, p1, Lo/UP$Paint;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 40
    :cond_2
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->a:Lo/WI;

    invoke-interface {p1}, Lo/WI;->g()V

    goto :goto_3

    .line 43
    :cond_3
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 44
    :cond_4
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 45
    :cond_5
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-virtual {p1}, Lo/Vy;->b()V

    goto :goto_3

    .line 48
    :cond_6
    instance-of v0, p1, Lo/UP$ColorStateList;

    if-eqz v0, :cond_8

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    check-cast p1, Lo/UP$ColorStateList;

    invoke-virtual {p1}, Lo/UP$ColorStateList;->e()Lo/Me;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    invoke-static {v0, p1}, Lo/Vy;->b(Lo/Vy;Z)V

    .line 50
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-static {p1}, Lo/Vy;->b(Lo/Vy;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-virtual {p1}, Lo/Vy;->a()Z

    move-result p1

    if-nez p1, :cond_8

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b:Lo/Vy;

    invoke-virtual {p1}, Lo/Vy;->c()V

    :cond_8
    :goto_3
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
