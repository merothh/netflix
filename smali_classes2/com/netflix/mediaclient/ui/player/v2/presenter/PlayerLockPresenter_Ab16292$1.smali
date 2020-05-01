.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VI;-><init>(Lo/WU;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic c:Lo/VI;


# direct methods
.method public constructor <init>(Lo/VI;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 3

    .line 49
    instance-of v0, p1, Lo/UP$Paint;

    if-eqz v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-virtual {p1}, Lo/VI;->b()Z

    move-result p1

    if-nez p1, :cond_c

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->b()V

    goto/16 :goto_2

    .line 54
    :cond_0
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 56
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-virtual {p1}, Lo/VI;->b()Z

    move-result p1

    if-nez p1, :cond_c

    .line 57
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->b()V

    goto/16 :goto_2

    .line 60
    :cond_2
    instance-of v0, p1, Lo/UP$Configuration;

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 63
    :cond_3
    sget-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 64
    :cond_4
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 65
    :cond_5
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 66
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->b()V

    goto/16 :goto_2

    .line 68
    :cond_6
    sget-object v0, Lo/UP$FragmentManager;->c:Lo/UP$FragmentManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-virtual {p1}, Lo/VI;->a()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-virtual {p1}, Lo/VI;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 70
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->e()V

    goto/16 :goto_2

    .line 72
    :cond_7
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->b()V

    goto/16 :goto_2

    .line 75
    :cond_8
    instance-of v0, p1, Lo/UP$Fragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 76
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-virtual {p1}, Lo/VI;->a()Z

    move-result p1

    if-nez p1, :cond_c

    .line 77
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->l()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-virtual {p1}, Lo/VI;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 78
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->e()V

    .line 79
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-virtual {p1, v1}, Lo/VI;->b(Z)V

    goto :goto_2

    .line 83
    :cond_9
    sget-object v0, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 84
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->b()V

    goto :goto_2

    .line 86
    :cond_a
    instance-of v0, p1, Lo/UP$SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {v0}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object v0

    check-cast p1, Lo/UP$SQLiteDatabase;

    invoke-virtual {p1}, Lo/UP$SQLiteDatabase;->d()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/WU;->e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 88
    invoke-virtual {p1}, Lo/UP$SQLiteDatabase;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 89
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-virtual {p1, v1}, Lo/VI;->e(Z)V

    .line 90
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->c()V

    .line 91
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->e()V

    goto :goto_2

    .line 93
    :cond_b
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/VI;->e(Z)V

    .line 94
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->g()V

    .line 95
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->c:Lo/VI;

    invoke-static {p1}, Lo/VI;->a(Lo/VI;)Lo/WU;

    move-result-object p1

    invoke-virtual {p1}, Lo/WU;->b()V

    :cond_c
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLockPresenter_Ab16292$1;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
