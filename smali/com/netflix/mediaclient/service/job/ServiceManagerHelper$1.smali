.class Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;
.super Ljava/lang/Object;
.source "ServiceManagerHelper.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_job_svcmgr_helper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManagerReady result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$000(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_job_svcmgr_helper"

    const-string/jumbo v1, "got a callback even after the mServiceManager release"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerReady:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$102(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$200(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;->serviceManagerReady()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerFailed:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$102(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$200(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;->serviceManagerFailed()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_job_svcmgr_helper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManagerUnavailable result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerFailed:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$102(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-void
.end method
