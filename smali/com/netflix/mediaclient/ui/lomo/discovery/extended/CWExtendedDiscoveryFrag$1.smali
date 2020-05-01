.class Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "CWExtendedDiscoveryFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

.field final synthetic val$sm:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->val$sm:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_5

    :cond_0
    const-string/jumbo v0, "SPY-10074 - lolomoService didn\'t return titles for All Continue Watching"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->val$sm:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->val$sm:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-10074 - Coppola2 cell "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->val$sm:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCoppola2ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lolomoService didn\'t return titles for All Continue Watching"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with null requestedVideos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v1, "CWExtendedDiscoveryFrag"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->access$002(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
