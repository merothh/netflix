.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vz;-><init>(Lo/WL;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic c:Lo/Vz;


# direct methods
.method public constructor <init>(Lo/Vz;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 2

    .line 37
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {v0}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object v0

    invoke-virtual {v0}, Lo/WL;->c()V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {v0}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object v0

    invoke-virtual {v0}, Lo/WL;->l()Z

    move-result v0

    if-nez v0, :cond_e

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {v0}, Lo/Vz;->e(Lo/Vz;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {v0}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object v0

    invoke-virtual {p1}, Lo/UP$CursorFactory;->g()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/WL;->b(F)V

    .line 41
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->e()V

    goto/16 :goto_2

    .line 44
    :cond_0
    instance-of v0, p1, Lo/UP$Paint;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 46
    :cond_2
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->g()V

    goto/16 :goto_2

    .line 49
    :cond_3
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 50
    :cond_4
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 51
    :cond_5
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->b()V

    goto/16 :goto_2

    .line 54
    :cond_6
    instance-of v0, p1, Lo/UP$FragmentManager;

    if-eqz v0, :cond_8

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->e(Lo/Vz;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 56
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->e()V

    goto/16 :goto_2

    .line 58
    :cond_7
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->b()V

    goto/16 :goto_2

    .line 61
    :cond_8
    sget-object v0, Lo/UP$DialogInterface;->d:Lo/UP$DialogInterface;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 62
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->m()V

    goto/16 :goto_2

    .line 64
    :cond_9
    instance-of v0, p1, Lo/UP$SQLiteDatabase;

    if-eqz v0, :cond_b

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    check-cast p1, Lo/UP$SQLiteDatabase;

    invoke-virtual {p1}, Lo/UP$SQLiteDatabase;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lo/Vz;->d(Lo/Vz;Z)V

    .line 66
    invoke-virtual {p1}, Lo/UP$SQLiteDatabase;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 67
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->m()V

    goto/16 :goto_2

    .line 68
    :cond_a
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->e(Lo/Vz;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->e()V

    goto :goto_2

    .line 72
    :cond_b
    sget-object v0, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->b()V

    goto :goto_2

    .line 75
    :cond_c
    instance-of v0, p1, Lo/UP$Canvas;

    if-eqz v0, :cond_d

    .line 76
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->l()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->e(Lo/Vz;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 77
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->b()V

    goto :goto_2

    .line 80
    :cond_d
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_e

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->d()Z

    move-result p1

    invoke-static {v0, p1}, Lo/Vz;->c(Lo/Vz;Z)V

    .line 82
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->l()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->e(Lo/Vz;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->c:Lo/Vz;

    invoke-static {p1}, Lo/Vz;->b(Lo/Vz;)Lo/WL;

    move-result-object p1

    invoke-virtual {p1}, Lo/WL;->b()V

    :cond_e
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
