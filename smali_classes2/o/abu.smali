.class public Lo/abu;
.super Lo/abI;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abu$Application;,
        Lo/abu$TaskDescription;,
        Lo/abu$Activity;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Z

.field private c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lo/Ak;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Landroid/content/BroadcastReceiver;

.field private t:Z

.field private final u:Lo/Ai;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lo/abI;-><init>()V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lo/abu;->e:Z

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lo/abu;->b:Z

    .line 108
    iput-boolean v0, p0, Lo/abu;->g:Z

    .line 152
    new-instance v0, Lo/abu$4;

    invoke-direct {v0, p0}, Lo/abu$4;-><init>(Lo/abu;)V

    iput-object v0, p0, Lo/abu;->s:Landroid/content/BroadcastReceiver;

    .line 513
    new-instance v0, Lo/abu$9;

    invoke-direct {v0, p0}, Lo/abu$9;-><init>(Lo/abu;)V

    iput-object v0, p0, Lo/abu;->d:Ljava/lang/Runnable;

    .line 986
    new-instance v0, Lo/abu$13;

    invoke-direct {v0, p0}, Lo/abu$13;-><init>(Lo/abu;)V

    iput-object v0, p0, Lo/abu;->u:Lo/Ai;

    .line 1001
    new-instance v0, Lo/abu$11;

    invoke-direct {v0, p0}, Lo/abu$11;-><init>(Lo/abu;)V

    iput-object v0, p0, Lo/abu;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lo/abu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 97
    iput-object p1, p0, Lo/abu;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lo/abu;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lo/abu;->n()V

    return-void
.end method

