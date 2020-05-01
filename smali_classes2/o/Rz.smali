.class public final Lo/Rz;
.super Lo/RB;
.source ""


# instance fields
.field private i:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lo/RB;-><init>()V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    iget-object v0, p0, Lo/Rz;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 14

    .line 11
    invoke-virtual {p0}, Lo/Rz;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 12
    invoke-static {v12}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p0}, Lo/Rz;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "activity"

    .line 14
    invoke-static {v12, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    .line 15
    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0}, Lo/Rz;->g()Ljava/lang/Boolean;

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

    .line 17
    invoke-virtual {p0}, Lo/Rz;->G()Lo/Rr$Activity;

    move-result-object v5

    const/4 v6, 0x0

    .line 18
    invoke-virtual {p0, v12}, Lo/Rz;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object v7

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;->d()Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    move-result-object v8

    .line 41
    new-instance v0, Lo/Rz$TaskDescription;

    invoke-direct {v0, p0}, Lo/Rz$TaskDescription;-><init>(Lo/UnicodeScript;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v9

    const-string v0, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {v9, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x24

    const/4 v11, 0x0

    .line 13
    new-instance v13, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    move-object v0, v13

    move-object v1, v12

    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;ILo/amc;)V

    .line 22
    invoke-virtual {v13}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->getAdapter()Lo/OfLong;

    move-result-object v0

    new-instance v1, Lo/Rz$ActionBar;

    invoke-direct {v1, v12, p0}, Lo/Rz$ActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Rz;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 21
    move-object v0, v13

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    .line 31
    :goto_1
    invoke-virtual {p0}, Lo/Rz;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getAdapter()Lo/OfLong;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 33
    :cond_2
    invoke-virtual {p0, v0}, Lo/Rz;->a(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    .line 35
    invoke-virtual {p0, v0}, Lo/Rz;->b(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    :cond_3
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/RB;->onDestroyView()V

    invoke-virtual {p0}, Lo/Rz;->C()V

    return-void
.end method
