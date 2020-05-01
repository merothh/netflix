.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
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
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Dialog;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/QD;

    check-cast p2, Lo/QB$Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Dialog;->e(Lo/QD;Lo/QB$Activity;Landroid/view/View;I)V

    return-void
.end method

.method public final e(Lo/QD;Lo/QB$Activity;Landroid/view/View;I)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lo/QD;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Dialog;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->toggleSelectedState(Lo/RZ;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Dialog;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->access$getScreenLauncher$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)Lo/Rr$Activity;

    move-result-object p2

    .line 54
    invoke-virtual {p1}, Lo/QD;->x()Ljava/lang/String;

    move-result-object p3

    const-string p4, "model.playableId()"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lo/QD;->w()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p4

    const-string v0, "model.videoType()"

    invoke-static {p4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lo/QD;->B()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 53
    invoke-interface {p2, p3, p4, p1}, Lo/Rr$Activity;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :goto_0
    return-void
.end method
