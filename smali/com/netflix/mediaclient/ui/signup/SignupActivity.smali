.class public Lcom/netflix/mediaclient/ui/signup/SignupActivity;
.super Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;
.source "SignupActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static final BOOTURL:Ljava/lang/String; = "booturl"

.field private static final PLAYER_COMPLETE:I = 0x15

.field private static final PLAYER_REQUEST:I = 0x14

.field private static final PREFERENCE_NON_MEMBER_PLAYBACK:Ljava/lang/String; = "prefs_non_member_playback"

.field private static final RC_BILLING:I = 0x2

.field private static final RC_SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SignupActivity"


# instance fields
.field private credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final loginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

.field private mDeviceCategory:Ljava/lang/String;

.field private mESN:Ljava/lang/String;

.field private mESNPrefix:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mErrHandler:Ljava/lang/String;

.field mHandleError:Ljava/lang/Runnable;

.field private mIsLoginActivityInFocus:Z

.field private mIsPlayBillingPresent:Z

.field private mIsSignupFromPlayback:Z

.field mJumpToSignInTask:Ljava/lang/Runnable;

.field private mPassword:Ljava/lang/String;

.field private mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

.field private mPlayBillingInitDone:Z

.field private mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

.field private mSignupLoaded:Z

.field private mSignupMenuItem:Z

.field private mSignupOngoing:Z

.field private mSoftwareVersion:Ljava/lang/String;

