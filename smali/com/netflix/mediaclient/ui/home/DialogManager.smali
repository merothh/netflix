.class Lcom/netflix/mediaclient/ui/home/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$OptInResponseHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogManager"


# instance fields
.field private final mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 47
    return-void
.end method

.method private canDialogBeDisplayedSafely()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isInstanceStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Activity has saved instance state - can\'t display dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Activity is destroyed - can\'t display dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private displayGooglePlayServicesDialogIfNeeded()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 122
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string/jumbo v1, "DialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Google Play status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    if-nez v0, :cond_2

    .line 127
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "Success!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    :goto_0
    return v4

    .line 130
    :cond_2
    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 131
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "Device is not Google certified, skip"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_3
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Device is Google certified, problem with Google Play Services"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Error is recoverable, display dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->canDialogBeDisplayedSafely()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const/16 v2, 0x3e9

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Failed to display Google play services error dialog!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 147
    :cond_4
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "Error is NOT recoverable, skip"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayOfflineTutorialIfNeeded()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->shouldDisplayOfflineTutorialDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDialog(Landroid/app/DialogFragment;)Z

    .line 110
    :cond_0
    return-void
.end method

.method private displayOptInDialogIfNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->shouldDisplayOptInDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Displaying opt-in dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->newInstance()Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->canDialogBeDisplayedSafely()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDialog(Landroid/app/DialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->optInDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportUiModalViewChanged(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 101
    :cond_1
    return v0
.end method

.method private shouldDisplayOfflineTutorialDialog()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->canDialogBeDisplayedSafely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->shouldDisplayFullscreenTutorial(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldDisplayOptInDialog()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPushNotification;->wasNotificationOptInDisplayed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "User was already prompted for opt-in to social"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isDialogFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Dialog fragment is already displayed. There should only be one visible at time. Do NOT display opt-in to social."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "User was NOT prompted for opt-in to social and no dialogs are visible."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public displayDialogsIfNeeded()Z
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->displayOfflineTutorialIfNeeded()V

    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->displayOptInDialogIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "OptIn dialog displayed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "OptIn Dialog does not need to be displayed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->displayGooglePlayServicesDialogIfNeeded()Z

    move-result v0

    goto :goto_0
.end method

.method public onAccept()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "Sending PUSH_OPTIN..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 188
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "Sending PUSH_OPTIN done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->displayGooglePlayServicesDialogIfNeeded()Z

    goto :goto_0
.end method

.method public onDecline()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "Sending PUSH_OPTOUT..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DialogManager;->mOwner:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 202
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "Sending PUSH_OPTOUT done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->displayGooglePlayServicesDialogIfNeeded()Z

    goto :goto_0
.end method
