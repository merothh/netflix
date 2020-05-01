.class final Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Ljava/lang/String;)V
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
        "Lo/QD;",
        "Lo/QB$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$StateListAnimator;->b:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 21
    check-cast p1, Lo/QD;

    check-cast p2, Lo/QB$Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$StateListAnimator;->e(Lo/QD;Lo/QB$Activity;Landroid/view/View;I)V

    return-void
.end method

.method public final e(Lo/QD;Lo/QB$Activity;Landroid/view/View;I)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Lo/QD;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$StateListAnimator;->b:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->toggleSelectedState(Lo/RZ;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$StateListAnimator;->b:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->access$getScreenLauncher$p(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)Lo/Rr$Activity;

    move-result-object p2

    .line 55
    invoke-virtual {p1}, Lo/QD;->x()Ljava/lang/String;

    move-result-object p3

    const-string p4, "model.playableId()"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lo/QD;->w()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p4

    const-string v0, "model.videoType()"

    invoke-static {p4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lo/QD;->B()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 54
    invoke-interface {p2, p3, p4, p1}, Lo/Rr$Activity;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :goto_0
    return-void
.end method