.method static synthetic a(Lo/abu;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lo/abu;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic a(Lo/abu;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lo/abu;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method static synthetic a(Lo/abu;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/abu;->b(Lo/Am;)V

    return-void
.end method

.method static synthetic a(Lo/abu;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lo/abu;->e:Z

    return p1
.end method

.method static synthetic b(Lo/abu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 97
    iput-object p1, p0, Lo/abu;->c:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 3

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 934
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    .line 935
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 936
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "SignupActivity"

    const-string v2, "End session %s with reason %s"

    invoke-static {p2, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 937
    invoke-static {}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;->getInstance()Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/HashMap;)V

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lo/abu;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lo/abu;->t:Z

    .line 404
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->y:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-direct {p0, v0, p1}, Lo/abu;->b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0, p1, v0}, Lo/abu;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 406
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/Logger;->flush()V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 240
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lo/abu;->finish()V

    goto :goto_0

    .line 244
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qf:I

    invoke-virtual {p0, p1}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lo/abA;

    invoke-direct {v0, p0}, Lo/abA;-><init>(Lo/abu;)V

    invoke-virtual {p0, p1, v0}, Lo/abu;->e(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic b(Lo/Am;)V
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lo/abu;->d(Lo/Am;)V

    return-void
.end method

.method static synthetic b(Lo/abu;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lo/abu;->l()V

    return-void
.end method

.method static synthetic b(Lo/abu;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lo/abu;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method static synthetic b(Lo/abu;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lo/abu;->b:Z

    return p1
.end method

.method static synthetic c(Lo/abu;)Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/abu;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lo/abu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 97
    iput-object p1, p0, Lo/abu;->k:Ljava/lang/String;

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/service/user/UserAgent;Lo/abu$Activity;)V
    .locals 2

    .line 1244
    iget-object p1, p0, Lo/abu;->mUserAgentRepository:Lo/JM;

    invoke-virtual {p1}, Lo/JM;->e()Lio/reactivex/Observable;

    move-result-object p1

    .line 1245
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/abu;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    .line 1246
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/abu$1;

    const-string v1, "SignupActivity logoutError"

    invoke-direct {v0, p0, v1, p2}, Lo/abu$1;-><init>(Lo/abu;Ljava/lang/String;Lo/abu$Activity;)V

    .line 1247
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic c(Lo/abu;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/abu$Activity;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lo/abu;->c(Lcom/netflix/mediaclient/service/user/UserAgent;Lo/abu$Activity;)V

    return-void
.end method

.method static synthetic c(Lo/abu;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lo/abu;->g:Z

    return p1
.end method

.method static synthetic d(Lo/abu;)Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/abu;->j:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized d(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "SignupActivity"

    const-string v0, "GPS client is null, unable to try to save credentials"

    .line 1166
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    monitor-exit p0

    return-void

    .line 1170
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lo/abu;->o:Z

    if-eqz v0, :cond_3

    const-string v0, "SignupActivity"

    const-string v1, "Trying to save credentials to GPS"

    .line 1171
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1172
    iput-boolean v0, p0, Lo/abu;->o:Z

    .line 1173
    iget-object v0, p0, Lo/abu;->m:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/abu;->k:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1178
    :cond_1
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/StoreSharedCredentials;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/action/StoreSharedCredentials;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 1180
    new-instance v1, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    iget-object v2, p0, Lo/abu;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/abu;->k:Ljava/lang/String;

    .line 1181
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    move-result-object v1

    .line 1182
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v1

    .line 1184
    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v1, Lo/abu$3;

    invoke-direct {v1, p0, v0}, Lo/abu$3;-><init>(Lo/abu;Ljava/lang/Long;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "SignupActivity"

    const-string v0, "Credential is empty, do not save it."

    .line 1174
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1175
    monitor-exit p0

    return-void

    .line 1203
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    .line 395
    iget-boolean v0, p0, Lo/abu;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lo/abu;->p:Z

    .line 397
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->x:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-direct {p0, v0, p1}, Lo/abu;->b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/abu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/abu;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static d()Z
    .locals 2

    .line 371
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 209
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    const v1, 0x4008000

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lo/abB;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "SignupActivity"

    const-string v3, "Failed to start LoginTabletActivity Activity!"

    .line 215
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 219
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lo/abu;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private e(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "RequestSharedCredentials"

    const-string v2, "SignupActivity"

    if-eqz p1, :cond_0

    .line 1083
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Google Play Services: STATUS: RESOLVING"

    .line 1084
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 1086
    :try_start_0
    invoke-virtual {p1, p0, v3}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "Google Play Services: STATUS: Failed to send resolution."

    .line 1088
    invoke-static {v2, v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v1, v0}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Google Play Services: STATUS: FAIL"

    .line 1092
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Google Play Services: Could Not Resolve Error"

    .line 1093
    invoke-virtual {p0, p1}, Lo/abu;->showDebugToast(Ljava/lang/String;)V

    .line 1094
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v1, v0}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    :goto_0
    return-void
.end method

.method private e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 1029
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 1030
    iput-boolean v0, p0, Lo/abu;->g:Z

    .line 1035
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 1038
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SignIn"

    if-nez v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->u:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1046
    :cond_1
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qe:I

    invoke-virtual {p0, v1}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lo/abu;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v1}, Lo/abu;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1051
    iget-object p1, p0, Lo/abu;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1052
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/abu;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing the following javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignupActivity"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {p0}, Lo/abu;->h()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1055
    iput-object v2, p0, Lo/abu;->c:Ljava/lang/String;

    :cond_2
    return-void

    .line 1039
    :cond_3
    :goto_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jI:I

    invoke-virtual {p0, p1}, Lo/abu;->a(I)V

    .line 1041
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v3}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    .line 1042
    invoke-virtual {p0}, Lo/abu;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lo/afP;->c(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static e(Lo/abE;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1274
    invoke-virtual {p0}, Lo/abE;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/abE;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/abE;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SignupActivity"

    const-string v2, "Url failed to load. code=\'%d\', description=\'%s\', url=\'%s\'"

    .line 1273
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1276
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    .line 1277
    invoke-virtual {p0}, Lo/abE;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 1278
    invoke-virtual {p0}, Lo/abE;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    .line 1279
    invoke-virtual {p0}, Lo/abE;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1280
    sget-object p0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    new-instance v1, Lcom/netflix/cl/model/Error;

    const-string v2, "SignupWebViewError"

    new-instance v3, Lcom/netflix/cl/model/Debug;

    invoke-direct {v3, v0}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    invoke-virtual {p0, v1}, Lcom/netflix/cl/ExtLogger;->logError(Lcom/netflix/cl/model/Error;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic e(Lo/abu;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lo/abu;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lo/abu;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lo/abu;->b:Z

    return p0
.end method

.method static synthetic e(Lo/abu;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lo/abu;->q:Z

    return p1
.end method

.method static synthetic f(Lo/abu;)Lo/JM;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/abu;->mUserAgentRepository:Lo/JM;

    return-object p0
.end method

.method static synthetic g(Lo/abu;)Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/abu;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lo/abu;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/abu;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method static synthetic i(Lo/abu;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lo/abu;->g:Z

    return p0
.end method

.method static synthetic j(Lo/abu;)Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/abu;->l:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized k()V
    .locals 2

    monitor-enter p0

    .line 1207
    :try_start_0
    invoke-static {p0}, Lo/adR;->c(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1211
    monitor-exit p0

    return-void

    .line 1214
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/abu;->n:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    const-string v0, "SignupActivity"

    const-string v1, "GPS client unavailable, unable to attempt to save credentials"

    .line 1216
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1217
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 1223
    :try_start_2
    iput-boolean v1, p0, Lo/abu;->o:Z

    .line 1224
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1225
    invoke-direct {p0, v0}, Lo/abu;->d(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1227
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lo/abu;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lo/abu;->k()V

    return-void
.end method

.method static synthetic l(Lo/abu;)Lo/JM;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/abu;->mUserAgentRepository:Lo/JM;

    return-object p0
.end method

.method private l()V
    .locals 1

    .line 946
    new-instance v0, Lo/abu$8;

    invoke-direct {v0, p0}, Lo/abu$8;-><init>(Lo/abu;)V

    invoke-virtual {p0, v0}, Lo/abu;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lo/abu;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/abu;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lo/abu;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "useDarkBackground"

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lo/abu;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->y:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0}, Lo/abu;->c(Z)V

    .line 487
    new-instance v0, Lo/abu$6;

    invoke-direct {v0, p0}, Lo/abu$6;-><init>(Lo/abu;)V

    invoke-virtual {p0, v0}, Lo/abu;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method static synthetic o(Lo/abu;)V
    .locals 0

    invoke-direct {p0}, Lo/abu;->q()V

    return-void
.end method

.method private synthetic q()V
    .locals 2

    .line 246
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {p0}, Lo/abu;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abD$StateListAnimator;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lo/abu;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/abu;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lo/abu;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/abu;->a(Lo/cz;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 961
    iget-object v0, p0, Lo/abu;->i:Lo/Ak;

    invoke-interface {v0}, Lo/Ak;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 226
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->Companion:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/abu;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lo/abu;->finish()V

    return-void
.end method

.method public a(Lo/abE;)V
    .locals 2

    .line 1259
    invoke-super {p0, p1}, Lo/abI;->a(Lo/abE;)V

    if-eqz p1, :cond_0

    .line 1262
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/abu;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 1263
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/abu;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 1265
    invoke-virtual {p0}, Lo/abu;->h()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1267
    invoke-static {p1}, Lo/abu;->e(Lo/abE;)V

    .line 1268
    sget-object p1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->Companion:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->da:I

    invoke-virtual {p0, v0}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->showError(Landroid/app/Activity;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Lo/abu;->i:Lo/Ak;

    invoke-interface {v0}, Lo/Ak;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 978
    new-instance v0, Lo/abu$Application;

    invoke-direct {v0, p0}, Lo/abu$Application;-><init>(Lo/abu;)V

    return-object v0
.end method

.method protected d(Lo/Am;)V
    .locals 2

    .line 966
    invoke-virtual {p1}, Lo/Am;->k()Lo/ds;

    move-result-object v0

    invoke-interface {v0}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/abu;->h:Ljava/lang/String;

    .line 967
    invoke-virtual {p1}, Lo/Am;->k()Lo/ds;

    move-result-object v0

    invoke-interface {v0}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/abu;->j:Ljava/lang/String;

    .line 968
    invoke-virtual {p1}, Lo/Am;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/abu;->f:Ljava/lang/String;

    .line 969
    invoke-virtual {p1}, Lo/Am;->B()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/abu;->l:Ljava/lang/String;

    .line 970
    invoke-virtual {p1}, Lo/Am;->H()Lo/Ak;

    move-result-object v0

    iput-object v0, p0, Lo/abu;->i:Lo/Ak;

    .line 972
    invoke-super {p0, p1}, Lo/abI;->d(Lo/Am;)V

    .line 973
    invoke-virtual {p0}, Lo/abu;->h()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lo/abu$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/abu$TaskDescription;-><init>(Lo/abu;Lo/abu$4;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public e()Ljava/lang/Runnable;
    .locals 1

    .line 412
    iget-object v0, p0, Lo/abu;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 366
    invoke-super {p0}, Lo/abI;->finish()V

    .line 367
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->o:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    return-void
.end method

.method public getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .line 1231
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method

.method public getHelpMenuText()Ljava/lang/String;
    .locals 1

    .line 427
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->qc:I

    invoke-virtual {p0, v0}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 1062
    sget-object v0, Lcom/netflix/cl/model/AppView;->nmLanding:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleAccountDeactivated()V
    .locals 2

    const-string v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    .line 1236
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1239
    :cond_0
    invoke-super {p0}, Lo/abI;->handleAccountDeactivated()V

    return-void
.end method

.method public handleBackPressed()Z
    .locals 3

    .line 238
    invoke-virtual {p0}, Lo/abu;->h()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lo/abC;

    invoke-direct {v1, p0}, Lo/abC;-><init>(Lo/abu;)V

    const-string v2, "!(netflix && netflix.reactContext) || (netflix && netflix.reactContext && netflix.reactContext.models && netflix.reactContext.models.flow && netflix.reactContext.models.flow.data && netflix.reactContext.models.flow.data.mode === \"welcome\")"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    return v0
.end method

.method public handleProfileActivated()V
    .locals 2

    const-string v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    .line 1157
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1160
    :cond_0
    invoke-super {p0}, Lo/abI;->handleProfileActivated()V

    return-void
.end method

.method public handleProfileReadyToSelect()V
    .locals 3

    .line 1017
    iget-boolean v0, p0, Lo/abu;->q:Z

    const-string v1, "SignupActivity"

    if-eqz v0, :cond_0

    const-string v0, "Login activity is in focus, leave it to finish all account activities when it is ready"

    .line 1018
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v2, "prefs_non_member_playback"

    .line 1019
    invoke-static {p0, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Token activation complete for non-member playback, do not go to profile selection"

    .line 1020
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "New profile requested - starting profile selection activity..."

    .line 1022
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lo/abu;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lo/Zg;->e(Landroid/app/Activity;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/abu;->startActivity(Landroid/content/Intent;)V

    .line 1024
    invoke-static {p0}, Lo/abu;->finishAllAccountActivities(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public j()Ljava/lang/Runnable;
    .locals 1

    .line 983
    iget-object v0, p0, Lo/abu;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1100
    invoke-super {p0, p1, p2, p3}, Lo/abI;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "Account credentials saved!"

    .line 1108
    invoke-virtual {p0, p1}, Lo/abu;->showDebugToast(Ljava/lang/String;)V

    .line 1109
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string p2, "StoreSharedCredentials"

    invoke-virtual {p1, p2}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_0
    const-string p1, "Failed to save account credentials!"

    .line 1111
    invoke-virtual {p0, p1}, Lo/abu;->showDebugToast(Ljava/lang/String;)V

    .line 1113
    new-instance p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    invoke-direct {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;-><init>()V

    const-string p3, "apiCalled"

    const-string v0, "SmartLock.resolve"

    .line 1114
    invoke-virtual {p1, p3, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    const-string p3, "resultCode"

    .line 1115
    invoke-virtual {p1, p3, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->b(Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    .line 1116
    new-instance p2, Lcom/netflix/cl/model/Error;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e()Lcom/netflix/cl/model/Debug;

    move-result-object p1

    const-string p3, "SmartLock.request"

    invoke-direct {p2, p3, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    .line 1117
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string p3, "RequestSharedCredentials"

    invoke-virtual {p1, p3, p2}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 1118
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string p3, "SignIn"

    invoke-virtual {p1, p3, p2}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x14

    if-ne p1, v1, :cond_3

    const/16 v1, 0x15

    if-ne p2, v1, :cond_3

    .line 1125
    invoke-virtual {p0}, Lo/abu;->getServiceManager()Lo/Am;

    const-string p1, "nextUrl"

    .line 1126
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1127
    iget-object p2, p0, Lo/abu;->i:Lo/Ak;

    invoke-interface {p2}, Lo/Ak;->a()Ljava/lang/String;

    move-result-object p2

    .line 1128
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p1, :cond_2

    .line 1129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1131
    :cond_2
    invoke-virtual {p0}, Lo/abu;->f()Lo/abw;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/abw;->d(Ljava/lang/String;)V

    .line 1132
    iput-boolean v0, p0, Lo/abu;->r:Z

    const/4 p1, 0x0

    .line 1133
    iput-boolean p1, p0, Lo/abu;->b:Z

    .line 1134
    new-instance p1, Lo/abu$5;

    invoke-direct {p1, p0}, Lo/abu$5;-><init>(Lo/abu;)V

    invoke-virtual {p0, p1}, Lo/abu;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1141
    invoke-virtual {p0}, Lo/abu;->h()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p0}, Lo/abu;->f()Lo/abw;

    move-result-object p2

    invoke-virtual {p2}, Lo/abw;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1142
    invoke-static {p0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 1144
    invoke-direct {p0, p1, p2}, Lo/abu;->c(Lcom/netflix/mediaclient/service/user/UserAgent;Lo/abu$Activity;)V

    goto :goto_0

    .line 1146
    :cond_3
    sget p3, Lo/ClientCertRequest;->a:I

    if-ne p1, p3, :cond_4

    .line 1147
    const-class p1, Lo/IE;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/IE;

    invoke-interface {p1, p2}, Lo/IE;->a(I)V

    goto :goto_0

    .line 1150
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult: unknown request code"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SignupActivity"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    const/4 v0, 0x1

    .line 332
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    .line 333
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "SignupActivity"

    const-string v0, "onConnected"

    .line 270
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p1, p0, Lo/abu;->n:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, p1}, Lo/abu;->d(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    const/4 p1, 0x0

    .line 279
    iput-object p1, p0, Lo/abu;->n:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .line 263
    iget-object p1, p0, Lo/abu;->n:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 284
    invoke-direct {p0}, Lo/abu;->m()V

    .line 287
    invoke-virtual {p0}, Lo/abu;->startRenderNavigationLevelSession()V

    .line 288
    invoke-super {p0, p1}, Lo/abI;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 291
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->o:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 294
    :cond_0
    invoke-static {}, Lo/abu;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 298
    invoke-static {p0}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/abu;->d(Landroid/content/Intent;)V

    .line 299
    invoke-virtual {p0}, Lo/abu;->finish()V

    .line 303
    :cond_1
    invoke-static {p0}, Lo/adR;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 306
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 307
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lo/abu;->n:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 309
    iget-object p1, p0, Lo/abu;->n:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 311
    :cond_2
    iget-object p1, p0, Lo/abu;->s:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lo/abu;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 312
    new-instance p1, Lo/abz;

    invoke-direct {p1, p0}, Lo/abz;-><init>(Lo/abu;)V

    invoke-virtual {p0, p1}, Lo/abu;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 4

    .line 434
    iget-boolean v0, p0, Lo/abu;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 435
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kv:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qd:I

    invoke-virtual {p0, v3}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 436
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 437
    new-instance v1, Lo/abu$7;

    invoke-direct {v1, p0}, Lo/abu$7;-><init>(Lo/abu;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 458
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kx:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qh:I

    invoke-virtual {p0, v3}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 460
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 461
    new-instance v1, Lo/abu$10;

    invoke-direct {v1, p0}, Lo/abu$10;-><init>(Lo/abu;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 473
    :goto_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 475
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 480
    :cond_1
    invoke-super {p0, p1, p2}, Lo/abI;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 376
    invoke-super {p0}, Lo/abI;->onDestroy()V

    .line 377
    iget-object v0, p0, Lo/abu;->n:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lo/abu;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/abu;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 383
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/abu;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 346
    invoke-virtual {p0}, Lo/abu;->getServiceManager()Lo/Am;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lo/Am;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lo/abu;->r:Z

    if-nez v2, :cond_0

    .line 348
    iput-boolean v1, p0, Lo/abu;->b:Z

    .line 349
    invoke-virtual {p0}, Lo/abu;->f()Lo/abw;

    move-result-object v2

    iget-object v3, p0, Lo/abu;->i:Lo/Ak;

    invoke-interface {v3}, Lo/Ak;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/abw;->d(Ljava/lang/String;)V

    .line 350
    new-instance v2, Lo/abu$2;

    invoke-direct {v2, p0}, Lo/abu$2;-><init>(Lo/abu;)V

    invoke-virtual {p0, v2}, Lo/abu;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 357
    invoke-virtual {p0}, Lo/abu;->h()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {p0}, Lo/abu;->f()Lo/abw;

    move-result-object v3

    invoke-virtual {v3}, Lo/abw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v1}, Lo/Am;->b(Z)Z

    .line 360
    :cond_0
    iput-boolean v1, p0, Lo/abu;->r:Z

    .line 361
    invoke-super {p0}, Lo/abI;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1067
    invoke-super {p0}, Lo/abI;->onStart()V

    const/4 v0, 0x0

    .line 1069
    iput-boolean v0, p0, Lo/abu;->q:Z

    return-void
.end method

.method public setTheme()V
    .locals 1

    .line 341
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->R:I

    invoke-virtual {p0, v0}, Lo/abu;->setTheme(I)V

    return-void
.end method

.method public showHelpInMenu()Z
    .locals 1

    .line 418
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/abu;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/abu;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lo/abu;->getServiceManager()Lo/Am;

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

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 389
    invoke-super {p0, p1, p2}, Lo/abI;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 390
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, p1}, Lo/abu;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 391
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, p1}, Lo/abu;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method
