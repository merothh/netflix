.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field private isFrombackground:Z

.field private final listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;Z)V
    .locals 1

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->isFrombackground:Z

    .line 1321
    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    .line 1322
    iput-boolean p3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->isFrombackground:Z

    .line 1323
    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 1331
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManagerReady, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 1336
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$102(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/offline/TutorialHelper;)Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    .line 1337
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isTablet()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    .line 1339
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startLaunchActivityIfVisible()V

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    .line 1346
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1349
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->onManagerReady()V

    .line 1352
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1354
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1356
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1357
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$402(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z

    .line 1358
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1367
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 1368
    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    if-eqz v1, :cond_4

    .line 1369
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1372
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1373
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1374
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1378
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1379
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 1382
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    if-eqz v0, :cond_6

    .line 1383
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1388
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1389
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1403
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-nez v0, :cond_7

    .line 1404
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->endUiStartupSession(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/media/PlayerType;)V

    .line 1406
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 1407
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1409
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->isFrombackground:Z

    if-eqz v0, :cond_8

    .line 1410
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMDXPostPlayOnResume()V

    .line 1417
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1419
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1421
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1422
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;->run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 1424
    :cond_9
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1429
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManagerUnavailable, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 1438
    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    if-eqz v1, :cond_2

    .line 1439
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1442
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    if-eqz v0, :cond_3

    .line 1445
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1448
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1449
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startLaunchActivityIfVisible()V

    .line 1452
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldFinishOnManagerError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1453
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1454
    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Finishing activity because manager error occured..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 1459
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1460
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;->notAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 1462
    :cond_7
    return-void
.end method
