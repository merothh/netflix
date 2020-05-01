.class public Lcom/netflix/mediaclient/ui/login/LogoutActivity;
.super Lcom/netflix/mediaclient/ui/login/AccountActivity;
.source "LogoutActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogoutActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/login/LogoutActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->handleLogoutComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/login/LogoutActivity;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private handleLogoutComplete()V
    .locals 3

    const-string/jumbo v0, "LogoutActivity"

    const-string/jumbo v1, "Handling logout completion..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080205

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "handleLogoutComplete()"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->relaunchApp(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static relaunchApp(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LogoutActivity"

    const-string/jumbo v1, "ServiceManager is null - can\'t flush caches!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->flushCaches()Z

    goto :goto_0
.end method

.method private reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    return-void
.end method

.method public static showLogoutDialog(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080120

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080204

    new-instance v2, Lcom/netflix/mediaclient/ui/login/LogoutActivity$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity$2;-><init>(Lcom/netflix/mediaclient/ui/login/LogoutActivity;)V

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected shouldReportNavigationActionEndedOnStop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
