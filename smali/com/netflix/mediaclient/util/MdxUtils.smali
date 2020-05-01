.class public final Lcom/netflix/mediaclient/util/MdxUtils;
.super Ljava/lang/Object;
.source "MdxUtils.java"


# static fields
.field private static final MDX_EOS_DELTA_INSECOND:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MdxUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static createMdxDisconnectDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 382
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "Activity is not valid or MdxFrag is null. Skipping MDX disconnect dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-object v0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 387
    const v2, 0x7f030092

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 389
    const v0, 0x7f0f01e0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 390
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v0, 0x7f0f01e1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 394
    const v1, 0x7f0f01e2

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 396
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    .line 397
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->isPlayingRemotely()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 398
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080247

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, ""

    aput-object v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08023e

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 404
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    .line 405
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    .line 404
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 409
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v3

    .line 414
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08023c

    new-instance v2, Lcom/netflix/mediaclient/util/MdxUtils$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/util/MdxUtils$2;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 417
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v10}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 407
    :cond_2
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 411
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08023d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 412
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v2

    goto :goto_2
.end method

.method public static createMdxMenuDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;
    .locals 2

    .prologue
    .line 268
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Activity is not valid. Skipping MDX menu dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isTargetReadyToControl(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxDisconnectDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_2
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public static createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 285
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Activity is not valid or MdxFrag is null. Skipping MDX target selection dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 292
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getTargetSelection()Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    move-result-object v2

    .line 293
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getDevicePositionByUUID(Ljava/lang/String;)I

    move-result v3

    .line 294
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->setTarget(I)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 296
    new-instance v4, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 297
    invoke-virtual {v4, v6}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 298
    const v0, 0x7f08018e

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setTitle(I)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    .line 299
    invoke-virtual {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getTargets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setAdapterData(Ljava/util/List;)V

    .line 301
    const-string/jumbo v0, ""

    .line 302
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 303
    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v7

    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_2
    invoke-virtual {v4, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setSelection(ILjava/lang/String;)V

    .line 307
    new-instance v0, Lcom/netflix/mediaclient/util/MdxUtils$1;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/netflix/mediaclient/util/MdxUtils$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 378
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlayableVideoId(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    instance-of v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Episode, use show ID as video ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 68
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getShowId()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Movie, use movie ID as video ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAnyMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 465
    if-nez p0, :cond_0

    .line 466
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "MDX agent is null inside isAnyMdxTargetAvailable()...returning false!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_0
    return v0

    .line 470
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "MDX service is NOT ready"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v2

    .line 476
    if-eqz v2, :cond_2

    array-length v3, v2

    if-ge v3, v1, :cond_3

    .line 477
    :cond_2
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "No MDX remote targets found"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    const-string/jumbo v0, "MdxUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MDX remote targets found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 483
    goto :goto_0
.end method

.method public static isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 2

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "MDX service is NOT ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "MdxUtils"

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

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v2, "uuid is empty"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return v1

    .line 225
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    :cond_2
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v2, "MDX service is NOT ready"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v3

    .line 231
    if-eqz v3, :cond_4

    array-length v0, v3

    if-ge v0, v2, :cond_5

    .line 232
    :cond_4
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v2, "No MDX remote targets found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 236
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 237
    aget-object v4, v3, v0

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 238
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Target found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 239
    goto :goto_0

    .line 236
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_7
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v2, "Target NOT found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isMediaSessionAvailable()Z
    .locals 2

    .prologue
    .line 455
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameVideoPlaying(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 114
    if-nez p0, :cond_0

    .line 115
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "MDX agent is null - isSameVideoPlaying returning false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "Video detail is null - isSameVideoPlaying returning false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 126
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    const-string/jumbo v2, "MdxUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentPlayout.getPlayableId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_1
    if-eqz v1, :cond_4

    .line 133
    const-string/jumbo v2, "MdxUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currentVideo.getPlayableId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Same video is playing, just sync..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_3
    const-string/jumbo v2, "MdxUtils"

    const-string/jumbo v3, "mCurrentPlayout is empty"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_4
    const-string/jumbo v2, "MdxUtils"

    const-string/jumbo v3, "currentVideo is null "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 143
    :cond_5
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "Video is not currently playing or different video, start play if play is not already pending..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isTargetReadyToControl(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 2

    .prologue
    .line 201
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "isTargetReadyToControl"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "isTargetReadyToControl check is launched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isTargetLaunchingOrLaunched()Z

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setProgressByBif(Landroid/widget/SeekBar;)I
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 83
    div-int/lit8 v0, v1, 0xa

    .line 84
    mul-int/lit8 v0, v0, 0xa

    .line 87
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 88
    add-int/lit8 v3, v0, 0xa

    if-lt v3, v2, :cond_0

    if-lez v2, :cond_0

    .line 89
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v3, "seek to close to EOS, defaulting to 10 seconss before EOS."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int/lit8 v0, v2, -0xa

    .line 93
    :cond_0
    if-ne v0, v1, :cond_2

    .line 94
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const-string/jumbo v2, "MdxUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Right on target, no need to ajust seekbar position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " [sec]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    :goto_0
    return v0

    .line 98
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    const-string/jumbo v2, "MdxUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Progres : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " [sec] vs. bif position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " [sec]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
