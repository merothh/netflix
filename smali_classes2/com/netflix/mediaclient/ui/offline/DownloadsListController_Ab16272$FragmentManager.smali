.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/LongStream<",
        "Lo/Qv;",
        "Lo/Qt$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$FragmentManager;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Lo/Qv;->r()Lo/Tf;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$FragmentManager;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->access$getAllEpisodesList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1}, Lo/Tf;->aq()Lo/BY;

    move-result-object p1

    iget-object p1, p1, Lo/BY;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$FragmentManager;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->requestModelBuild()V

    :cond_0
    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 39
    check-cast p1, Lo/Qv;

    check-cast p2, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$FragmentManager;->a(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)V

    return-void
.end method