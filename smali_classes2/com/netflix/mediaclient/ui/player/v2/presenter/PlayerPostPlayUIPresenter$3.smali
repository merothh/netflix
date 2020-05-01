.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VH;-><init>(Lo/WA;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/VH;


# direct methods
.method public constructor <init>(Lo/VH;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 57
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->h()V

    goto/16 :goto_0

    .line 59
    :cond_0
    instance-of v0, p1, Lo/UP$DatabaseErrorHandler;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {v0}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 61
    check-cast p1, Lo/UP$DatabaseErrorHandler;

    invoke-virtual {p1}, Lo/UP$DatabaseErrorHandler;->e()J

    move-result-wide v1

    .line 62
    invoke-virtual {p1}, Lo/UP$DatabaseErrorHandler;->d()J

    move-result-wide v3

    .line 60
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d(JJ)V

    goto/16 :goto_0

    .line 65
    :cond_1
    instance-of v0, p1, Lo/UP$ContextWrapper;

    if-eqz v0, :cond_2

    .line 66
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->y()V

    goto/16 :goto_0

    .line 68
    :cond_2
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {p1, v1}, Lo/VH;->d(Z)V

    goto/16 :goto_0

    .line 71
    :cond_3
    sget-object v0, Lo/UP$ClipData;->c:Lo/UP$ClipData;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 72
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {p1, v2}, Lo/VH;->d(Z)V

    goto/16 :goto_0

    .line 74
    :cond_4
    sget-object v0, Lo/UP$Matrix;->e:Lo/UP$Matrix;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->k()V

    .line 76
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->t()V

    goto/16 :goto_0

    .line 78
    :cond_6
    instance-of v0, p1, Lo/UP$TypedArray;

    if-eqz v0, :cond_7

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {v0}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_15

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    check-cast p1, Lo/UP$TypedArray;

    invoke-virtual {p1}, Lo/UP$TypedArray;->c()Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lcom/netflix/model/leafs/PostPlayItem;)V

    goto/16 :goto_0

    .line 81
    :cond_7
    instance-of v0, p1, Lo/UP$Canvas;

    if-eqz v0, :cond_8

    .line 82
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {p1, v1}, Lo/VH;->e(Z)V

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {v0}, Lo/VH;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->b(Z)V

    goto/16 :goto_0

    .line 85
    :cond_8
    instance-of v0, p1, Lo/UP$FragmentManager;

    if-eqz v0, :cond_9

    .line 86
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->v()V

    goto/16 :goto_0

    .line 88
    :cond_9
    instance-of v0, p1, Lo/UP$StateListAnimator;

    if-eqz v0, :cond_d

    .line 90
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {p1}, Lo/VH;->e()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 89
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->w()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 90
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->q()Z

    move-result p1

    if-ne p1, v1, :cond_15

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->l()Z

    move-result p1

    if-eq p1, v1, :cond_15

    .line 92
    :cond_b
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c(Z)V

    .line 93
    :cond_c
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {p1, v2}, Lo/VH;->e(Z)V

    goto/16 :goto_0

    .line 96
    :cond_d
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_12

    .line 97
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {p1}, Lo/VH;->e()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 98
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->r()V

    .line 100
    :cond_e
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->p()V

    .line 101
    :cond_f
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->k()V

    .line 103
    :cond_10
    sget-object p1, Lo/gV;->d:Lo/gV$StateListAnimator;

    invoke-virtual {p1}, Lo/gV$StateListAnimator;->e()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 104
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {p1}, Lo/VH;->c()V

    goto :goto_0

    .line 106
    :cond_11
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-virtual {p1}, Lo/VH;->b()V

    goto :goto_0

    .line 110
    :cond_12
    sget-object v0, Lo/UP$ComponentCallbacks2;->c:Lo/UP$ComponentCallbacks2;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 112
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {p1}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->b()V

    goto :goto_0

    .line 115
    :cond_13
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_14

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {v0}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_15

    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d(Z)V

    goto :goto_0

    .line 118
    :cond_14
    instance-of v0, p1, Lo/UP$Uri;

    if-eqz v0, :cond_15

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->b:Lo/VH;

    invoke-static {v0}, Lo/VH;->c(Lo/VH;)Lo/WA;

    move-result-object v0

    check-cast p1, Lo/UP$Uri;

    invoke-virtual {p1}, Lo/UP$Uri;->c()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/WA;->a(Landroid/view/WindowInsets;)V

    :cond_15
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
