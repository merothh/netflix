.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Activity;
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
.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Activity;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)V
    .locals 0

    .line 73
    invoke-virtual {p1}, Lo/Qv;->y()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Activity;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->toggleSelectedState(Lo/RZ;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Activity;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    .line 77
    invoke-virtual {p1}, Lo/Qv;->r()Lo/Tf;

    move-result-object p3

    .line 78
    invoke-virtual {p1}, Lo/Qv;->x()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    sget-object p4, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, p4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 76
    invoke-static {p2, p3, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->access$play(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/Tf;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :goto_0
    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 39
    check-cast p1, Lo/Qv;

    check-cast p2, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Activity;->b(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)V

    return-void
.end method
