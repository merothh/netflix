.class public Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "ContactUsActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;


# static fields
.field private static final EXTRA_PARAM_AUTODIAL:Ljava/lang/String; = "AUTODIAL"

.field private static final EXTRA_SHOULD_DIPLAY_VERIFICATION_DIALOG:Ljava/lang/String; = "com.netflix.mediaclient.ui.voip.verification_dialog"

.field private static PERMISSIONS_AUDIO:[Ljava/lang/String; = null

.field private static final REQUEST_AUDIO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VoipActivity"


# instance fields
.field private mAudioObserver:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

.field private mAutoDial:Z

.field private mDialButton:Landroid/view/View;

.field private mDialerOnTop:Z

.field private mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

.field private mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

.field private mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

.field private mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private mVerificationDialogDisplayed:Z

.field private mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->init(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->verifyBeforeDial()V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    return-object v0
.end method

.method private checkForAutoDial(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "AUTODIAL"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "AutoDial requested"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAutoDial:Z

    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAutoDial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Start autodial, service manager exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->startDial()V

    :cond_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAutoDial:Z

    goto :goto_0
.end method

.method private checkForLogData(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "VoipActivity"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Source found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "From found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v0, "entry"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "entry"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Entry point found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->checkForLogData(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->checkForAutoDial(Landroid/content/Intent;)V

    return-void
.end method

.method private clearWindowFlags()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private createEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Entry field is known, use it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Return to help page from dial or from links"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createFrom()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "From field is known, use it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "From field is not known, use entry point"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->login:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Use entry point login"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->login:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->nonMemberLanding:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Use entry point nml"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->nml:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Entry point is not know, return null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createStartIntentWithAutoDial(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "AUTODIAL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private displayConfirmationDialog()V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    new-instance v4, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$2;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    new-instance v6, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const v2, 0x7f080133

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080132

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080131

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v2, v0, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    return-void
.end method

.method private doStartDial()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PermissionUtils;->shouldRequestPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Record audio permission are not granted. Requested them."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->requestAudioPermissions()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Record audio permission has already been granted. Start dialing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "startDial:: To dialer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setWindowFlags()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->dial:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v3, v1, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is already in progress, what to start?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "startDial:: Start call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->startCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Failed to dial"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v3, v3, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getFlags()I
    .locals 1

    const/high16 v0, 0x480000

    return v0
.end method

.method private goToLandingPage()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->clearWindowFlags()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Phone, release lock on portrait for dial screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    return-void
.end method

.method private init(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->initUI(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->addOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->reportEvent()V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Verification dialog was previosly displayed, show it again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayConfirmationDialog()V

    :cond_1
    return-void
.end method

.method private initUI(Z)V
    .locals 3

    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    const v0, 0x7f0f00dc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFlipper:Landroid/widget/ViewFlipper;

    new-instance v0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    const v0, 0x7f0f010c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialButton:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VOIP is enabled, show dial button on landing page! This is force enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->update()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->update(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->initUi()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is in progress, move to dialer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setWindowFlags()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "VOIP is disabled, do not show dial button on landing page!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is not in progress, leave on landing page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private reportEvent()V
    .locals 3

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Back to ContactUsActivity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Dialer visible, report back to "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createFrom()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportBackToDialScreen(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->landscape:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Help section visible, report new help request session started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;)V

    goto :goto_1
.end method

.method private requestAudioPermissions()V
    .locals 3

    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Displaying audio permission rationale to provide additional context."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->getFab()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800bc

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f0801c0

    new-instance v2, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setWindowFlags()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private shouldDisplayCallConfirmationDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private verifyBeforeDial()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Phone, force portrait for dial screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setRequestedOrientation(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->doStartDial()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "startDial:: Already in dialer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public callConnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->callConnected()V

    goto :goto_0
.end method

.method public callDisconnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callDisconnected:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->stopTimer()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callDisconnected:: Already back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callEnded:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callEnded:: Already back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callFailed:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->stopTimer()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callFailed:: Already back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public callRinging(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->callRinging()V

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    return-object v0
.end method

.method public engineStatusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->contactUs:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    return-object v0
.end method

.method protected hasUpAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public networkFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "networkFailed:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->stopTimer()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "networkFailed:: Already back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->checkIntent(Landroid/content/Intent;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

    invoke-direct {v0, p0, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAudioObserver:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAudioObserver:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.netflix.mediaclient.ui.voip.verification_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->removeOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAudioObserver:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->checkIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->reportEvent()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_3

    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Received response for Audio permission request."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    const-string/jumbo v4, "VoipActivity"

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p3

    :goto_1
    if-ge v0, v1, :cond_1

    aget v2, p3, v0

    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/PermissionUtils;->verifyPermissions([II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Audio permission has now been granted. Go to dialer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->doStartDial()V

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Audio permission was NOT granted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->getFab()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800bb

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_2

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_2
.end method

.method protected declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayConfirmationDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Saving dialog state..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.netflix.mediaclient.ui.voip.verification_dialog"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStart()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->reportEvent()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStop()V

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->back:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    :goto_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportExitFromDialScreen(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->home:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v2, v1, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_1
.end method

.method public performAction(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->performAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Handled by landing page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->performAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Handled by dialer page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Handled by nobody!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performUpAction()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->up:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportExitFromDialScreen(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    :goto_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->up:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Running app in broken state, go for relaunch..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->finish()V

    goto :goto_1
.end method

.method protected shouldFinishOnManagerError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method startDial()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->shouldDisplayCallConfirmationDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "User is in test cell to display confirmation dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayConfirmationDialog()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Start call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->verifyBeforeDial()V

    goto :goto_0
.end method
