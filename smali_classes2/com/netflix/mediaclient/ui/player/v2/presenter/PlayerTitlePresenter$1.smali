.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VV;-><init>(Lo/WF;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/VV;


# direct methods
.method public constructor <init>(Lo/VV;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->e:Lo/VV;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->e:Lo/VV;

    invoke-static {v0}, Lo/VV;->b(Lo/VV;)Lo/WF;

    move-result-object v0

    sget-object v1, Lo/UZ;->b:Lo/UZ;

    check-cast p1, Lo/UP$BroadcastReceiver;

    invoke-virtual {p1}, Lo/UP$BroadcastReceiver;->a()Lo/Tv;

    move-result-object p1

    invoke-virtual {p1}, Lo/Tv;->i()Lo/AK;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/UZ;->a(Lo/AK;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/WF;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 28
    :cond_0
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->e:Lo/VV;

    invoke-static {v0}, Lo/VV;->b(Lo/VV;)Lo/WF;

    move-result-object v0

    sget-object v1, Lo/UZ;->b:Lo/UZ;

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->a()Lo/Tv;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/Tv;->i()Lo/AK;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lo/UZ;->a(Lo/AK;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/WF;->d(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->e:Lo/VV;

    invoke-static {v0}, Lo/VV;->b(Lo/VV;)Lo/WF;

    move-result-object v0

    invoke-interface {v0}, Lo/WF;->l()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->e:Lo/VV;

    invoke-virtual {v0}, Lo/VV;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->e:Lo/VV;

    invoke-virtual {p1}, Lo/VV;->l()Z

    move-result p1

    if-nez p1, :cond_5

    .line 31
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->e:Lo/VV;

    invoke-static {p1}, Lo/VV;->b(Lo/VV;)Lo/WF;

    move-result-object p1

    invoke-interface {p1}, Lo/WF;->e()V

    goto :goto_2

    .line 34
    :cond_2
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 35
    :cond_3
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 36
    :cond_4
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->e:Lo/VV;

    invoke-static {p1}, Lo/VV;->b(Lo/VV;)Lo/WF;

    move-result-object p1

    invoke-interface {p1}, Lo/WF;->b()V

    :cond_5
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTitlePresenter$1;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
