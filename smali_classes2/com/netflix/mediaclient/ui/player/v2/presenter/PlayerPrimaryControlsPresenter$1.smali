.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VL;-><init>(Lo/WB;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/VL;


# direct methods
.method public constructor <init>(Lo/VL;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UP;)V
    .locals 3

    .line 46
    instance-of v0, p1, Lo/UP$CursorFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {v0}, Lo/VL;->a()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->d()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {p1}, Lo/VL;->l()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->e()V

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/WB;->b(Z)V

    .line 56
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->j()V

    .line 57
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->f()V

    .line 58
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/WB;->e(Z)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/WB;->b(Z)V

    .line 63
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {p1, v1}, Lo/VL;->b(Z)V

    goto/16 :goto_3

    .line 65
    :cond_2
    instance-of v0, p1, Lo/UP$Paint;

    if-eqz v0, :cond_3

    .line 66
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->a(Lo/VL;)V

    goto/16 :goto_3

    .line 68
    :cond_3
    instance-of v0, p1, Lo/UP$Dialog;

    if-eqz v0, :cond_4

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/WB;->d(Z)V

    goto/16 :goto_3

    .line 71
    :cond_4
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 72
    :cond_5
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 73
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->i()V

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->a(Lo/VL;)V

    goto/16 :goto_3

    .line 76
    :cond_6
    instance-of v0, p1, Lo/UP$Configuration;

    if-eqz v0, :cond_7

    goto/16 :goto_3

    .line 79
    :cond_7
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 80
    :cond_8
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 81
    :cond_9
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    :goto_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->b()V

    goto/16 :goto_3

    .line 84
    :cond_a
    sget-object v0, Lo/UP$PackageManager;->d:Lo/UP$PackageManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/WB;->b(Z)V

    .line 86
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {p1, v2}, Lo/VL;->b(Z)V

    goto/16 :goto_3

    .line 88
    :cond_b
    sget-object v0, Lo/UP$Mode;->b:Lo/UP$Mode;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/WB;->b(Z)V

    .line 90
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {p1, v1}, Lo/VL;->b(Z)V

    goto/16 :goto_3

    .line 92
    :cond_c
    instance-of v0, p1, Lo/UP$VoiceInteractor;

    if-eqz v0, :cond_d

    .line 93
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {p1}, Lo/VL;->a()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {p1}, Lo/VL;->d()Z

    move-result p1

    if-nez p1, :cond_11

    .line 94
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/WB;->e(Z)V

    .line 95
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->f()V

    goto/16 :goto_3

    .line 98
    :cond_d
    sget-object v0, Lo/UP$FragmentManager;->c:Lo/UP$FragmentManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 99
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {p1}, Lo/VL;->d()Z

    move-result p1

    if-nez p1, :cond_11

    .line 100
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/WB;->a(Z)V

    .line 101
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/WB;->a(Z)V

    .line 102
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/WB;->e(Z)V

    .line 103
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->j()V

    .line 104
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {p1}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object p1

    invoke-interface {p1}, Lo/WB;->f()V

    goto :goto_3

    .line 107
    :cond_e
    instance-of v0, p1, Lo/UP$Fragment;

    if-eqz v0, :cond_10

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {v0}, Lo/VL;->d()Z

    move-result v0

    if-nez v0, :cond_11

    .line 110
    check-cast p1, Lo/UP$Fragment;

    invoke-virtual {p1}, Lo/UP$Fragment;->d()Z

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {v0}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object v0

    invoke-interface {v0}, Lo/WB;->l()Z

    move-result v0

    if-nez v0, :cond_f

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {v0}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object v0

    invoke-interface {v0}, Lo/WB;->i()V

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {v0}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lo/WB;->f(Z)V

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {v0}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object v0

    invoke-interface {v0}, Lo/WB;->k()V

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {v0, p1}, Lo/VL;->h(Z)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-virtual {v0, v2}, Lo/VL;->c(Z)V

    .line 122
    :cond_f
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {v0}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/WB;->c(Z)V

    goto :goto_3

    .line 125
    :cond_10
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_11

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->a:Lo/VL;

    invoke-static {v0}, Lo/VL;->c(Lo/VL;)Lo/WB;

    move-result-object v0

    .line 127
    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->a()Z

    move-result p1

    xor-int/2addr p1, v2

    .line 126
    invoke-interface {v0, p1}, Lo/WB;->d(I)V

    :cond_11
    :goto_3
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;->c(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
