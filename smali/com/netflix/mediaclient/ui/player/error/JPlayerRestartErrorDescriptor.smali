.class public Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "JPlayerRestartErrorDescriptor.java"


# static fields
.field private static final NFErr_Interrupted:I = -0xffefff7

.field private static sAppRestartCountForJPlayer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;->sAppRestartCountForJPlayer:I

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;
    .locals 7

    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "https://help.netflix.com/en/node/14384"

    invoke-direct {v6, v0, v1}, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v4, Lcom/netflix/mediaclient/service/error/action/RestartApplicationAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/service/error/action/RestartApplicationAction;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const-string/jumbo v1, ""

    const/4 v3, 0x0

    const v5, 0x7f080165

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method

.method static isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/media/Error;->getError()I

    move-result v0

    const v1, -0xffefff7

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne v0, v1, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;->sAppRestartCountForJPlayer:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;->sAppRestartCountForJPlayer:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getJPlayerStreamErrorRestartCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_play_error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JPlayer app restart count exceded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getJPlayerStreamErrorRestartCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPriority()I
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getPriority()I

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->shouldReportToUserAsDialog(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