.field private saveCredentials:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupMenuItem:Z

    .line 93
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    .line 94
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupOngoing:Z

    .line 408
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mJumpToSignInTask:Ljava/lang/Runnable;

    .line 988
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->loginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    .line 1003
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$10;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mDeviceCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupOngoing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupOngoing:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mErrHandler:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->loginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->saveCredentials()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->canProceedWithPlayBilling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->sanitizeInputString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->canShowPlayBillingOption(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->resolveResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsLoginActivityInFocus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    return p1
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupMenuItem:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->updateMenuItems()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mESN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mESNPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method private canProceedWithPlayBilling()Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->isPlayBillingReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canShowPlayBillingOption(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1258
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    .line 1261
    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->isPlayBillingReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isPlayBillingEnabledInConifg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1263
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1264
    const-string/jumbo v3, "SignupActivity"

    const-string/jumbo v4, "canShow? %b, mIsPlayBillingPresent:%b, mPlayBillingInitDone:%b, ready:%b, enabledInConfig:%b"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 1265
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->isPlayBillingReady()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isPlayBillingEnabledInConifg(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1264
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 1262
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1265
    goto :goto_1
.end method

.method public static createShowIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const v1, 0x4008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    return-object v0
.end method

.method public static createShowWithNewCookiesIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 165
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createShowIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "useDynecomCookies"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    return-object v0
.end method

.method public static createStartIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private declared-synchronized doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2

    .prologue
    .line 1180
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1181
    :try_start_0
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "GPS client is null, unable to try to save credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1185
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->saveCredentials:Z

    if-eqz v0, :cond_0

    .line 1186
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Trying to save credentials to GPS"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->saveCredentials:Z

    .line 1188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1189
    :cond_2
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Credential is empty, do not save it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1193
    :cond_3
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 1195
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mEmail:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPassword:Ljava/lang/String;

    .line 1196
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    move-result-object v0

    .line 1197
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    .line 1199
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1027
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1028
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupOngoing:Z

    .line 1029
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Login Complete - Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DisplayMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 1036
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_4

    .line 1037
    :cond_1
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showToast(I)V

    .line 1039
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1040
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->clearCookies()V

    .line 1055
    :cond_2
    :goto_1
    return-void

    .line 1027
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1044
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0802bb

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1049
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mErrHandler:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mErrHandler:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Executing the following javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1053
    iput-object v4, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mErrHandler:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private isPlayBillingAvailable()Z
    .locals 1

    .prologue
    .line 1074
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->canUseGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSignupDisabledDevice()Z
    .locals 2

    .prologue
    .line 302
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private resolveResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1097
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Google Play Services: Resolving: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Google Play Services: STATUS: RESOLVING"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "Google Play Services: STATUS: Failed to send resolution."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1107
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0

    .line 1110
    :cond_1
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Google Play Services: STATUS: FAIL"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string/jumbo v0, "Google Play Services: Could Not Resolve Error"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1112
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0
.end method

.method private sanitizeInputString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "undefined"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method private declared-synchronized saveCredentials()V
    .locals 4

    .prologue
    .line 1221
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1222
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "SmartLock is disabled or device does not support GPS"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1228
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1229
    if-nez v0, :cond_2

    .line 1230
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "GPS client unavailable, unable to attempt to save credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1234
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1235
    const-string/jumbo v1, "SignupActivity"

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

    .line 1237
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->saveCredentials:Z

    .line 1238
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1239
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private updateMenuItems()V
    .locals 1

    .prologue
    .line 901
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method


# virtual methods
.method public createJSBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 974
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    return-object v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 911
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$8;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    return-object v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->finish()V

    .line 298
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->SIGN_UP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 299
    return-void
.end method

.method public getBootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->getSignUpBootloader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .prologue
    .line 1245
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->nonMemberLanding:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method

.method public getErrorHandler()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getNextTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mJumpToSignInTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->getSignUpTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 1063
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->nmLanding:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleAccountDeactivated()V
    .locals 2

    .prologue
    .line 1250
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    :goto_0
    return-void

    .line 1253
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handleAccountDeactivated()V

    goto :goto_0
.end method

.method public handleBackPressed()Z
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupMenuItem:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 190
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_2
    const v0, 0x7f0802ba

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$1;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideTwoButtonDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public handleProfileActivated()V
    .locals 2

    .prologue
    .line 1172
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1175
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handleProfileActivated()V

    goto :goto_0
.end method

.method protected handleProfileReadyToSelect()V
    .locals 2

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsLoginActivityInFocus:Z

    if-eqz v0, :cond_0

    .line 1016
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Login activity is in focus, leave it to finish all account activities when it is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :goto_0
    return-void

    .line 1017
    :cond_0
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Token activation complete for non-member playback, do not go to profile selection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1020
    :cond_1
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "New profile requested - starting profile selection activity..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 1022
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->finishAllAccountActivities(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected isAutoLoginEnabled()Z
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x1

    return v0
.end method

.method public isPlayBillingEnabledInConifg(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1275
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    .line 1276
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1278
    :cond_0
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v2, "serviceMgr & configurationAgent is not ready.. disable play billing"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1288
    :cond_1
    :goto_0
    return v0

    .line 1282
    :cond_2
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isPlayBillingDisabled()Z

    move-result v3

    .line 1283
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->ignorePreloadForPlayBilling()Z

    move-result v2

    .line 1284
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1285
    const-string/jumbo v4, "SignupActivity"

    const-string/jumbo v5, "isPlayBillingEnabledInConifg - playBillingDisabled:%b, ignorePreinstall:%b, isPreInstalled:%b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1286
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isNetflixPreloaded(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1285
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_3
    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isNetflixPreloaded(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1118
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1120
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    const-string/jumbo v0, "SignupActivity"

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

    .line 1124
    :cond_0
    if-ne p1, v5, :cond_3

    .line 1125
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 1126
    const-string/jumbo v0, "Account credentials saved!"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1127
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v6}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1167
    :cond_1
    :goto_0
    return-void

    .line 1129
    :cond_2
    const-string/jumbo v0, "Failed to save account credentials!"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1130
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(I)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0

    .line 1133
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1134
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1135
    const-string/jumbo v1, "SignupActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->handleActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1135
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_1

    .line 1139
    :cond_6
    const/16 v0, 0x14

    if-ne p1, v0, :cond_a

    const/16 v0, 0x15

    if-ne p2, v0, :cond_a

    .line 1140
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1141
    const-string/jumbo v1, "SignupActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 1144
    const-string/jumbo v0, "nextUrl"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->getSignUpBootloader()Ljava/lang/String;

    move-result-object v0

    .line 1146
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1147
    if-eqz v2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->setUrl(Ljava/lang/String;)V

    .line 1150
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsSignupFromPlayback:Z

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    .line 1152
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$11;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1159
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1160
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    invoke-virtual {v1, v6}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_0

    .line 1141
    :cond_9
    const-string/jumbo v0, ""

    goto :goto_2

    .line 1165
    :cond_a
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult: unknown request code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 207
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 211
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string/jumbo v0, "SignupActivity"

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

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 215
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string/jumbo v0, "SignupActivity"

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

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 201
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    if-nez p1, :cond_0

    .line 222
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->SIGN_UP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 225
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isSignupDisabledDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "found signUp disabled device ... goto login"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->finish()V

    .line 234
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 238
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 243
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isPlayBillingAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    .line 244
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    .line 245
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    if-eqz v0, :cond_4

    .line 246
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "play billing is available. starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$2;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->startSetup(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;)V

    .line 273
    :cond_4
    return-void

    .line 244
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupMenuItem:Z

    if-eqz v0, :cond_1

    .line 357
    const v0, 0x7f080202

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 358
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 359
    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 393
    :goto_0
    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 401
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 402
    return-void

    .line 380
    :cond_1
    const v0, 0x7f080204

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 381
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 382
    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$5;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onDestroy()V

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    if-eqz v0, :cond_1

    .line 331
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Destroying inAppBilling."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->dispose()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    .line 335
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsSignupFromPlayback:Z

    if-nez v1, :cond_0

    .line 279
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    .line 280
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->getSignUpBootloader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->setUrl(Ljava/lang/String;)V

    .line 281
    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->setNonMemberPlayback(Z)Z

    .line 291
    :cond_0
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsSignupFromPlayback:Z

    .line 292
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onResume()V

    .line 293
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1068
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onStart()V

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsLoginActivityInFocus:Z

    .line 1071
    return-void
.end method

.method protected setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V
    .locals 3

    .prologue
    .line 962
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mESN:Ljava/lang/String;

    .line 963
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mESNPrefix:Ljava/lang/String;

    .line 964
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSoftwareVersion:Ljava/lang/String;

    .line 965
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mDeviceCategory:Ljava/lang/String;

    .line 966
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    .line 968
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V

    .line 969
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$signUpWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$signUpWebChromeClient;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/netflix/mediaclient/ui/signup/SignupActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 970
    return-void
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method protected showHelpInMenu()Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->showHelpForNonMemebers()Z

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public testSkuDetails(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 312
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 314
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 315
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v2, "testSkuDetails, input:%s,  List:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v0, v3, p2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getSkuDetails(Ljava/util/ArrayList;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    .line 321
    return-void
.end method

.method public testSkuPurchase(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 8

    .prologue
    .line 306
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "testSkuPurchase, sku:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const-string/jumbo v3, "raviPayload"

    const/16 v4, 0xc8

    const-string/jumbo v5, "raviAccountId"

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->purchase(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    .line 310
    return-void
.end method
