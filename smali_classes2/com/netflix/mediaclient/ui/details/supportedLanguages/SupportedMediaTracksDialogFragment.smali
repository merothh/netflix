.class public final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;
.super Lo/SynchronousResultReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;,
        Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SynchronousResultReceiver<",
        "Lo/EW;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$StateListAnimator;


# instance fields
.field private b:Lo/agg;

.field private d:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

.field private f:Ljava/lang/Long;

.field private h:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

.field private j:Lio/reactivex/disposables/Disposable;

.field private l:Ljava/util/HashMap;

.field private n:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 52
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->ce:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 57
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fP:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-wide/16 v3, 0x12c

    const/4 v5, 0x0

    move-object v2, p0

    .line 49
    invoke-direct/range {v2 .. v8}, Lo/SynchronousResultReceiver;-><init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    return-object p0
.end method

.method private final a(ILo/alA;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/alA<",
            "-",
            "Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$DownloadPromptSelectedOption;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v4, Lcom/netflix/cl/model/AppView;->unavailableLanguagePrompt:Lcom/netflix/cl/model/AppView;

    invoke-direct {v3, v4, v2}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    .line 392
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v3, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 395
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 396
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->fO:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 398
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->eL:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/ImageSwitcher;

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    .line 404
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->df:I

    goto :goto_0

    .line 402
    :cond_0
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->dk:I

    goto :goto_0

    .line 401
    :cond_1
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->dd:I

    .line 399
    :goto_0
    invoke-virtual {v2, v4}, Lo/ImageSwitcher;->setText(I)V

    .line 408
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v2

    .line 410
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->eO:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/ImageSwitcher;

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_3

    if-eqz v2, :cond_2

    .line 430
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ek:I

    goto :goto_1

    .line 432
    :cond_2
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->en:I

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 422
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ke:I

    goto :goto_1

    .line 424
    :cond_4
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kg:I

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 415
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->et:I

    goto :goto_1

    .line 417
    :cond_6
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->er:I

    .line 411
    :goto_1
    invoke-virtual {v4, p1}, Lo/ImageSwitcher;->setText(I)V

    .line 438
    new-instance p1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {p1, v3}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    .line 440
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->eP:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/ImageSwitcher;

    .line 441
    new-instance v4, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Dialog;

    invoke-direct {v4, p2, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Dialog;-><init>(Lo/alA;Lo/PendingIntent;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->eQ:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/ImageSwitcher;

    if-eqz v2, :cond_7

    .line 454
    new-instance v2, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$PictureInPictureParams;

    invoke-direct {v2, p2, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$PictureInPictureParams;-><init>(Lo/alA;Lo/PendingIntent;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v2}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_7
    const-string v2, "streamingButton"

    .line 464
    invoke-static {v3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 467
    :goto_2
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->eM:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/ImageSwitcher;

    .line 468
    new-instance v3, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$AssistContent;

    invoke-direct {v3, p2, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$AssistContent;-><init>(Lo/alA;Lo/PendingIntent;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    new-instance p2, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$SharedElementCallback;

    invoke-direct {p2, v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$SharedElementCallback;-><init>(Ljava/lang/Long;)V

    check-cast p2, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, p2}, Lo/PendingIntent;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 483
    invoke-virtual {p1, v0}, Lo/PendingIntent;->e(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 484
    invoke-virtual {p1, p2}, Lo/PendingIntent;->setCancelable(Z)V

    .line 485
    invoke-virtual {p1, p2}, Lo/PendingIntent;->setCanceledOnTouchOutside(Z)V

    .line 486
    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;ZZZ)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b(ZZZ)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->r()V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    return-void
.end method

.method private final b(ZZZ)V
    .locals 25

    move-object/from16 v6, p0

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    const-string v0, "requireNetflixActivity()"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    .line 290
    move-object v0, v3

    check-cast v0, Lo/CY;

    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    const-string v0, "(netflixActivity as Play\u2026textProvider).playContext"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->r:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {v4, v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    const-string v0, "detailsPage"

    .line 293
    invoke-interface {v4, v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->c(Ljava/lang/String;)V

    .line 294
    new-instance v5, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v7, v5

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1fff

    const/16 v24, 0x0

    invoke-direct/range {v7 .. v24}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    .line 295
    sget-object v0, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Lcom/netflix/cl/model/AppView;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 299
    new-instance v1, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    .line 300
    iget-object v2, v6, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getBcp47Code()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v0

    .line 301
    :goto_0
    iget-object v2, v6, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->h:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    sget-object v7, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_OFF:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    if-eq v2, v7, :cond_2

    .line 302
    iget-object v2, v6, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->h:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getBcp47Code()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object v9, v0

    .line 306
    :goto_2
    iget-object v2, v6, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_3
    sget-object v7, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->AUDIO_ASSISTIVE:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v2, v7, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 307
    :goto_4
    iget-object v7, v6, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->h:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object v7, v0

    :goto_5
    sget-object v12, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_CLOSED_CAPTIONS:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    if-ne v7, v12, :cond_6

    const/4 v11, 0x1

    :cond_6
    move-object v7, v1

    move v10, v2

    move/from16 v12, p2

    .line 299
    invoke-direct/range {v7 .. v12}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v5, v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;)V

    .line 313
    :cond_7
    iget-object v1, v6, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b:Lo/agg;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lo/agg;->bb()Lo/AK;

    move-result-object v1

    move-object v7, v1

    goto :goto_6

    :cond_8
    move-object v7, v0

    .line 314
    :goto_6
    iget-object v1, v6, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b:Lo/agg;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    :cond_9
    move-object v8, v0

    .line 315
    new-instance v9, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    check-cast v9, Lo/alN;

    .line 312
    invoke-static {v7, v8, v9}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void

    .line 290
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.common.PlayContextProvider"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->p()V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;ZZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 286
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b(ZZZ)V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->h:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    return-object p0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->h:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;ILo/alA;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->a(ILo/alA;)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lo/agg;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b:Lo/agg;

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Z)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->c(Z)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->q()Z

    move-result p0

    return p0
.end method

.method private final p()V
    .locals 2

    .line 496
    new-instance v0, Lcom/netflix/cl/model/event/session/command/CancelCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/CancelCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 497
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->f:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 498
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->f:Ljava/lang/Long;

    .line 500
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->dismiss()V

    return-void
.end method

.method private final q()Z
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->h:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_OFF:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private final r()V
    .locals 9

    .line 193
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b:Lo/agg;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_2

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b:Lo/agg;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/agg;->bu()Lo/agg;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/agg;->bb()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b:Lo/agg;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/agg;->bb()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 204
    :goto_1
    invoke-static {v0}, Lo/RL;->c(Ljava/lang/String;)Lo/Bi;

    move-result-object v2

    .line 205
    invoke-static {v2}, Lo/RL;->f(Lo/Bi;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, p0

    .line 208
    invoke-static/range {v3 .. v8}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->c(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;ZZZILjava/lang/Object;)V

    goto :goto_2

    .line 214
    :cond_4
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v2

    const-string v3, "BaseNetflixApp.getInstance()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v2

    invoke-virtual {v2}, Lo/CameraPrewarmService;->b()Lo/pz;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lo/pz;->b()Lo/zY;

    move-result-object v1

    .line 215
    :cond_5
    new-instance v2, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V

    check-cast v2, Lo/alN;

    .line 212
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    if-eqz v0, :cond_6

    goto :goto_2

    .line 274
    :cond_6
    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 275
    invoke-static/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->c(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;ZZZILjava/lang/Object;)V

    .line 279
    sget-object v0, Lo/akj;->a:Lo/akj;

    :goto_2
    return-void
.end method


# virtual methods
.method public d(Lio/reactivex/Observable;Lio/reactivex/subjects/PublishSubject;Z)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/EW;",
            ">;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/EW;",
            ">;Z)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "controllerItemClicks"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClickItemsSubject"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    new-instance v0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lio/reactivex/subjects/PublishSubject;Z)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    .line 356
    invoke-super {p0}, Lo/SynchronousResultReceiver;->d()V

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->j:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extra_dp_top_level_video_id"

    .line 94
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    new-instance p2, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;

    invoke-direct {p2, p1, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V

    check-cast p2, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {p2}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->c(Lio/reactivex/Observable;)V

    goto :goto_0

    .line 123
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    .line 124
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/SynchronousResultReceiver;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->i()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 340
    invoke-super {p0}, Lo/SynchronousResultReceiver;->onStart()V

    .line 343
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->playWithAudioSubtitlesPrompt:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->f:Ljava/lang/Long;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 347
    invoke-super {p0}, Lo/SynchronousResultReceiver;->onStop()V

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->f:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->f:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 351
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->f:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1, p2}, Lo/SynchronousResultReceiver;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->e()Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object p2

    .line 504
    new-instance v0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Application;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Application;-><init>(Lo/UnicodeScript;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/reactivex/ObservableSource;

    .line 136
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 138
    new-instance p2, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    .line 173
    new-instance v1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Fragment;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Fragment;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 137
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->j:Lio/reactivex/disposables/Disposable;

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->a()Lio/reactivex/Observable;

    move-result-object p1

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object p2

    .line 505
    new-instance v1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$TaskDescription;

    invoke-direct {v1, p2}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$TaskDescription;-><init>(Lo/UnicodeScript;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/reactivex/ObservableSource;

    .line 180
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 182
    new-instance p2, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$PendingIntent;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    .line 185
    new-instance v0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$FragmentManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$FragmentManager;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 181
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->n:Lio/reactivex/disposables/Disposable;

    return-void
.end method
