.class Lcom/netflix/mediaclient/ui/player/error/ActionId7ErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "ActionId7ErrorDescriptor.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 18
    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId7ErrorDescriptor;
    .locals 7

    .prologue
    .line 22
    const-string/jumbo v0, "nf_play_error"

    const-string/jumbo v1, "ActionID 7 NFErr_MC_NCCP_ImpossibleImpossibility, logout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const/4 v3, 0x0

    const v1, 0x7f080165

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 29
    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/ActionId7ErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId7ErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method
