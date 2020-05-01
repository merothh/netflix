.class public final Lo/RD;
.super Lo/RB;
.source ""


# instance fields
.field private j:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/RB;-><init>()V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    iget-object v0, p0, Lo/RD;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 12

    .line 8
    invoke-virtual {p0}, Lo/RD;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 9
    invoke-static {v10}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0}, Lo/RD;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v11, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;

    const-string v0, "activity"

    .line 12
    invoke-static {v10, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    .line 13
    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0}, Lo/RD;->g()Ljava/lang/Boolean;

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

    .line 15
    invoke-virtual {p0}, Lo/RD;->G()Lo/Rr$Activity;

    move-result-object v5

    const/4 v6, 0x0

    .line 16
    invoke-virtual {p0, v10}, Lo/RD;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object v7

    const/16 v8, 0x24

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, v10

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V

    .line 18
    invoke-virtual {v11}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getAdapter()Lo/OfLong;

    move-result-object v0

    new-instance v1, Lo/RD$ActionBar;

    invoke-direct {v1, v10, p0}, Lo/RD$ActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/RD;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 17
    move-object v0, v11

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    .line 27
    :goto_1
    invoke-virtual {p0}, Lo/RD;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getAdapter()Lo/OfLong;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 29
    :cond_2
    invoke-virtual {p0, v0}, Lo/RD;->a(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    .line 31
    invoke-virtual {p0, v0}, Lo/RD;->b(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    :cond_3
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/RB;->onDestroyView()V

    invoke-virtual {p0}, Lo/RD;->C()V

    return-void
.end method
