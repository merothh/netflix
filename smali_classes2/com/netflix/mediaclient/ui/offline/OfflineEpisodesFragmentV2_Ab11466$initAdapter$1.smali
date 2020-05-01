.class public final Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ra;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Ra;


# direct methods
.method public constructor <init>(Lo/Ra;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/disposables/Disposable;
    .locals 12

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileGuid"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    new-instance v1, Lo/ES;

    invoke-direct {v1, p1}, Lo/ES;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-static {v0, v1}, Lo/Ra;->a(Lo/Ra;Lo/ES;)V

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-virtual {v0}, Lo/Ra;->x()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;

    .line 35
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-virtual {v1}, Lo/Ra;->G()Lo/Rr$Activity;

    move-result-object v3

    const/4 v4, 0x0

    .line 36
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-virtual {v1, p1}, Lo/Ra;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object v5

    .line 37
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-static {v1}, Lo/Ra;->a(Lo/Ra;)Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

    move-result-object v6

    .line 39
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-static {v1}, Lo/Ra;->c(Lo/Ra;)Lo/UpdateEngine;

    move-result-object v7

    .line 40
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-static {v1}, Lo/Ra;->d(Lo/Ra;)Lo/ES;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Lo/amh;->c()V

    :cond_1
    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v9, p3

    .line 33
    invoke-direct/range {v1 .. v11}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;Lo/UpdateEngine;Lo/ES;Ljava/lang/String;ILo/amc;)V

    .line 42
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->getAdapter()Lo/OfLong;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1$Activity;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1$Activity;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {p2, v1}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 41
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    .line 52
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-virtual {p1}, Lo/Ra;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getAdapter()Lo/OfLong;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-virtual {p1}, Lo/Ra;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-virtual {v1}, Lo/Ra;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lo/Ra;->a(Ljava/lang/String;Ljava/lang/String;)Lo/Sz;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-virtual {p2}, Lo/Ra;->E()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->setData(Ljava/lang/Object;Z)V

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-virtual {p1, v0}, Lo/Ra;->e(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V

    .line 59
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    invoke-static {p1}, Lo/Ra;->d(Lo/Ra;)Lo/ES;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1, p3}, Lo/ES;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 58
    sget-object p2, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->c:Lo/Ra;

    check-cast p3, Lo/UnicodeScript;

    invoke-virtual {p2, p3}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p2

    invoke-virtual {p2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 60
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v2, 0x0

    .line 66
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1$2;->e:Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1$2;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 59
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
