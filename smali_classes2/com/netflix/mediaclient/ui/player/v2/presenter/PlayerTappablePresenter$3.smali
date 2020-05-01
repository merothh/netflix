.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;
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
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/VQ;


# direct methods
.method public constructor <init>(Lo/VQ;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of v0, p1, Lo/UP$CursorFactory;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 50
    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1, v1}, Lo/VQ;->b(Z)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1}, Lo/VQ;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-static {p1}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object p1

    invoke-interface {p1}, Lo/WH;->g()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-static {p1}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object p1

    invoke-interface {p1}, Lo/WH;->c()V

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1}, Lo/VQ;->h()V

    goto/16 :goto_3

    .line 60
    :cond_2
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 61
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1, v2}, Lo/VQ;->b(Z)V

    .line 62
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1, v2}, Lo/VQ;->e(Z)V

    goto/16 :goto_3

    .line 64
    :cond_3
    sget-object v0, Lo/UP$SharedPreferences;->d:Lo/UP$SharedPreferences;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1, v2}, Lo/VQ;->e(Z)V

    goto/16 :goto_3

    .line 67
    :cond_4
    instance-of v0, p1, Lo/UP$Canvas;

    if-eqz v0, :cond_5

    .line 68
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1, v1}, Lo/VQ;->a(Z)V

    goto/16 :goto_3

    .line 72
    :cond_5
    sget-object v0, Lo/UP$ComponentCallbacks2;->c:Lo/UP$ComponentCallbacks2;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1}, Lo/VQ;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-static {p1}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object p1

    invoke-interface {p1}, Lo/WH;->g()V

    goto :goto_3

    .line 77
    :cond_6
    instance-of v0, p1, Lo/UP$Paint;

    if-eqz v0, :cond_7

    goto :goto_1

    .line 78
    :cond_7
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 79
    :cond_8
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-static {p1}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object p1

    invoke-interface {p1}, Lo/WH;->g()V

    goto :goto_3

    .line 82
    :cond_9
    instance-of v0, p1, Lo/UP$TaskStackBuilder;

    if-eqz v0, :cond_a

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1, v2}, Lo/VQ;->b(Z)V

    goto :goto_3

    .line 85
    :cond_a
    instance-of v0, p1, Lo/UP$SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 86
    check-cast p1, Lo/UP$SQLiteDatabase;

    invoke-virtual {p1}, Lo/UP$SQLiteDatabase;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {v0, v1}, Lo/VQ;->b(Z)V

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-static {v0}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object v0

    invoke-interface {v0}, Lo/WH;->g()V

    goto :goto_2

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {v0, v2}, Lo/VQ;->b(Z)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-static {v0}, Lo/VQ;->d(Lo/VQ;)Lo/WH;

    move-result-object v0

    invoke-interface {v0}, Lo/WH;->c()V

    .line 93
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1}, Lo/UP$SQLiteDatabase;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/VQ;->d(Z)V

    goto :goto_3

    .line 95
    :cond_c
    instance-of p1, p1, Lo/UP$AssistContent;

    if-eqz p1, :cond_d

    .line 96
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->c:Lo/VQ;

    invoke-virtual {p1, v2}, Lo/VQ;->b(Z)V

    :cond_d
    :goto_3
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;->e(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
