.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VB;-><init>(Lo/Wv;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/VB;


# direct methods
.method public constructor <init>(Lo/VB;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-static {v0}, Lo/VB;->b(Lo/VB;)Lo/Wv;

    move-result-object v0

    invoke-interface {v0}, Lo/Wv;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-virtual {v0}, Lo/VB;->ao_()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-virtual {p1}, Lo/VB;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-static {p1}, Lo/VB;->b(Lo/VB;)Lo/Wv;

    move-result-object p1

    invoke-interface {p1}, Lo/Wv;->e()V

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-static {p1}, Lo/VB;->b(Lo/VB;)Lo/Wv;

    move-result-object p1

    invoke-interface {p1}, Lo/Wv;->c()V

    goto :goto_1

    .line 44
    :cond_1
    instance-of v0, p1, Lo/UP$Application;

    if-eqz v0, :cond_2

    .line 45
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-static {p1}, Lo/VB;->b(Lo/VB;)Lo/Wv;

    move-result-object p1

    invoke-interface {p1}, Lo/Wv;->g()V

    goto :goto_1

    .line 47
    :cond_2
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 48
    :cond_3
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 49
    :cond_4
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-static {p1}, Lo/VB;->b(Lo/VB;)Lo/Wv;

    move-result-object p1

    invoke-interface {p1}, Lo/Wv;->b()V

    goto :goto_1

    .line 52
    :cond_5
    instance-of v0, p1, Lo/UP$SQLiteClosable;

    if-eqz v0, :cond_7

    .line 56
    check-cast p1, Lo/UP$SQLiteClosable;

    invoke-virtual {p1}, Lo/UP$SQLiteClosable;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 57
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-static {p1}, Lo/VB;->c(Lo/VB;)V

    goto :goto_1

    .line 59
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-static {p1}, Lo/VB;->e(Lo/VB;)V

    goto :goto_1

    .line 62
    :cond_7
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_8

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->b:Lo/VB;

    invoke-static {v0}, Lo/VB;->b(Lo/VB;)Lo/Wv;

    move-result-object v0

    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->d()Z

    move-result p1

    invoke-interface {v0, p1}, Lo/Wv;->d(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;->e(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
