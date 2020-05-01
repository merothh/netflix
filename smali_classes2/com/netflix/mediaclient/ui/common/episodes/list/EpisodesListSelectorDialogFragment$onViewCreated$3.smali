.class public final Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dn;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic a:Lo/Dn;

.field final synthetic d:J


# direct methods
.method public constructor <init>(Lo/Dn;J)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;->a:Lo/Dn;

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;->d:J

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v0, "safeNetflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeVideoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCurrentEpisodeId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;->a:Lo/Dn;

    new-instance v11, Lo/Do;

    .line 99
    invoke-static {v0}, Lo/Dn;->a(Lo/Dn;)Landroid/widget/FrameLayout;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;->a:Lo/Dn;

    invoke-static {v1}, Lo/Dn;->d(Lo/Dn;)Landroid/widget/FrameLayout;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    .line 102
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;->a:Lo/Dn;

    invoke-static {v1}, Lo/Dn;->e(Lo/Dn;)Lo/UpdateEngine;

    move-result-object v6

    .line 103
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;->a:Lo/Dn;

    invoke-static {v1}, Lo/Dn;->b(Lo/Dn;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-string v2, "destroyObservable"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    check-cast v7, Lio/reactivex/Observable;

    .line 105
    iget-wide v9, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;->d:J

    move-object v1, v11

    move-object v2, p1

    move-object v5, p3

    move-object v8, p2

    .line 97
    invoke-direct/range {v1 .. v10}, Lo/Do;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;Lo/UpdateEngine;Lio/reactivex/Observable;Ljava/lang/String;J)V

    invoke-static {v0, v11}, Lo/Dn;->a(Lo/Dn;Lo/Do;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
