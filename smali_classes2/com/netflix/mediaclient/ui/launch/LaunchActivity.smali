.class public Lcom/netflix/mediaclient/ui/launch/LaunchActivity;
.super Lo/Jo;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public a:Z

.field private b:Z

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Lcom/netflix/mediaclient/android/app/Status;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Ljava/lang/Long;

.field public latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private m:Lo/JM;

.field private final n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;

.field public profileGatePolicy:Lo/Jp;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lo/Jo;-><init>()V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e:Z

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d:Z

    .line 159
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b:Z

    .line 181
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 767
    new-instance v0, Lo/Jl;

    invoke-direct {v0, p0}, Lo/Jl;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->n:Ljava/lang/Runnable;

    .line 1031
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "LaunchActivity"

    const-string v1, "User is NOT logged in, redirect to Login screen"

    .line 946
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-static {p0, p1, p2}, Lo/JG;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 564
    invoke-static {p0}, Lo/adR;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 565
    invoke-static {p0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "LaunchActivity"

    const-string v3, "Redirect to offline activity with profile %s, %s"

    .line 563
    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 566
    invoke-static {p0}, Lo/QU;->e(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 566
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lo/Am;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Long;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V
    .locals 3

    .line 1104
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LaunchActivity"

    if-eqz v0, :cond_0

    const-string p1, "Auth.CredentialsApi.request ActivityFinishedOrDestroyed"

    .line 1105
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1108
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 1109
    invoke-interface {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1110
    invoke-interface {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h:Ljava/lang/String;

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving hint in case user ends up on login page "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "No credentials!"

    .line 1113
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "Sign in is required, go with regular workflow"

    .line 1116
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-interface {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v1, "SmartLock.request"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V

    const-string p1, "SignInWithGoogleSmartLock"

    .line 1118
    invoke-static {p1, v1, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V

    .line 1120
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d()V

    return-void

    .line 1125
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 1127
    invoke-interface {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    goto :goto_1

    .line 1129
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Long;)V

    :goto_1
    return-void
.end method

.method private a(Lo/Am;)V
    .locals 1

    .line 639
    invoke-virtual {p1}, Lo/Am;->r()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "LaunchActivity"

    const-string v0, "Offline feature not available!"

    .line 640
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private b(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 7

    .line 1177
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->j()V

    const-string v0, "Google Play Services: Credential Retrieved"

    .line 1185
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1187
    invoke-static {p0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1189
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1190
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 1191
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    .line 1192
    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/service/user/UserAgent;Z)V

    goto :goto_0

    .line 1194
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->r()V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b(Lo/Am;)V

    return-void
.end method

.method private b(Lo/Am;)V
    .locals 4

    .line 427
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    invoke-virtual {p1}, Lo/Am;->E()Z

    move-result v0

    .line 436
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->se:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 438
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v3, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;)V

    .line 439
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v3, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->b:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-interface {v2, v3, v0}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 443
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string v1, "LaunchActivity"

    if-eqz v0, :cond_3

    .line 453
    invoke-virtual {p1}, Lo/Am;->I()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "prefs_non_member_playback"

    .line 454
    invoke-static {p0, v0, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "LaunchActivity::handleManagerReady: user logged in "

    .line 458
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a(Lo/Am;)V

    .line 462
    invoke-static {p1}, Lo/acD;->b(Lo/Am;)V

    .line 464
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e(Lo/Am;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "LaunchActivity::handleManagerReady: user not logged in "

    .line 455
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->g(Lo/Am;)V

    :goto_1
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    .line 816
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    .line 817
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "extras-minusone"

    .line 818
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 819
    :goto_0
    invoke-static {p1}, Lo/ir;->e(Landroid/content/Context;)Z

    move-result p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 822
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, p2

    const-string p2, "LaunchActivity"

    const-string v4, "isNonmemberPlaybackRequest: data %s , isMinusoneReq %s, isMinusoneReady %s"

    .line 821
    invoke-static {p2, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e:Z

    return p1
.end method

.method private c(Landroid/content/Intent;)V
    .locals 0

    .line 987
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 4

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login Complete - Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchActivity"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login complete - Status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 1203
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setRequestedOrientation(I)V

    .line 1205
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const-string v2, "SignIn"

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->u:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Login failed, redirect to LoginActivity with credential and status"

    .line 1210
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 1212
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a(Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 1207
    :cond_1
    :goto_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jI:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1208
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v2}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->s()V

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->f(Lo/Am;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/service/user/UserAgent;Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->m:Lo/JM;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/JM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 1492
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    .line 1493
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;

    const-string p4, "LaunchActivity loginError"

    invoke-direct {p2, p0, p4, p3}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 1494
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private c(Lo/Am;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 578
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)Z

    move-result v0

    const-string v1, "LaunchActivity"

    if-eqz v0, :cond_0

    .line 579
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a()Z

    move-result v0

    const-string v2, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Redirect to home with profile %s, %s"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    .line 582
    invoke-static {p0}, Lo/adR;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v4

    invoke-interface {v4}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 583
    invoke-static {p0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 581
    invoke-static {v1, v5, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 584
    move-object v0, p0

    check-cast v0, Lo/Jx;

    .line 588
    invoke-virtual {v0}, Lo/Jx;->h()Lcom/netflix/cl/model/AppView;

    move-result-object v3

    .line 589
    invoke-virtual {v0}, Lo/Jx;->d()Z

    move-result v0

    .line 586
    invoke-static {p0, v3, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    .line 590
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 585
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 594
    invoke-static {p0}, Lo/adR;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v4

    invoke-interface {v4}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 595
    invoke-static {p0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 593
    invoke-static {v1, v5, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 596
    sget-object v0, Lcom/netflix/cl/model/AppView;->appLoading:Lcom/netflix/cl/model/AppView;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a:Z

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    .line 597
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 596
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Landroid/content/Intent;)V

    .line 601
    :goto_0
    invoke-static {p0}, Lo/adR;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    .line 602
    invoke-static {v0}, Lo/abR;->a(Lcom/netflix/mediaclient/service/user/UserAgent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    invoke-static {p1}, Lo/abR;->e(Lo/Am;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "EOG: double check with server if priceIncrease message is still valid to show"

    .line 605
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->m:Lo/JM;

    invoke-virtual {v1}, Lo/JM;->b()Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    .line 607
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;

    const-string v3, "LaunchActivity fetchAccountDataError"

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/Am;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 627
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i(Lo/Am;)V

    .line 631
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)Z
    .locals 3

    .line 660
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "LaunchActivity"

    if-eqz p0, :cond_0

    const-string p0, "Network connectivity exist, go to LOLOMO"

    .line 661
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 665
    :cond_0
    invoke-virtual {p1}, Lo/Am;->r()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Offline feature not available!"

    .line 666
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 670
    :cond_1
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p0

    invoke-interface {p0}, Lo/Rq;->c()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    new-array p1, p0, [Ljava/lang/Object;

    .line 672
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v2

    invoke-interface {v2}, Lo/Rq;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "Network connectivity do NOT exist, we have %d offline titles available, load Offline UI..."

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0

    :cond_2
    const-string p0, "Network connectivity do NOT exist, we do NOT have any offline titles available, load LOLOMO..."

    .line 676
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->f:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method private d()V
    .locals 2

    .line 790
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->j()V

    .line 793
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "prefs_non_member_playback"

    .line 799
    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 800
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 802
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i()V

    goto :goto_0

    .line 804
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->k()V

    .line 808
    :goto_0
    invoke-static {p0}, Lo/yn;->d(Landroid/content/Context;)V

    return-void
.end method

.method private d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Long;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "LaunchActivity"

    if-eqz p1, :cond_0

    .line 1147
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Google Play Services: STATUS: RESOLVING"

    .line 1148
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :try_start_0
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->l:Ljava/lang/Long;

    const/4 v2, 0x2

    .line 1151
    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Google Play Services: STATUS: Failed to send resolution."

    .line 1153
    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v2, "Google Play Services: STATUS: FAIL"

    .line 1157
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Google Play Services: Could Not Resolve Error"

    .line 1158
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Failed to initiate resolve, start regular user not signed in workflow"

    .line 1163
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmartLock.request"

    .line 1164
    invoke-static {p2, v0, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V

    const-string p2, "SignInWithGoogleSmartLock"

    .line 1165
    invoke-static {p2, v0, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V

    .line 1166
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d()V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->t()V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/Long;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a(Ljava/lang/Long;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V

    return-void
.end method

.method private d(Lo/Am;)V
    .locals 5

    .line 520
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->m()V

    .line 521
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h()V

    .line 522
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->n()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 526
    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    const-string v3, "LaunchActivity"

    if-ne v1, v2, :cond_1

    const-string p1, "Handled by nflx workflow"

    .line 527
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    goto :goto_2

    .line 529
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne v1, v2, :cond_2

    const-string p1, "Handled by nflx workflow with delay. Stay on splash screen..."

    .line 530
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_4

    .line 532
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->profileGatePolicy:Lo/Jp;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a()Z

    move-result v3

    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a:Z

    invoke-virtual {v1, v2, v3, v4}, Lo/Jp;->a(Landroid/content/Intent;ZZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 533
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lo/BC;->isProfileLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 536
    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lo/Am;)V

    goto :goto_2

    .line 534
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c()V

    :goto_2
    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V
    .locals 2

    .line 991
    invoke-static {p0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 999
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 1001
    invoke-virtual {p0, p1, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    .line 1002
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_0

    .line 1005
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$6;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i(Lo/Am;)V

    return-void
.end method

.method private e(Lo/Am;)V
    .locals 4

    .line 484
    const-class v0, Lo/IE;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/IE;

    invoke-interface {v0}, Lo/IE;->c()Z

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v2, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->d:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    .line 486
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v2, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->a:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    if-nez v0, :cond_0

    const-string v0, "LaunchActivity"

    const-string v1, "handleUserSignedIn, no request pending"

    .line 489
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lo/Am;)V

    return-void

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->m()V

    .line 495
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h()V

    .line 497
    new-instance v0, Lo/Jk;

    invoke-direct {v0, p0, p1}, Lo/Jk;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o:Ljava/lang/Runnable;

    .line 502
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->k:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    const-string v1, "com.netflix.mediaclient.intent.action.LANGUAGES_INSTALLED_INTENT_ACTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 514
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d:Z

    return p1
.end method

.method private synthetic f(Lo/Am;)V
    .locals 2

    const-string v0, "LaunchActivity"

    const-string v1, "handleUserSignedIn mPostLanguageInstallRunnable"

    .line 498
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lo/Am;)V

    return-void
.end method

.method private f()Z
    .locals 3

    .line 828
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->n()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    .line 829
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    const-string v2, "LaunchActivity"

    if-ne v0, v1, :cond_0

    const-string v0, "Handled by nflx workflow"

    .line 830
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    goto :goto_0

    .line 832
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne v0, v1, :cond_1

    const-string v0, "Handled by nflx workflow with delay. Stay on splash screen..."

    .line 833
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private g()V
    .locals 0

    .line 848
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->j()V

    .line 850
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i()V

    .line 853
    invoke-static {p0}, Lo/yn;->d(Landroid/content/Context;)V

    return-void
.end method

.method private g(Lo/Am;)V
    .locals 3

    .line 705
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "hasDeepLinks"

    .line 707
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 710
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Intent;)V

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.netflix.mediaclient.LOGIN"

    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->j(Lo/Am;)V

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {p1}, Lo/Am;->E()Z

    move-result v0

    const-string v1, "LaunchActivity"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lo/Am;->I()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "cookie\'d in former member case"

    .line 719
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->g()V

    goto :goto_0

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 727
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 728
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 729
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 730
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 731
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 732
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 733
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string p1, "Google Play Services are not available, go with regular workflow"

    .line 735
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 898
    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 899
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 863
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abD$StateListAnimator;->h(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 864
    const-class v1, Lo/IE;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/IE;

    invoke-interface {v1, v0}, Lo/IE;->b(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LaunchActivity"

    const-string v1, "handleUserSignUp, no request pending"

    .line 866
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o()V

    return-void

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->m()V

    .line 872
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h()V

    .line 874
    new-instance v0, Lo/Jn;

    invoke-direct {v0, p0}, Lo/Jn;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o:Ljava/lang/Runnable;

    .line 879
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hY:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;I)V

    .line 881
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->k:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    const-string v2, "com.netflix.mediaclient.intent.action.LANGUAGES_INSTALLED_INTENT_ACTION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 893
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private i(Lo/Am;)V
    .locals 0

    .line 645
    invoke-virtual {p1}, Lo/Am;->N()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object p1

    .line 646
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result p1

    invoke-static {p1}, Lo/abL;->b(Z)Z

    move-result p1

    .line 647
    invoke-static {p0, p1}, Lo/abL;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 858
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j(Lo/Am;)V
    .locals 8

    .line 741
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 742
    invoke-virtual {p1}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "email"

    .line 749
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "password"

    .line 750
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 751
    invoke-static {p0}, Lo/adq;->c(Landroid/app/Activity;)V

    .line 752
    invoke-virtual {p1}, Lo/Am;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "LaunchActivity"

    const-string v0, "we shouldn\'t really be here. "

    .line 753
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_1
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/SignIn;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/action/SignIn;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 756
    invoke-static {p0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 758
    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/service/user/UserAgent;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "no connectivity, exiting..."

    .line 743
    invoke-static {p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    return-void
.end method

.method private k()V
    .locals 3

    const-string v0, "LaunchActivity"

    const-string v1, "User is NOT logged in, redirect to Login screen"

    .line 929
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {p0}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 932
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private l()Z
    .locals 1

    .line 983
    invoke-static {}, Lo/ha;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 905
    invoke-static {p0, v0}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    const/4 v0, 0x0

    .line 906
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->k:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private n()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    .line 954
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 957
    invoke-static {v0}, Lo/az;->d(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo/Zg;->c:Lo/Zg;

    sget-object v2, Lcom/netflix/cl/model/AppView;->webLink:Lcom/netflix/cl/model/AppView;

    .line 959
    invoke-virtual {v1, v0, p0, v2}, Lo/Zg;->b(Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 963
    :cond_0
    invoke-static {p0, v0}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    return-object v0

    .line 967
    :cond_1
    :try_start_0
    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c:J

    invoke-static {p0, v0, v1, v2}, Lo/bi;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v1

    .line 968
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lo/bk;

    if-nez v2, :cond_2

    sget-object v2, Lo/Zg;->c:Lo/Zg;

    sget-object v3, Lcom/netflix/cl/model/AppView;->webLink:Lcom/netflix/cl/model/AppView;

    .line 971
    invoke-virtual {v2, v0, p0, v3}, Lo/Zg;->b(Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 972
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 974
    :cond_2
    invoke-static {p0, v0}, Lo/Om;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 975
    invoke-interface {v1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;->w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LaunchActivity"

    const-string v2, "Failed to parse nflx url "

    .line 977
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method

.method private o()V
    .locals 2

    .line 912
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LaunchActivity"

    const-string v1, "User has not signed up, redirect to Signup screen"

    .line 913
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->m()V

    .line 915
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h()V

    .line 917
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/abD$StateListAnimator;->j(Landroid/content/Context;)V

    .line 918
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/abD$StateListAnimator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 919
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    const-string v0, "LaunchActivity"

    const-string v1, "Unregistering Nflx receiver"

    .line 1027
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method

.method private q()V
    .locals 3

    const-string v0, "LaunchActivity"

    const-string v1, "Register receiver"

    .line 1022
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->t:Landroid/content/BroadcastReceiver;

    const-string v1, "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalIntentNflxUi"

    invoke-static {p0, v0, v2, v1}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private r()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1054
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b:Z

    .line 1055
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "LaunchActivity"

    const-string v2, "delayedHandlerActivityFinish mOnStopDone=%b mDelayedHandlerActionDone=%b"

    .line 1054
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1056
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d:Z

    if-eqz v0, :cond_0

    .line 1057
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic s()V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "LaunchActivity"

    if-eqz v0, :cond_0

    const-string v0, "Callback already returned, login workflow in progress, do nothing"

    .line 769
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "=====> Timeout on Google Play Services, go with regular workflow"

    .line 774
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d()V

    return-void
.end method

.method private synthetic t()V
    .locals 2

    const-string v0, "LaunchActivity"

    const-string v1, "handleUserSignUp signUpLauncher"

    .line 875
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->o()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allowTransitionAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b()Z
    .locals 1

    .line 685
    invoke-static {p0}, Lo/adR;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .line 551
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    sget-object v1, Lcom/netflix/cl/model/AppView;->appLoading:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0, p0, v1}, Lo/Zg;->e(Landroid/app/Activity;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 377
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    return-object v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAccountDeactivated()V
    .locals 2

    const-string v0, "LaunchActivity"

    const-string v1, "Account deactivated ..."

    .line 1289
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleProfileReadyToSelect()V
    .locals 2

    const-string v0, "LaunchActivity"

    const-string v1, "New profile requested - starting profile selection activity..."

    .line 1279
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "New profile requested - activity is not finished or destroyed, continuing selection activity..."

    .line 1281
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    sget-object v1, Lcom/netflix/cl/model/AppView;->appLoading:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0, p0, v1}, Lo/Zg;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1283
    invoke-static {p0}, Lo/Jv;->finishAllAccountActivities(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1232
    invoke-super {p0, p1, p2, p3}, Lo/Jo;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SignInWithGoogleSmartLock"

    const-string v1, "SmartLock.request"

    const-string v2, "resultCode"

    const-string v3, "SmartLock.resolve"

    const-string v4, "apiCalled"

    const-string v5, "LaunchActivity"

    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "onActivityResult: conflict resolved"

    .line 1240
    invoke-static {v5, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->l:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 1242
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 1243
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "Credential Read: NOT OK"

    .line 1245
    invoke-static {v5, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Google Play Services: Credential Read Failed"

    .line 1246
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1248
    new-instance p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    invoke-direct {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;-><init>()V

    .line 1249
    invoke-virtual {p1, v4, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    .line 1250
    invoke-virtual {p1, v2, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->b(Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    .line 1251
    new-instance p2, Lcom/netflix/cl/model/Error;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e()Lcom/netflix/cl/model/Debug;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    .line 1252
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->l:Ljava/lang/Long;

    invoke-virtual {p1, p3, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 1253
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v0, p2}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 1255
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d()V

    goto :goto_0

    :cond_1
    const/16 p3, 0x17

    if-ne p1, p3, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 1258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "onActivityResult: No action. IN_APP_UPDATE_REQUEST_CODE %d"

    invoke-static {v5, p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1260
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult: unkown request code"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    new-instance p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    invoke-direct {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;-><init>()V

    .line 1263
    invoke-virtual {p1, v4, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    .line 1264
    invoke-virtual {p1, v2, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->b(Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    const-string p2, "requestCode"

    const-string p3, "unkown"

    .line 1265
    invoke-virtual {p1, p2, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;

    .line 1266
    new-instance p2, Lcom/netflix/cl/model/Error;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->e()Lcom/netflix/cl/model/Debug;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    .line 1267
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->l:Ljava/lang/Long;

    invoke-virtual {p1, p3, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 1268
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v0, p2}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 1270
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d()V

    :goto_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    const-string p1, "LaunchActivity"

    const-string v0, "onConnected, retrieve credentials if any"

    .line 1088
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/SignInWithGoogleSmartLock;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/action/SignInWithGoogleSmartLock;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 1091
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/RequestSharedCredentials;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/action/RequestSharedCredentials;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 1095
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1096
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setPasswordLoginSupported(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    move-result-object v0

    .line 1099
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lo/Jt;

    invoke-direct {v1, p0, p1}, Lo/Jt;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1079
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .line 1225
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_0

    .line 1226
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c:J

    .line 222
    invoke-super {p0, p1}, Lo/Jo;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->g:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c:J

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->d(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;J)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->a:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c:J

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->d(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;J)V

    .line 230
    :goto_0
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->m:Lo/JM;

    .line 231
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setRequestedOrientation(I)V

    :cond_1
    if-nez p1, :cond_3

    .line 236
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 237
    invoke-static {}, Lo/bM;->e()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a:Z

    .line 239
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isColdStart"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p0}, Lo/L;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "network_type"

    .line 242
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a()V

    .line 250
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->k:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 251
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->m:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 252
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->n:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 254
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->w()V

    .line 278
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->q()V

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->E()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "LaunchActivity"

    if-eqz p1, :cond_4

    :try_start_1
    const-string p1, "Service is ready, just use loading view..."

    .line 281
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance p1, Lo/WebHistoryItem;

    invoke-direct {p1, p0}, Lo/WebHistoryItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setContentView(Landroid/view/View;)V

    .line 283
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->jI:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string p1, "Service is NOT ready, use splash screen... nf_config: splashscreen"

    .line 285
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->fL:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setContentView(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 291
    :try_start_2
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cj:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 292
    sget-object v0, Lo/jy;->a:Lo/jy;

    invoke-virtual {v0, p1}, Lo/jy;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 294
    :catch_1
    sget-object p1, Lo/IB;->d:Lo/IB;

    invoke-virtual {p1}, Lo/IB;->c()V

    .line 297
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->badInstallation()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 298
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showMissingSplitError()V

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 360
    invoke-super {p0}, Lo/Jo;->onDestroy()V

    .line 361
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->p()V

    .line 362
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->m()V

    .line 363
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->h()V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 406
    invoke-super {p0, p1}, Lo/Jo;->onNewIntent(Landroid/content/Intent;)V

    .line 407
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->n()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 354
    invoke-super {p0}, Lo/Jo;->onPause()V

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->g:Z

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 334
    invoke-super {p0, p1}, Lo/Jo;->onPostCreate(Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getSupportActionBar()Lo/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1}, Lo/Fragment;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 345
    invoke-super {p0}, Lo/Jo;->onResume()V

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->f:Lcom/netflix/mediaclient/android/app/Status;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->g:Z

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->f:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {p0, v0}, Lo/FindActionModeCallback;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->g:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 543
    invoke-super {p0}, Lo/Jo;->onStop()V

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b:Z

    .line 545
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->r()V

    return-void
.end method

.method public shouldAddSystemBarBackgroundViews()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldFinishOnManagerError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
