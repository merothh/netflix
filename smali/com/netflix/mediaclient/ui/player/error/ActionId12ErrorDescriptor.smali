.class public Lcom/netflix/mediaclient/ui/player/error/ActionId12ErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "ActionId12ErrorDescriptor.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 18
    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId12ErrorDescriptor;
    .locals 7

    .prologue
    .line 22
    const-string/jumbo v0, "nf_play_error"

    const-string/jumbo v1, "ActionID 12 NFErr_MC_StaleCredentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v4, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;-><init>(Landroid/app/Activity;)V

    .line 26
    new-instance v6, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "https://help.netflix.com/en/node/14384"

    invoke-direct {v6, v0, v1}, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const/4 v3, 0x0

    const v1, 0x7f080165

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 29
    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/ActionId12ErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId12ErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPriority()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getPriority()I

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->shouldReportToUserAsDialog(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
