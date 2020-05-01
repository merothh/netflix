.class Lcom/netflix/mediaclient/ui/player/error/ActionId10ErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "ActionId10ErrorDescriptor.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId10ErrorDescriptor;
    .locals 7

    const-string/jumbo v0, "nf_play_error"

    const-string/jumbo v1, "ActionID 10 NFErr_MC_NCCP_CustomerCredentialsRenewalRequired"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/netflix/mediaclient/service/error/action/UnregisterAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/service/error/action/UnregisterAction;-><init>(Landroid/app/Activity;)V

    new-instance v6, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "https://help.netflix.com/en/node/14384"

    invoke-direct {v6, v0, v1}, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const/4 v3, 0x0

    const v1, 0x7f080165

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/ActionId10ErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId10ErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method
