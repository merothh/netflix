.class Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->a(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lo/Am;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "nf_job_svcmgr_helper"

    const-string p2, "got a callback even after the mServiceManager release"

    .line 36
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object p2, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 54
    iget-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;->c()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object p2, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->a:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 57
    iget-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;->d()V

    :goto_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object p2, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->a:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-void
.end method
