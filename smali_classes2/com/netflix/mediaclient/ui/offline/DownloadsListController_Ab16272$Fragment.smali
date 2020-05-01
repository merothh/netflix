.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Fragment;
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
        "Lo/Sp;",
        "Lo/Sr$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Fragment;->e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 39
    check-cast p1, Lo/Sp;

    check-cast p2, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Fragment;->e(Lo/Sp;Lo/Sr$ActionBar;Landroid/view/View;I)V

    return-void
.end method

.method public final e(Lo/Sp;Lo/Sr$ActionBar;Landroid/view/View;I)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Fragment;->e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getListener()Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Fragment;->e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->access$getOptInBoxArtList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;->b(Ljava/util/List;)V

    return-void
.end method
