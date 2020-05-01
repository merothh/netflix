.class Lo/nQ$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nI$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;)V
    .locals 0

    .line 1721
    iput-object p1, p0, Lo/nQ$10;->b:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1726
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "continueDownloadOnBackOff"

    .line 1727
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v0, p0, Lo/nQ$10;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->d(Lo/nQ;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1742
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "stopDownloadsNotAllowedByNetwork"

    .line 1743
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v0, p0, Lo/nQ$10;->b:Lo/nQ;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lo/nQ;->a(Lo/nQ;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1758
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "continueDownloadOnStreamingStopped"

    .line 1759
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v0, p0, Lo/nQ$10;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->d(Lo/nQ;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1734
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "continueDownloadOnNetworkChanged"

    .line 1735
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-object v0, p0, Lo/nQ$10;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->d(Lo/nQ;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1750
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "stopDownloadsNoNetwork"

    .line 1751
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v0, p0, Lo/nQ$10;->b:Lo/nQ;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lo/nQ;->a(Lo/nQ;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1766
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "stopDownloadOnStreamingStarted"

    .line 1767
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v0, p0, Lo/nQ$10;->b:Lo/nQ;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lo/nQ;->a(Lo/nQ;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1773
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "onDownloadResumeJob"

    .line 1774
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v0, p0, Lo/nQ$10;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->t(Lo/nQ;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lo/nQ$10;->b:Lo/nQ;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lo/nQ;->d(Lo/nQ;I)V

    :cond_0
    return-void
.end method
