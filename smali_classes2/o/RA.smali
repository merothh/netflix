.class public final Lo/RA;
.super Lo/RB;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RA$Application;
    }
.end annotation


# static fields
.field public static final j:Lo/RA$Application;


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RA$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RA$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/RA;->j:Lo/RA$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lo/RB;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/RA;->f:Ljava/util/List;

    return-void
.end method

.method private final J()V
    .locals 7

    .line 92
    invoke-virtual {p0}, Lo/RA;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v0, Lo/KM;

    const-string v1, "downloadable"

    invoke-direct {v0, v1}, Lo/KM;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lo/RA;->ac_()Lo/Am;

    move-result-object v1

    const-string v3, "requireServiceManager()"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 99
    new-instance v6, Lo/RA$TaskDescription;

    invoke-direct {v6, p0}, Lo/RA$TaskDescription;-><init>(Lo/RA;)V

    check-cast v6, Lo/zU;

    .line 93
    invoke-virtual/range {v0 .. v6}, Lo/KM;->b(Lo/zG;Landroid/content/Context;IILjava/lang/String;Lo/zU;)V

    :cond_0
    return-void
.end method

.method private final S()V
    .locals 7

    .line 110
    invoke-virtual {p0}, Lo/RA;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Lo/KM;

    const-string v2, "downloadable"

    invoke-direct {v1, v2}, Lo/KM;-><init>(Ljava/lang/String;)V

    const-string v2, "serviceManager"

    .line 112
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 116
    new-instance v0, Lo/RA$Activity;

    sget-object v6, Lo/RA;->j:Lo/RA$Application;

    invoke-virtual {v6}, Lo/RA$Application;->getLogTag()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p0}, Lo/RA$Activity;-><init>(Ljava/lang/String;Lo/RA;)V

    move-object v6, v0

    check-cast v6, Lo/zU;

    .line 111
    invoke-virtual/range {v1 .. v6}, Lo/KM;->a(Lo/zG;Ljava/lang/String;IILo/zU;)Z

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lo/RA;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/RA;->S()V

    return-void
.end method

.method public static final synthetic b(Lo/RA;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/RA;->f:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public C()V
    .locals 1

    iget-object v0, p0, Lo/RA;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 13

    .line 28
    invoke-virtual {p0}, Lo/RA;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 29
    invoke-static {v11}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 30
    invoke-virtual {p0}, Lo/RA;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    new-instance v12, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;

    const-string v0, "activity"

    .line 32
    invoke-static {v11, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lo/RA;->e:Lio/reactivex/Observable;

    const-string v0, "mFragDestroy"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    .line 34
    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 35
    invoke-virtual {p0}, Lo/RA;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lo/BC;->isKidsProfile()Z

    move-result v0

    :goto_0
    move v5, v0

    .line 36
    invoke-virtual {p0}, Lo/RA;->G()Lo/Rr$Activity;

    move-result-object v6

    const/4 v7, 0x0

    .line 37
    invoke-virtual {p0, v11}, Lo/RA;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object v8

    const/16 v9, 0x48

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, v11

    .line 31
    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V

    .line 39
    invoke-virtual {v12}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->getAdapter()Lo/OfLong;

    move-result-object v0

    new-instance v1, Lo/RA$ActionBar;

    invoke-direct {v1, v11, p0}, Lo/RA$ActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/RA;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 38
    move-object v0, v12

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    .line 49
    :goto_1
    invoke-virtual {p0}, Lo/RA;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getAdapter()Lo/OfLong;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 51
    :cond_2
    invoke-virtual {p0, v0}, Lo/RA;->b(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    .line 53
    invoke-virtual {p0}, Lo/RA;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lo/RA;->a(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    .line 55
    invoke-direct {p0}, Lo/RA;->J()V

    goto :goto_2

    .line 53
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.offline.DownloadsListController<in com.netflix.mediaclient.ui.offline.DownloadsData>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public M()Lo/SK;
    .locals 3

    .line 77
    new-instance v0, Lo/SK;

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    const-string v2, "NetflixApplication.getInstance()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v1

    const-string v2, "NetflixApplication.getInstance().offlineUi"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/RJ;->b()Lo/Rq;

    move-result-object v1

    const-string v2, "NetflixApplication.getIn\u2026eUi.offlinePlayableUiList"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/Rq;->f()Ljava/util/List;

    move-result-object v1

    const-string v2, "NetflixApplication.getIn\u2026eUiList.listOfAdapterData"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lo/RA;->f:Ljava/util/List;

    .line 77
    invoke-direct {v0, v1, v2}, Lo/SK;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected a(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V
    .locals 3
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

    .line 61
    new-instance v0, Lo/SK;

    .line 62
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    const-string v2, "NetflixApplication.getInstance()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v1

    const-string v2, "NetflixApplication.getInstance().offlineUi"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/RJ;->b()Lo/Rq;

    move-result-object v1

    const-string v2, "NetflixApplication.getIn\u2026eUi.offlinePlayableUiList"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/Rq;->f()Ljava/util/List;

    move-result-object v1

    const-string v2, "NetflixApplication.getIn\u2026eUiList.listOfAdapterData"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 61
    invoke-direct {v0, v1, v2}, Lo/SK;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 67
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, v1}, Lo/RA;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 68
    invoke-virtual {v0}, Lo/SK;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lo/RA;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ViewSwitcher;

    invoke-interface {v1}, Lo/ViewSwitcher;->b()Lo/ViewSwitcher;

    .line 73
    :cond_0
    invoke-virtual {p0}, Lo/RA;->E()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->setData(Ljava/lang/Object;Z)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/RB;->onDestroyView()V

    invoke-virtual {p0}, Lo/RA;->C()V

    return-void
.end method

.method public synthetic x()Lo/QF;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/RA;->M()Lo/SK;

    move-result-object v0

    check-cast v0, Lo/QF;

    return-object v0
.end method
