.class public final Lo/RI;
.super Lo/RB;
.source ""


# instance fields
.field private f:Lo/UpdateEngine;

.field private i:Ljava/util/HashMap;

.field private final j:Lo/RI$ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lo/RB;-><init>()V

    .line 11
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/RI;->f:Lo/UpdateEngine;

    .line 13
    new-instance v0, Lo/RI$ActionBar;

    invoke-direct {v0, p0}, Lo/RI$ActionBar;-><init>(Lo/RI;)V

    iput-object v0, p0, Lo/RI;->j:Lo/RI$ActionBar;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    iget-object v0, p0, Lo/RI;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 14

    .line 32
    invoke-virtual {p0}, Lo/RI;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v12

    const-string v0, "requireNetflixActivity()"

    invoke-static {v12, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lo/RI;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {p0}, Lo/RI;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v13, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    const-string v0, "profile"

    .line 36
    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Lo/RI;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lo/BC;->isKidsProfile()Z

    move-result v0

    :goto_0
    move v4, v0

    .line 38
    invoke-virtual {p0}, Lo/RI;->G()Lo/Rr$Activity;

    move-result-object v5

    const/4 v6, 0x0

    .line 39
    invoke-virtual {p0, v12}, Lo/RI;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object v7

    .line 40
    iget-object v0, p0, Lo/RI;->j:Lo/RI$ActionBar;

    move-object v8, v0

    check-cast v8, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;

    .line 41
    iget-object v0, p0, Lo/RI;->f:Lo/UpdateEngine;

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v9

    const/16 v10, 0x24

    const/4 v11, 0x0

    move-object v0, v13

    move-object v1, v12

    .line 34
    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;ILo/amc;)V

    .line 43
    invoke-virtual {v13}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getAdapter()Lo/OfLong;

    move-result-object v0

    new-instance v1, Lo/RI$StateListAnimator;

    invoke-direct {v1, p0, v12}, Lo/RI$StateListAnimator;-><init>(Lo/RI;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 42
    move-object v0, v13

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    .line 53
    :goto_1
    invoke-virtual {p0}, Lo/RI;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getAdapter()Lo/OfLong;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 55
    :cond_2
    invoke-virtual {p0, v0}, Lo/RI;->a(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    .line 57
    invoke-virtual {p0, v0}, Lo/RI;->b(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    :cond_3
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/RB;->onDestroyView()V

    invoke-virtual {p0}, Lo/RI;->C()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lo/RI;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->clearAllDropdowns()V

    .line 65
    :cond_1
    invoke-super {p0}, Lo/RB;->onPause()V

    return-void
.end method
