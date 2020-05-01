.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$PendingIntent;
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
        "Lo/Qp;",
        "Lo/Qh$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$PendingIntent;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/Qp;Lo/Qh$Activity;Landroid/view/View;I)V
    .locals 6

    .line 102
    invoke-virtual {p1}, Lo/Qp;->o()Lo/Tf;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$PendingIntent;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getScreenLauncher()Lo/Rr$Activity;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    const-string p2, "it.type"

    invoke-static {v1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v2

    const-string p1, "it.playableId"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ma:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "StringUtils.getLocalized\u2026n_download_more_episodes)"

    invoke-static {v3, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->f()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    const-string p1, "PlayContextImp.createOfflineMyDownloadsContext()"

    invoke-static {v4, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ""

    .line 103
    invoke-interface/range {v0 .. v5}, Lo/Rr$Activity;->d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 39
    check-cast p1, Lo/Qp;

    check-cast p2, Lo/Qh$Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$PendingIntent;->c(Lo/Qp;Lo/Qh$Activity;Landroid/view/View;I)V

    return-void
.end method
