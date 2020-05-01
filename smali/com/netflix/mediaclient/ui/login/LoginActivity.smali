.class public Lcom/netflix/mediaclient/ui/login/LoginActivity;
.super Lcom/netflix/mediaclient/ui/login/AccountActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;


# static fields
.field private static final PREFERENCE_NON_MEMBER_PLAYBACK:Ljava/lang/String; = "prefs_non_member_playback"

.field public static final RC_SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field private mEmailPasswordFragment:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

.field private mLaunchProfileGate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/login/LoginActivity;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getActiveFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createStartIntent(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/LoginUtils;->addCredentialsToIntent(Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;Landroid/content/Intent;)V

    .line 66
    return-object v0
.end method

.method private getActiveFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getActiveFragment(Landroid/app/FragmentManager;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private getActiveFragment(Landroid/app/FragmentManager;)Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 235
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string/jumbo v1, "LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBackStackEntryCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    if-nez v0, :cond_1

    .line 239
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    const-string/jumbo v1, "LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current fragment tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_2
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method private showEmailPasswordFragment()V
    .locals 5

    .prologue
    .line 250
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "showEmailPasswordFragment"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->newInstance(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity;->mEmailPasswordFragment:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    .line 256
    const v2, 0x7f0f01d4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity;->mEmailPasswordFragment:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    const-string/jumbo v4, "EmailPasswordFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "EmailPasswordFragment"

    .line 257
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 258
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 259
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 260
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getActiveFragment(Landroid/app/FragmentManager;)Landroid/app/Fragment;

    .line 261
    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/netflix/mediaclient/ui/login/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity$1;-><init>(Lcom/netflix/mediaclient/ui/login/LoginActivity;)V

    return-object v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->finish()V

    .line 105
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOG_IN:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method protected getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->login:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleAccountDeactivated()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "Account deactivated ..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    return-void
.end method

.method public handleBackToRegularWorkflow()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity;->mLaunchProfileGate:Z

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "New profile requested - starting profile selection activity..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 115
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->finishAllAccountActivities(Landroid/content/Context;)V

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "Back to regular workflow for profile activated..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->finish()V

    goto :goto_0
.end method

.method protected handleProfileActivated()V
    .locals 2

    .prologue
    .line 147
    invoke-static {p0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "SmartLogin save enabled, do save credentials for profile activated..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity;->mLaunchProfileGate:Z

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "SmartLogin save not enabled, regular workflow for profile activated..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->finish()V

    goto :goto_0
.end method

.method protected handleProfileReadyToSelect()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "New profile requested - starting profile selection activity..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "SmartLogin save enabled, do save credentials..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity;->mLaunchProfileGate:Z

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "SmartLogin save not enabled, regular workflow..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 140
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->finishAllAccountActivities(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected hasUpAction()Z
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isSignupDisabledDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string/jumbo v0, "LoginActivity"

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

    .line 215
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 216
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 217
    const-string/jumbo v0, "Account credentials saved!"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->showDebugToast(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->handleBackToRegularWorkflow()V

    .line 227
    return-void

    .line 220
    :cond_1
    const-string/jumbo v0, "Failed to save account credentials!"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->showDebugToast(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(I)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string/jumbo v0, "LoginActivity"

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

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->setWindowSecureFlag(Landroid/app/Activity;)V

    .line 88
    const v0, 0x7f03008c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->setContentView(I)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "EmailPasswordFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity;->mEmailPasswordFragment:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    .line 98
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportLoginActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 99
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOG_IN:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->showEmailPasswordFragment()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->setNonMemberPlayback(Z)Z

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onResume()V

    .line 76
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public performUpAction()V
    .locals 3

    .prologue
    .line 283
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->upButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 284
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createShowIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->finish()V

    .line 286
    return-void
.end method

.method protected showHelpInMenu()Z
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->showHelpForNonMemebers()Z

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
