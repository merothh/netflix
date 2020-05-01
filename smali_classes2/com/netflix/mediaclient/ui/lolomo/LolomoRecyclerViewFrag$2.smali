.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/acc;

.field final synthetic d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

.field final synthetic e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->b:Lo/acc;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Boolean;)V
    .locals 5

    .line 992
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->showOnBackgroundActionSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->showOnBackgroundActionSuccess()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 993
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 994
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz v0, :cond_3

    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v4}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lo/Kx;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 997
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    .line 1000
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->modalAlert()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 1001
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    if-eqz v0, :cond_5

    .line 1002
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/abV;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_2

    .line 1004
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    .line 1007
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipAlert()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    .line 1008
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz p1, :cond_7

    .line 1009
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    check-cast p1, Lo/abU;

    invoke-virtual {p1}, Lo/abU;->c()V

    goto :goto_3

    .line 1011
    :cond_7
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iput-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    :cond_8
    :goto_3
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1021
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerAlert()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz p1, :cond_0

    .line 1022
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1, v2}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lo/Kx;Landroid/view/ViewGroup;)V

    .line 1024
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->modalAlert()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    if-eqz p1, :cond_1

    .line 1025
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/abV;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1027
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipAlert()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz p1, :cond_2

    .line 1028
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    check-cast p1, Lo/abU;

    invoke-virtual {p1}, Lo/abU;->c()V

    :cond_2
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 980
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 983
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 984
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->b:Lo/acc;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->backgroundAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/acc;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    return-void
.end method
