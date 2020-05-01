.class public final Lo/RH;
.super Lo/RB;
.source ""


# instance fields
.field private final i:Lo/RH$StateListAnimator;

.field private j:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/RB;-><init>()V

    .line 12
    new-instance v0, Lo/RH$StateListAnimator;

    invoke-direct {v0, p0}, Lo/RH$StateListAnimator;-><init>(Lo/RH;)V

    iput-object v0, p0, Lo/RH;->i:Lo/RH$StateListAnimator;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    iget-object v0, p0, Lo/RH;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 10

    .line 28
    invoke-virtual {p0}, Lo/RH;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v8

    const-string v0, "requireNetflixActivity()"

    invoke-static {v8, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lo/RH;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 30
    invoke-virtual {p0}, Lo/RH;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v9, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    const-string v0, "profile"

    .line 32
    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lo/RH;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lo/BC;->isKidsProfile()Z

    move-result v0

    :goto_0
    move v3, v0

    .line 34
    invoke-virtual {p0}, Lo/RH;->G()Lo/Rr$Activity;

    move-result-object v4

    .line 35
    invoke-virtual {p0, v8}, Lo/RH;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object v5

    .line 36
    iget-object v0, p0, Lo/RH;->i:Lo/RH$StateListAnimator;

    move-object v6, v0

    check-cast v6, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;

    .line 37
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v7

    move-object v0, v9

    move-object v1, v8

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;Lio/reactivex/Observable;)V

    .line 39
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getAdapter()Lo/OfLong;

    move-result-object v0

    new-instance v1, Lo/RH$Activity;

    invoke-direct {v1, p0, v8}, Lo/RH$Activity;-><init>(Lo/RH;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 38
    move-object v0, v9

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    .line 48
    :goto_1
    invoke-virtual {p0}, Lo/RH;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getAdapter()Lo/OfLong;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 49
    :cond_2
    invoke-virtual {p0}, Lo/RH;->M()Lo/QH;

    move-result-object v1

    invoke-virtual {p0}, Lo/RH;->E()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->setData(Ljava/lang/Object;Z)V

    .line 50
    invoke-virtual {p0, v0}, Lo/RH;->b(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    :cond_3
    return-void
.end method

.method public M()Lo/QH;
    .locals 3

    .line 62
    new-instance v0, Lo/QH;

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

    invoke-direct {v0, v1}, Lo/QH;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/RB;->onDestroyView()V

    invoke-virtual {p0}, Lo/RH;->C()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lo/RH;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->clearAllDropdowns()V

    .line 58
    :cond_1
    invoke-super {p0}, Lo/RB;->onPause()V

    return-void
.end method

.method public synthetic x()Lo/QF;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/RH;->M()Lo/QH;

    move-result-object v0

    check-cast v0, Lo/QF;

    return-object v0
.end method
