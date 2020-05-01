.class public final Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rc;->D()V
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
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Rc;


# direct methods
.method public constructor <init>(Lo/Rc;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileGuid"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {v0}, Lo/Rc;->x()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    .line 106
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {v1}, Lo/Rc;->G()Lo/Rr$Activity;

    move-result-object v3

    const/4 v4, 0x0

    .line 107
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {v1, p1}, Lo/Rc;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v6, p3

    .line 104
    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Ljava/lang/String;ILo/amc;)V

    .line 110
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getAdapter()Lo/OfLong;

    move-result-object p2

    new-instance p3, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1$Activity;

    invoke-direct {p3, p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1$Activity;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {p2, p3}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {p1}, Lo/Rc;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getAdapter()Lo/OfLong;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    .line 124
    invoke-virtual {p1}, Lo/Rc;->c()Ljava/lang/String;

    move-result-object p2

    .line 125
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {p3}, Lo/Rc;->g()Ljava/lang/String;

    move-result-object p3

    .line 123
    invoke-virtual {p1, p2, p3}, Lo/Rc;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Qk;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {p2}, Lo/Rc;->E()Z

    move-result p2

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->setData(Ljava/lang/Object;Z)V

    .line 129
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {p1, v0}, Lo/Rc;->e(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
