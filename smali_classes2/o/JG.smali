.class public Lo/JG;
.super Lo/Jv;
.source ""

# interfaces
.implements Lo/JF;
.implements Lo/SnoozeCriterion$Application;


# instance fields
.field private a:Z

.field private final b:Landroid/content/BroadcastReceiver;

.field private d:Lo/Jw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lo/Jv;-><init>()V

    .line 78
    new-instance v0, Lo/JG$5;

    invoke-direct {v0, p0}, Lo/JG$5;-><init>(Lo/JG;)V

    iput-object v0, p0, Lo/JG;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;
    .locals 2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/JG;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-static {p1, p2, v0}, Lo/adR;->c(Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;Landroid/content/Intent;)V

    return-object v0
.end method

.method static synthetic a(Lo/JG;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 59
    invoke-direct {p0}, Lo/JG;->c()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 87
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-static {p0, v1, v1}, Lo/JG;->c(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v2, "LoginActivity"

    const-string v3, "Failed to start LoginTabletActivity Activity!"

    .line 91
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 95
    :cond_0
    invoke-static {p0, v1, v1}, Lo/JG;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;
    .locals 2

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/JH;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    invoke-static {p1, p2, v0}, Lo/adR;->c(Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;Landroid/content/Intent;)V

    return-object v0
.end method

.method private c()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lo/JG;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/JG;->e(Lo/SerializablePermission;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 5

    const-string v0, "LoginActivity"

    const-string v1, "showEmailPasswordFragment"

    .line 281
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lo/JG;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lo/JG;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lo/Jw;->a(Landroid/os/Bundle;)Lo/Jw;

    move-result-object v2

    iput-object v2, p0, Lo/JG;->d:Lo/Jw;

    .line 285
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->jR:I

    iget-object v3, p0, Lo/JG;->d:Lo/Jw;

    const-string v4, "EmailPasswordFragment"

    invoke-virtual {v1, v2, v3, v4}, Lo/UnsupportedEncodingException;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 286
    invoke-virtual {v1}, Lo/UnsupportedEncodingException;->d()I

    .line 287
    invoke-virtual {v0}, Lo/SerializablePermission;->b()Z

    .line 288
    invoke-direct {p0, v0}, Lo/JG;->e(Lo/SerializablePermission;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private e(Lo/SerializablePermission;)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 267
    invoke-virtual {p1}, Lo/SerializablePermission;->a()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "LoginActivity"

    const-string v4, "getBackStackEntryCount %d"

    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_0
    invoke-virtual {p1}, Lo/SerializablePermission;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lo/SerializablePermission;->e(I)Lo/SerializablePermission$Application;

    move-result-object v0

    invoke-interface {v0}, Lo/SerializablePermission$Application;->g()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p1, v0}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lo/JG;->a:Z

    const-string v1, "LoginActivity"

    if-eqz v0, :cond_0

    const-string v0, "handleBackToRegularWorkflow:: New profile requested - starting profile selection activity..."

    .line 154
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "prefs_non_member_playback"

    .line 155
    invoke-static {p0, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 156
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lo/JG;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lo/Zg;->e(Landroid/app/Activity;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/JG;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-static {p0}, Lo/JG;->finishAllAccountActivities(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "Back to regular workflow for profile activated..."

    .line 159
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lo/JG;->finish()V

    :goto_0
    return-void
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 209
    new-instance v0, Lo/JG$3;

    invoke-direct {v0, p0}, Lo/JG$3;-><init>(Lo/JG;)V

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lo/JG;->d:Lo/Jw;

    invoke-virtual {v0, p1}, Lo/Jw;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 141
    invoke-super {p0}, Lo/Jv;->finish()V

    .line 143
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->r:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    return-void
.end method

.method public getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .line 303
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 204
    sget-object v0, Lcom/netflix/cl/model/AppView;->login:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleAccountDeactivated()V
    .locals 2

    const-string v0, "LoginActivity"

    const-string v1, "Account deactivated ..."

    .line 193
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleProfileActivated()V
    .locals 2

    .line 182
    invoke-static {p0}, Lo/adR;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LoginActivity"

    if-eqz v0, :cond_0

    const-string v0, "SmartLogin save enabled, do save credentials for profile activated..."

    .line 183
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lo/JG;->a:Z

    goto :goto_0

    :cond_0
    const-string v0, "SmartLogin save not enabled, regular workflow for profile activated..."

    .line 186
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lo/JG;->finish()V

    :goto_0
    return-void
.end method

.method public handleProfileReadyToSelect()V
    .locals 2

    const-string v0, "LoginActivity"

    const-string v1, "New profile requested - starting profile selection activity..."

    .line 167
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p0}, Lo/adR;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SmartLogin save enabled, do save credentials..."

    .line 170
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lo/JG;->a:Z

    goto :goto_0

    :cond_0
    const-string v1, "SmartLogin save not enabled, regular workflow..."

    .line 173
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "prefs_non_member_playback"

    .line 174
    invoke-static {p0, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 175
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lo/JG;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lo/Zg;->e(Landroid/app/Activity;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/JG;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-static {p0}, Lo/JG;->finishAllAccountActivities(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public hasUpAction()Z
    .locals 1

    .line 307
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/abD$StateListAnimator;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/abD$StateListAnimator;->d(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 310
    :cond_0
    invoke-static {}, Lo/abu;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 235
    invoke-super {p0, p1, p2, p3}, Lo/Jv;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    const-string p3, "StoreSharedCredentials"

    if-ne p2, p1, :cond_0

    const-string p1, "Account credentials saved!"

    .line 243
    invoke-virtual {p0, p1}, Lo/JG;->showDebugToast(Ljava/lang/String;)V

    .line 244
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, p3}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Failed to save account credentials!"

    .line 246
    invoke-virtual {p0, p1}, Lo/JG;->showDebugToast(Ljava/lang/String;)V

    .line 247
    new-instance p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    invoke-direct {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;-><init>()V

    const-string v0, "SmartLock.save"

    const-string v1, "apiCalled"

    .line 248
    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    const-string v1, "resultCode"

    .line 249
    invoke-virtual {p1, v1, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->b(Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    .line 250
    new-instance p2, Lcom/netflix/cl/model/Error;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e()Lcom/netflix/cl/model/Debug;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    .line 251
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, p3, p2}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    const-string v1, "LoginActivity"

    if-ne p1, v0, :cond_2

    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "onActivityResult: No action. IN_APP_UPDATE_REQUEST_CODE %d"

    invoke-static {v1, p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 257
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult: unknown request code"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    invoke-virtual {p0}, Lo/JG;->a()V

    return-void
.end method

.method public onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 3

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    const/4 v2, 0x1

    .line 332
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    .line 333
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 336
    new-instance v1, Lo/cP;

    invoke-direct {v1, p0}, Lo/cP;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lo/cP;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->isSignupBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lo/Jv;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-static {p0}, Lo/adk;->d(Landroid/app/Activity;)V

    .line 129
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cx:I

    invoke-virtual {p0, v0}, Lo/JG;->setContentView(I)V

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lo/JG;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    const-string v0, "EmailPasswordFragment"

    invoke-virtual {p1, v0}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lo/Jw;

    iput-object p1, p0, Lo/JG;->d:Lo/Jw;

    goto :goto_0

    .line 133
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->r:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 134
    invoke-direct {p0}, Lo/JG;->d()V

    .line 136
    :goto_0
    iget-object p1, p0, Lo/JG;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lo/JG;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lo/JG;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lo/Am;->b(Z)Z

    .line 116
    :cond_0
    invoke-super {p0}, Lo/Jv;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lo/Jv;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public performUpAction()V
    .locals 1

    .line 316
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c()V

    .line 318
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/abD$StateListAnimator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Lo/JG;->startActivity(Landroid/content/Intent;)V

    .line 321
    invoke-virtual {p0}, Lo/JG;->finish()V

    return-void
.end method

.method public showHelpInMenu()Z
    .locals 1

    .line 294
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/JG;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/JG;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lo/JG;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->T()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showNoNetworkOverlayIfNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
