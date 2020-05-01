.class public final Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;
.super Ljava/lang/Object;
.source "PlaybackLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_play"

.field public static final UNDEFINED_START_TIME:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static displayErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p0, v3, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    return-void
.end method

.method private static getOldPlaybackIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;IZ)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v1

    if-ge p2, v1, :cond_0

    const-string/jumbo v1, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v1, "SeamlessMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    return-object v0

    :cond_0
    const-string/jumbo v1, "nf_play"

    const-string/jumbo v2, "Start time parameter was ignored since it exceeds the total duration."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isExisitingMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_play"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Check if MDX remote target exist in target list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_play"

    const-string/jumbo v2, "MDX service is NOT ready"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v0, v3

    if-ge v0, v2, :cond_3

    :cond_2
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v2, "No MDX remote targets found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget-object v4, v3, v0

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Target found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v2, "Target NOT found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logMdx(Lcom/netflix/mediaclient/servicemgr/IMdx;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_play"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MDX is ready "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_play"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MDX found targets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "nf_play"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MDX current target \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "MDX found no targets "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_play"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Asset to playback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1, p3, p4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->getOldPlaybackIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;IZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/util/Coppola1Utils;->launchCoppolaDetails(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V

    goto :goto_0
.end method

.method public static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZ)V

    return-void
.end method

.method public static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p3, p4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V

    return-void
.end method

.method public static shouldPlayOnRemoteTarget(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "nf_play"

    const-string/jumbo v2, "MDX or service manager are null! That should NOT happen. Default to local."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->logMdx(Lcom/netflix/mediaclient/servicemgr/IMdx;)V

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "nf_play"

    const-string/jumbo v2, "Local target, play on device"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->isExisitingMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    return-void
.end method

.method public static startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->whereToPlay(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$2;->$SwitchMap$com$netflix$mediaclient$ui$common$PlaybackLauncher$PlaybackTarget:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080236

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->displayErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080237

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->displayErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    return-void
.end method

.method public static startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    return-void
.end method

.method public static startPlaybackForceLocal(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    return-void
.end method

.method public static startPlaybackForceRemote(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    return-void
.end method

.method public static startPlaybackOnPINSuccess(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Starting MDX remote playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p3, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$1;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$1;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Start local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p3, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Local playback is disabled, we can not start playback!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080236

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->displayErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    goto :goto_0
.end method

.method private static verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V
    .locals 5

    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "nf_pin verifyPinAndPlay - %s ageProtected: %b, pinProtected:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAY_LAUNCHER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v1

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    return-void
.end method

.method public static whereToPlay(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "MDX or service manager are null! That should NOT happen. Default to local."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "MDX manager null, but configuration exist and local playback is enabled, go local."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "MDX manager null, but configuration exist and local playback is disabled, display an error."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->localButDisabled:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Service manager not available or ready! Guess that local playback is enabled! We should never end here!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->logMdx(Lcom/netflix/mediaclient/servicemgr/IMdx;)V

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Local target, play on device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Local target, but local playback disabled. Try to find at least one remote target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    :cond_5
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Local target, local playback disabled and no remote targets. Display an error."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->localButDisabled:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v2, "nf_play"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Try to set first remote target as current target and launch playback. To "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v1, v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v2

    aget-object v0, v1, v4

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setCurrentTarget(Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remote:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto/16 :goto_0

    :cond_8
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->isExisitingMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remote:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_a

    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Remote target not available and local playback enabled, play on device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Remote target not available and local playback disabled, report an error!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remoteButNotAvailable:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto/16 :goto_0
.end method
