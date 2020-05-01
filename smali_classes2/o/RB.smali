.class public Lo/RB;
.super Lo/Rr;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RB$Application;,
        Lo/RB$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/RB$TaskDescription;


# instance fields
.field private f:Lo/QO;

.field private i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
            "-",
            "Lo/QF;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Boolean;

.field private m:Ljava/util/HashMap;

.field private o:Lo/RB$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RB$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RB$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/RB;->b:Lo/RB$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/Rr;-><init>()V

    return-void
.end method

.method public static final synthetic d(Lo/RB;Lo/RB$Application;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/RB;->o:Lo/RB$Application;

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 3

    .line 176
    iget-object v0, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lo/RB;->x()Lo/QF;

    move-result-object v1

    invoke-virtual {p0}, Lo/RB;->E()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->setData(Ljava/lang/Object;Z)V

    .line 179
    invoke-virtual {p0}, Lo/RB;->ad_()Z

    .line 180
    invoke-virtual {p0}, Lo/RB;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Serializable;->invalidateOptionsMenu()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lo/RB;->D()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected B()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getHasVideos()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lo/RB;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 11

    .line 119
    invoke-virtual {p0}, Lo/RB;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 120
    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v1, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    new-instance v10, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    const-string v1, "profile"

    .line 124
    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lo/RB;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v2}, Lo/BC;->isKidsProfile()Z

    move-result v1

    :goto_0
    move v4, v1

    .line 127
    invoke-virtual {p0}, Lo/RB;->G()Lo/Rr$Activity;

    move-result-object v5

    const/4 v6, 0x0

    const-string v1, "activity"

    .line 128
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/RB;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object v7

    const/16 v8, 0x12

    const/4 v9, 0x0

    move-object v1, v10

    .line 123
    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V

    .line 130
    invoke-virtual {v10}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getAdapter()Lo/OfLong;

    move-result-object v1

    new-instance v2, Lo/RB$ActionBar;

    invoke-direct {v2, v0, p0}, Lo/RB$ActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/RB;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {v1, v2}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    move-object v1, v10

    .line 140
    :goto_1
    invoke-virtual {p0}, Lo/RB;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getAdapter()Lo/OfLong;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 142
    :cond_2
    invoke-virtual {p0, v1}, Lo/RB;->a(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    .line 144
    iput-object v1, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    :cond_3
    return-void
.end method

.method protected a(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
            "-",
            "Lo/QF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadsListController"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lo/RB;->x()Lo/QF;

    move-result-object v0

    .line 153
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, v1}, Lo/RB;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 154
    invoke-virtual {v0}, Lo/QF;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lo/RB;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ViewSwitcher;

    invoke-interface {v1}, Lo/ViewSwitcher;->b()Lo/ViewSwitcher;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lo/RB;->E()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->setData(Ljava/lang/Object;Z)V

    return-void
.end method

.method public ad_()Z
    .locals 6

    .line 191
    iget-object v0, p0, Lo/RB;->f:Lo/QO;

    if-nez v0, :cond_0

    const-string v1, "actionBarManager"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lo/RB;->E()Z

    move-result v1

    iget-object v2, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/QE;->b(Lo/QE;ZLjava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
            "-",
            "Lo/QF;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    return-void
.end method

.method protected final c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
            "-",
            "Lo/QF;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    return-object v0
.end method

.method protected final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lo/RB$Activity;

    invoke-direct {v0, p0, p1}, Lo/RB$Activity;-><init>(Lo/RB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    return-object v0
.end method

.method public e(Lo/Bi;I)V
    .locals 0

    const-string p2, "offlinePlayableViewData"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final g()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/RB;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Lo/Rr;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lo/QO;

    invoke-virtual {p0}, Lo/RB;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-string v2, "requireNetflixActivity()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/QO;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lo/RB;->f:Lo/QO;

    if-eqz p1, :cond_0

    const-string v0, "show_only_current_profile"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/RB;->j:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lo/RB;->E()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo/RB;->d(Landroid/view/Menu;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lo/RB;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lo/RB;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lo/RB$StateListAnimator;

    invoke-direct {v1, p0}, Lo/RB$StateListAnimator;-><init>(Lo/RB;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 55
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/Rr;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/RB;->o:Lo/RB$Application;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/RB$Application;->a()V

    .line 216
    :cond_0
    invoke-super {p0}, Lo/Rr;->onDestroyView()V

    .line 217
    invoke-virtual {p0}, Lo/RB;->C()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-super {p0, p1}, Lo/Rr;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getShowOnlyCurrentProfile()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/RB;->j:Ljava/lang/Boolean;

    .line 203
    iget-object v0, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getShowOnlyCurrentProfile()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "show_only_current_profile"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2}, Lo/Rr;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lo/RB;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    sget-object p2, Lo/ab;->d:Lo/ab$StateListAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "it.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lo/ab$StateListAnimator;->c(Landroid/content/Context;)Lo/ab;

    move-result-object p2

    const-string v0, "downloads_scroll"

    invoke-interface {p2, p1, v0}, Lo/ab;->d(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 72
    sget-object v0, Lcom/netflix/cl/model/AppView;->cachedVideos:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 68
    sget-object v0, Lo/gG;->c:Lo/gG$Application;

    invoke-virtual {v0}, Lo/gG$Application;->e()Z

    move-result v0

    return v0
.end method

.method protected v()I
    .locals 1

    .line 75
    iget-object v0, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getSelectedItemsCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;
    .locals 1

    .line 220
    iget-object v0, p0, Lo/RB;->o:Lo/RB$Application;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    return-object v0
.end method

.method public x()Lo/QF;
    .locals 3

    .line 187
    new-instance v0, Lo/QF;

    invoke-virtual {p0}, Lo/RB;->F()Lo/RJ;

    move-result-object v1

    invoke-virtual {v1}, Lo/RJ;->b()Lo/Rq;

    move-result-object v1

    const-string v2, "offlineUI.offlinePlayableUiList"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/Rq;->f()Ljava/util/List;

    move-result-object v1

    const-string v2, "offlineUI.offlinePlayableUiList.listOfAdapterData"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/QF;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected y()V
    .locals 3

    .line 83
    iget-object v0, p0, Lo/RB;->i:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 84
    :goto_0
    invoke-virtual {p0}, Lo/RB;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    .line 85
    :cond_1
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2$deleteSelected$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2$deleteSelected$1;-><init>(Lo/RB;)V

    check-cast v2, Lo/alN;

    .line 82
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method
