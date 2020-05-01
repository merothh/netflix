.class final Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Application;->d:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 40
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Application;->d:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->access$getScreenLauncher$p(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)Lo/Rr$Activity;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Application;->d:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->access$getTitleId$p(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->f()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    const-string p1, "PlayContextImp.createOfflineMyDownloadsContext()"

    invoke-static {v4, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    const-string v5, ""

    .line 40
    invoke-interface/range {v0 .. v5}, Lo/Rr$Activity;->d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    return-void
.end method
