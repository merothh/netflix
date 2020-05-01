.class public Lcom/netflix/mediaclient/ui/launch/LaunchActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final HANG_ON_LOADING_SCREEN:Z = false

.field private static final PREFERENCE_NON_MEMBER_PLAYBACK:Ljava/lang/String; = "prefs_non_member_playback"

.field private static final PROFILE_GATE_SHOULD_BE_SHOWN_TIMES:I = 0x2

.field private static final RC_READ:I = 0x2

.field private static final SMARTLOCK_TIMEOUT_MS:I = 0x7530

.field private static final START_DETAILS_ACTIVITY_ON_LAUNCH:Z = false

.field private static final TAG:Ljava/lang/String; = "LaunchActivity"

.field private static final sampleVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Video;


# instance fields
.field private isLoading:Z

.field private mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mHint:Ljava/lang/String;

.field private mIsErrorDialogVisible:Z

.field private mLoginWorkflowInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

.field private final mSmartLockTimeoutTask:Ljava/lang/Runnable;

.field private mSplashScreenStarted:J

.field private mStarted:J

.field private final nflxBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 935
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$6;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$6;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->sampleVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isLoading:Z

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mLoginWorkflowInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 464
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSmartLockTimeoutTask:Ljava/lang/Runnable;

    .line 663
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->nflxBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mIsErrorDialogVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mLoginWorkflowInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mHint:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->onCredentialRetrieved(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->resolveResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method

.method private canHandleIntent()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 628
    invoke-static {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->canHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->handle(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    .line 641
    :goto_0
    return-object v0

    .line 633
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {p0, v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->getHandlerForIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    .line 634
    invoke-interface {v0}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;->handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    .line 635
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->endCommandSessions(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Failed to parse nflx url "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method

.method private handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 3

    .prologue
    .line 856
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Login Complete - Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setRequestedOrientation(I)V

    .line 861
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_2

    .line 863
    :cond_1
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 864
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 870
    :goto_0
    return-void

    .line 866
    :cond_2
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Login failed, redirect to LoginActivity with credential and status"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserLoginWithError(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 868
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0
.end method

.method private handleManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 6

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "LaunchActivity::handleManagerReady: starts "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    .line 275
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSplashScreenStarted:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 276
    const-string/jumbo v2, "LaunchActivity"

    const-string/jumbo v3, "Splash screen was displayed, reporting"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->appLoading:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSplashScreenStarted:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;J)V

    .line 280
    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    :cond_2
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "LaunchActivity::handleManagerReady: user not logged in "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedIn(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 284
    :cond_3
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "LaunchActivity::handleManagerReady: user logged in "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserSignedIn(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method private handleUserLogin(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    .line 541
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 542
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 544
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "User is NOT logged in, redirect to Login screen"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    .line 548
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    .line 547
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 551
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 552
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mHint:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    const-string/jumbo v2, "email"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    :cond_1
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 557
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 562
    return-void
.end method

.method private handleUserLoginWithCredentials(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 830
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v5}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 831
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 832
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 834
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "User is NOT logged in, redirect to Login screen with login credentials"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 838
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    .line 837
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getPassword()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 852
    return-void
.end method

.method private handleUserLoginWithError(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .prologue
    .line 573
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 574
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 576
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "User is NOT logged in, redirect to Login screen"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    .line 580
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    .line 579
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 583
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 585
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 590
    return-void
.end method

.method private handleUserNotSignedIn(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 4

    .prologue
    .line 436
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "handleUserNotSignedIn starts"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isAutoLoginEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Google Play Services are available, try to retrieve credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 446
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 448
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 450
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 451
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 454
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSmartLockTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_2
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Google Play Services are not available, go with regular workflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method private handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->resetTimeout()V

    .line 492
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 493
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isSignUpEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->hasSignedUpOnce()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 494
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserSignUp(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserLogin(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method private handleUserSignUp(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    .line 517
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "User has not signed up, redirect to Signup screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 519
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 521
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->signupPrompt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    .line 523
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    .line 522
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createStartIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 527
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 532
    return-void
.end method

.method private handleUserSignedIn(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->canHandleIntent()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    .line 310
    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne v0, v1, :cond_1

    .line 311
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Handled by nflx workflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 326
    :goto_0
    return-void

    .line 313
    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne v0, v1, :cond_2

    .line 314
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Handled by nflx workflow with delay. Stay on splash screen..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldProfileGateBeShown(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showProfileGate(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 323
    :cond_4
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showStartPageForSignedInUser(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method public static isSignUpEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 1

    .prologue
    .line 508
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 509
    :cond_0
    const/4 v0, 0x0

    .line 511
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->isSignUpEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private onCredentialRetrieved(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 3

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->resetTimeout()V

    .line 814
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Google Play Services: Credential Retrieved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Google Play Services: Credential name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Google Play Services: Credential account type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    const-string/jumbo v0, "Google Play Services: Credential Retrieved"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserLoginWithCredentials(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 822
    return-void
.end method

.method private registerNflxReceiver()V
    .locals 5

    .prologue
    .line 653
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->nflxBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "LocalIntentNflxUi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 655
    return-void
.end method

.method private resetTimeout()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mLoginWorkflowInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSmartLockTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method private resolveResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 776
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    const-string/jumbo v0, "LaunchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Google Play Services: Resolving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    const/4 v0, 0x0

    .line 782
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    const-string/jumbo v2, "LaunchActivity"

    const-string/jumbo v3, "Google Play Services: STATUS: RESOLVING"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_0
    if-eqz v0, :cond_1

    .line 797
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Failed to initiate resolve, start regular user not signed in workflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(Lcom/google/android/gms/common/api/Status;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 799
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 800
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 801
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 803
    :cond_1
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    const-string/jumbo v2, "LaunchActivity"

    const-string/jumbo v3, "Google Play Services: STATUS: Failed to send resolution."

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 789
    goto :goto_0

    .line 791
    :cond_2
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v2, "Google Play Services: STATUS: FAIL"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string/jumbo v0, "Google Play Services: Could Not Resolve Error"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    move v0, v1

    .line 793
    goto :goto_0
.end method

.method private shouldDisplayOfflineContent(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 394
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Network connectivity exist, go to LOLOMO"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return v0

    .line 399
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Offline feature not available!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 406
    const-string/jumbo v2, "LaunchActivity"

    const-string/jumbo v3, "Network connectivity do NOT exist, we have %d offline titles available, load Offline UI..."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 407
    goto :goto_0

    .line 410
    :cond_2
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Network connectivity do NOT exist, we do NOT have any offline titles available, load LOLOMO..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldProfileGateBeShown(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    if-nez p1, :cond_1

    .line 602
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "shouldProfileGateBeShown was called with null manager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    :goto_0
    return v2

    .line 606
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;

    if-nez v0, :cond_3

    move v0, v1

    .line 609
    :goto_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldDisplayOfflineContent(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 610
    const-string/jumbo v0, "user_saw_profile_gate"

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 611
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    move v2, v1

    .line 613
    :cond_2
    if-eqz v2, :cond_0

    .line 614
    const-string/jumbo v1, "user_saw_profile_gate"

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 606
    goto :goto_1
.end method

.method private showProfileGate(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 337
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 339
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 341
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 344
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntentForAppRestart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 345
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 346
    return-void
.end method

.method private showStartPageForSignedInUser(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 355
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 356
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 358
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldDisplayOfflineContent(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Redirect to offline activity with profile %s, %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 366
    :goto_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldShowEogAlert(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v1

    .line 368
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 379
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 383
    return-void

    .line 362
    :cond_2
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Redirect to home with profile %s, %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 363
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startNextActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 647
    invoke-virtual {p0, v0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->overridePendingTransition(II)V

    .line 649
    return-void
.end method

.method private unregisterNflxReceiver()V
    .locals 2

    .prologue
    .line 659
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Unregistering Nflx receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->nflxBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 661
    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_MANAGER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    return-object v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_LIFE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 245
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 247
    return-void
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 690
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->appLoading:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleAccountDeactivated()V
    .locals 2

    .prologue
    .line 932
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Account deactivated ..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method protected handleProfileReadyToSelect()V
    .locals 2

    .prologue
    .line 925
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "New profile requested - starting profile selection activity..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 927
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->finishAllAccountActivities(Landroid/content/Context;)V

    .line 928
    return-void
.end method

.method protected isAutoLoginEnabled()Z
    .locals 1

    .prologue
    .line 419
    invoke-static {p0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isLoading:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 888
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 890
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 895
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 896
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "onActivityResult: conflict resolved"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string/jumbo v0, "com.google.android.gms.credentials.Credential"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 898
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->onCredentialRetrieved(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 918
    :goto_0
    return-void

    .line 900
    :cond_1
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Credential Read: NOT OK"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string/jumbo v0, "Google Play Services: Credential Read Failed"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 903
    invoke-static {p2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(I)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 904
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 905
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 907
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 910
    :cond_2
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult: uknown request code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(I)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 913
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 914
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 916
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 722
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "onConnected, retrieve credentials if any"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 728
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setSupportsPasswordLogin(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    move-result-object v0

    .line 731
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 767
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 709
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 714
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 878
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionSuspended:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 884
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    .line 144
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    if-nez p1, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldStartPerformanceLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->clear()V

    .line 148
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 151
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_LIFE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 154
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    const-string/jumbo v0, "LaunchActivity"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 156
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->registerNflxReceiver()V

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Service is ready, just use loading view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/fragment/LoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setContentView(Landroid/view/View;)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_3
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Service is NOT ready, use splash screen... nf_config: splashscreen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSplashScreenStarted:J

    .line 168
    const v0, 0x7f0300ff

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 206
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->unregisterNflxReceiver()V

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 211
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPause()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mIsErrorDialogVisible:Z

    .line 201
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 186
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mIsErrorDialogVisible:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mIsErrorDialogVisible:Z

    .line 195
    :cond_0
    return-void
.end method

.method protected shouldCreateUiSessions()Z
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldFinishOnManagerError()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldStartPerformanceLogging()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method protected showMdxInMenu()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method
