.class Lo/nQ$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pa$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 7

    .line 1683
    iget-object v0, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->t(Lo/nQ;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1684
    :cond_0
    iget-object v0, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->p(Lo/nQ;)Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->S()Z

    move-result v0

    const-string v1, "nf_offlineAgent"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1686
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "onStorageAddedOrRemoved ignored disabledFromConfig=%b"

    invoke-static {v1, v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 1691
    :cond_1
    iget-object v0, p0, Lo/nQ$9;->a:Lo/nQ;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v4}, Lo/nQ;->b(Lo/nQ;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result v0

    .line 1692
    iget-object v4, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v4}, Lo/nQ;->e(Lo/nQ;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    move-result-object v4

    iget-object v5, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v5}, Lo/nQ;->a(Lo/nQ;)Lo/pa;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Lo/pa;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 1693
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "onStorageAddedOrRemoved state=%s"

    invoke-static {v1, v6, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1694
    sget-object v1, Lo/nQ$13;->b:[I

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v3, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 1704
    :cond_2
    iget-object v1, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v1, v2}, Lo/nQ;->a(Lo/nQ;Z)Z

    .line 1705
    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->d:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    if-ne v4, v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->f:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 1708
    :goto_0
    iget-object v2, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-virtual {v2}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v2

    invoke-static {v2, v1}, Lo/oS;->c(Lo/zS;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    goto :goto_1

    .line 1699
    :cond_4
    iget-object v1, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v1, v3}, Lo/nQ;->a(Lo/nQ;Z)Z

    .line 1700
    iget-object v1, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v1}, Lo/nQ;->s(Lo/nQ;)V

    goto :goto_1

    .line 1696
    :cond_5
    iget-object v1, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v1, v2}, Lo/nQ;->a(Lo/nQ;Z)Z

    :goto_1
    if-eqz v0, :cond_6

    .line 1713
    iget-object v0, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->d(Lo/nQ;)V

    .line 1715
    :cond_6
    iget-object v0, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->e(Lo/nQ;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a()I

    move-result v0

    .line 1716
    iget-object v1, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-virtual {v1}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v1

    invoke-static {v1, v0}, Lo/oS;->a(Lo/zS;I)V

    .line 1717
    iget-object v0, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->v(Lo/nQ;)Lo/nW;

    move-result-object v0

    iget-object v1, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-virtual {v1}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lo/nQ$9;->a:Lo/nQ;

    invoke-static {v2}, Lo/nQ;->c(Lo/nQ;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/nW;->e(Landroid/os/Handler;Z)V

    return-void
.end method
