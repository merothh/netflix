.class public Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;
.super Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;
.source "EmailPasswordFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "EmailPasswordFragment"

.field private static final LOGIN_HELP_URL:Ljava/lang/String; = "https://signup.netflix.com/loginhelp"

.field private static final MIN_PASSWORD_CHARS:I = 0x4


# instance fields
.field private mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mEmailEditText:Landroid/widget/EditText;

.field private final mHandler:Landroid/os/Handler;

.field private mLoginButton:Landroid/view/View;

.field private mLoginForm:Landroid/view/View;

.field private final mLoginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mSaveCredentials:Z

.field private mStatusGroup:Landroid/view/View;

.field private mStatusMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 472
    new-instance v0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->attemptLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->onForgotPassword()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->resolveResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    return-object v0
.end method

.method private attemptLogin()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 227
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->passwordIsInvalid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportCancel(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    move v1, v2

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->emailIsInvalid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportCancel(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    move v1, v2

    .line 255
    :cond_1
    if-eqz v1, :cond_3

    .line 256
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const-string/jumbo v1, "LoginBaseFragment"

    const-string/jumbo v2, "There was an error - skipping login and showing error msg"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 279
    :goto_0
    return-void

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 263
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_5

    .line 264
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->noConnectivityWarning()V

    goto :goto_0

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->lockScreenToSensorOrientation(Landroid/app/Activity;)V

    .line 270
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mStatusMessageView:Landroid/widget/TextView;

    const v5, 0x7f08023b

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 271
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->showProgress(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 273
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 274
    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 276
    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    invoke-virtual {v0, v3, v4, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private connectToSmartLock()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 122
    :cond_0
    return-void
.end method

.method private declared-synchronized doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 3

    .prologue
    .line 419
    monitor-enter p0

    if-nez p1, :cond_1

    .line 420
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "GPS client is null, unable to try to save credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 426
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mSaveCredentials:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "Trying to save credentials to GPS"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mSaveCredentials:Z

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 436
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "Credential is empty, do not save it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 442
    :cond_4
    :try_start_2
    new-instance v2, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    .line 446
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$6;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private emailIsInvalid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    .line 300
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDynecomSignInEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 306
    :goto_0
    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 303
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private getCredentialAndState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 496
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string/jumbo v1, "password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    const-string/jumbo v2, "LoginBaseFragment"

    const-string/jumbo v3, "We received credential"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_1
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    .line 510
    if-eqz v0, :cond_2

    .line 511
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    const-string/jumbo v1, "LoginBaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We received error status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_2
    return-void
.end method

.method private handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 325
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string/jumbo v0, "LoginBaseFragment"

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

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    .line 331
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_2

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 333
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const v1, 0x7f080203

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->saveCredentials()V

    .line 340
    :goto_0
    return-void

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->showProgress(Z)V

    goto :goto_0
.end method

.method private handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const-string/jumbo v0, "LoginBaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling user agent errors, res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 371
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_RETRY:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_2

    .line 372
    :cond_1
    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 374
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 389
    :goto_0
    return-object v0

    .line 376
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_3

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080238

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 379
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_4

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08023a

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 383
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;-><init>()V

    .line 92
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v0
.end method

.method private noConnectivityWarning()V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onForgotPassword()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "https://signup.netflix.com/loginhelp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    const v0, 0x7f080230

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "https://signup.netflix.com/loginhelp"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method private passwordIsInvalid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    :cond_0
    move v3, v1

    .line 314
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDynecomSignInEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 315
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_5

    .line 317
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->isPasswordValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 320
    :goto_1
    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v3, v2

    .line 311
    goto :goto_0

    :cond_4
    move v0, v2

    .line 317
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private reportCancel(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 359
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    .line 360
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 361
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 362
    return-void
.end method

.method private reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 348
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 350
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 351
    return-void
.end method

.method private resolveResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 524
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const-string/jumbo v0, "LoginBaseFragment"

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

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 530
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v2, "Google Play Services: STATUS: RESOLVING"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    const/4 v0, 0x0

    .line 550
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;->handleBackToRegularWorkflow()V

    .line 553
    :cond_2
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const-string/jumbo v2, "LoginBaseFragment"

    const-string/jumbo v3, "Google Play Services: STATUS: Failed to send resolution."

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(Lcom/google/android/gms/common/api/Status;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    move v0, v1

    .line 540
    goto :goto_0

    .line 542
    :cond_3
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v2, "Google Play Services: STATUS: FAIL"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string/jumbo v2, "Google Play Services: Could Not Resolve Error"

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(Lcom/google/android/gms/common/api/Status;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    move v0, v1

    goto :goto_0

    .line 547
    :cond_4
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v2, "NetflixActivity is null -  skipping startResolutionForResult"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized saveCredentials()V
    .locals 4

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "SmartLock is disabled or device does not support GPS"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 400
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 401
    if-nez v0, :cond_2

    .line 402
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "GPS client unavailable, unable to attempt to save credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 408
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    const-string/jumbo v1, "LoginBaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GPS client is connected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or connecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mSaveCredentials:Z

    .line 412
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private showProgress(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 215
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mStatusGroup:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginForm:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginButton:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    return-void

    :cond_1
    move v0, v2

    .line 215
    goto :goto_0

    :cond_2
    move v2, v1

    .line 216
    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getCredentialAndState(Landroid/os/Bundle;)V

    .line 110
    :cond_0
    return-void
.end method

.method public declared-synchronized onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    monitor-exit p0

    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 566
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const-string/jumbo v0, "LoginBaseFragment"

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

    .line 569
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 570
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 582
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const-string/jumbo v0, "LoginBaseFragment"

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

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 588
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "EmailPasswordFragment onCreateView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    const v0, 0x7f03008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->setupViews(Landroid/view/View;)V

    .line 132
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->connectToSmartLock()V

    .line 133
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onDetach()V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 562
    :cond_0
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 99
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "EmailPasswordFragment onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0f01d6

    .line 137
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->setupViews(Landroid/view/View;)V

    .line 138
    const v0, 0x7f0f01da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 141
    const v0, 0x7f0f01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    .line 142
    const v0, 0x7f0f01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginForm:Landroid/view/View;

    .line 143
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginButton:Landroid/view/View;

    .line 145
    const v0, 0x7f0f012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mStatusGroup:Landroid/view/View;

    .line 146
    const v0, 0x7f0f01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mStatusMessageView:Landroid/widget/TextView;

    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$1;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 185
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$3;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f0f01d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method
