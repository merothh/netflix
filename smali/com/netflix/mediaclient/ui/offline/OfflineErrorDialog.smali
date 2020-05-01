.class public Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "OfflineErrorDialog.java"


# static fields
.field private static final CHANGE_PLAN_URL:Ljava/lang/String; = "https://www.netflix.com/changeplan"

.field private static final MIN_SPACE_CONSUMED_FOR_DELETE_OPTION:J = 0x2faf080L

.field private static final PARAMS_HAS_SOME_DOWNLOADED_DATA:Ljava/lang/String; = "hasNetflixDownloadedData"

.field private static final PARAMS_USER_REQUIRES_WIFI_CONNECTION:Ljava/lang/String; = "requiresWiFiConnection"

.field private static final PARAM_DOWNLOAD_STATE:Ljava/lang/String; = "downloadState"

.field private static final PARAM_DXID:Ljava/lang/String; = "dxid"

.field private static final PARAM_LAST_PERSISTENT_STATUS:Ljava/lang/String; = "status_bundle"

.field private static final PARAM_OXID:Ljava/lang/String; = "oxid"

.field private static final PARAM_PLAYABLE_ID:Ljava/lang/String; = "playableId"

.field private static final PARAM_STATUS_CODE_INT_VALUE:Ljava/lang/String; = "status_code_int_value"

.field private static final PARAM_STATUS_DISPLAYABLE_MESSAGE:Ljava/lang/String; = "status_displayable_message"

.field private static final PARAM_STATUS_IS_ERROR_OR_WARNING:Ljava/lang/String; = "status_is_error_or_warning"

.field private static final PARAM_STATUS_SHOW_MESSAGE:Ljava/lang/String; = "status_show_message"

.field private static final PARAM_STOP_REASON:Ljava/lang/String; = "stopReason"

.field private static final PARAM_VIDEO_TYPE:Ljava/lang/String; = "videoType"

.field private static final PARAM_WATCH_STATE:Ljava/lang/String; = "watchState"

.field private static final TAG:Ljava/lang/String; = "offlineErrorDialog"

.field private static final TESTING:Z


# instance fields
.field private final mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

.field private final mDeleteAndCreateAction:Landroid/content/DialogInterface$OnClickListener;

.field private final mDownloadResumeAction:Landroid/content/DialogInterface$OnClickListener;

.field private mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private mDxId:Ljava/lang/String;

.field private mErrorStatusCodeIntValue:I

.field private mErrorStatusDisplayMessage:Ljava/lang/String;

.field private mErrorStatusShowMessage:Z

.field private final mMyDownloadAction:Landroid/content/DialogInterface$OnClickListener;

.field private final mNoAction:Landroid/content/DialogInterface$OnClickListener;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field private mOxId:Ljava/lang/String;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private mPlayableId:Ljava/lang/String;

.field private mRetryHelper:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

.field private final mSeePlanOptionsAction:Landroid/content/DialogInterface$OnClickListener;

.field private mStatusIsErrorOrWarning:Z

.field private mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field private mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private mWatchState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStatusIsErrorOrWarning:Z

    .line 83
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusShowMessage:Z

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusDisplayMessage:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$2;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mNoAction:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$3;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadResumeAction:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$4;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAndCreateAction:Landroid/content/DialogInterface$OnClickListener;

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$5;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mMyDownloadAction:Landroid/content/DialogInterface$OnClickListener;

    .line 159
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mSeePlanOptionsAction:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getPlayContextSafely()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getDeleteAndRetryHelper()Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultDialogFromOfflineStates(Ljava/lang/String;ZZ)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 471
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    const v1, 0x7f080262

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    const v3, 0x7f080261

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 474
    if-eqz p2, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getStringResourceIdForCancelOrDelete()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 477
    :cond_0
    if-eqz p3, :cond_1

    .line 478
    const v1, 0x7f0801f5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadResumeAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 480
    :cond_1
    const v1, 0x7f0801c0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mNoAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 481
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialogFromStatusCode(Z)Landroid/support/v7/app/AlertDialog;
    .locals 8

    .prologue
    const v7, 0x7f0801c0

    const v6, 0x7f080264

    .line 486
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string/jumbo v0, "offlineErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createDialogFromStatusCode statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 491
    iget v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 492
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createNotEnoughSpaceDialog(Z)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 531
    :goto_0
    return-object v0

    .line 496
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusShowMessage:Z

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusDisplayMessage:Ljava/lang/String;

    .line 504
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 506
    iget v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_CANT_DOWNLOAD_TILL_DATE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 508
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    .line 509
    invoke-virtual {v0, v7, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 531
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    invoke-static {v0}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->getOfflineErrorCodeFromStatusIntValue(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->addParenthesisWithPrefixSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    const v3, 0x7f080261

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 510
    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_TOO_MANY_DOWNLOADED_DELETE_SOME:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 512
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mNoAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 513
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->notInMyDownloadScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    const v0, 0x7f08024f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mMyDownloadAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_2

    .line 516
    :cond_5
    iget v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_TOO_MANY_DEVICES_PLAN_OPTION:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 518
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080256

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mSeePlanOptionsAction:Landroid/content/DialogInterface$OnClickListener;

    .line 519
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 520
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getStringResourceIdForCancelOrDelete()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_2

    .line 521
    :cond_6
    iget v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DL_WARNING_DL_N_TIMES_BEFORE_DATE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 524
    const v0, 0x7f080120

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0800ce

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadResumeAction:Landroid/content/DialogInterface$OnClickListener;

    .line 525
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_2

    .line 527
    :cond_7
    const v2, 0x7f080262

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 528
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getStringResourceIdForCancelOrDelete()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0801f5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAndCreateAction:Landroid/content/DialogInterface$OnClickListener;

    .line 529
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto/16 :goto_2
.end method

.method private static createDialogInternal(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;
    .locals 4

    .prologue
    .line 219
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;-><init>()V

    .line 221
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string/jumbo v0, "playableId"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v0, "videoType"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v0, "watchState"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->getIntValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string/jumbo v0, "downloadState"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->getIntValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string/jumbo v0, "oxid"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getOxId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v0, "dxid"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDxId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "status_bundle"

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getBundleForLastPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 230
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getIntValue()I

    move-result v0

    .line 232
    :goto_0
    const-string/jumbo v3, "stopReason"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string/jumbo v0, "hasNetflixDownloadedData"

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->hasSomeNetflixDownloadData(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string/jumbo v0, "requiresWiFiConnection"

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getRequiresUnmeteredNetwork()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 238
    return-object v1

    .line 231
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getIntValue()I

    move-result v0

    goto :goto_0
.end method

.method private createGeoNotPlayableDialog()Landroid/support/v7/app/AlertDialog;
    .locals 4

    .prologue
    .line 591
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "createGeoNotPlayableDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    const v1, 0x7f08026a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080269

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 595
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getStringResourceIdForCancelOrDelete()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801c0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mNoAction:Landroid/content/DialogInterface$OnClickListener;

    .line 596
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 598
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createLicenseExpiredDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 438
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "createLicenseExpiredDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    const v1, 0x7f080265

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 442
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getStringResourceIdForCancelOrDelete()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    const v1, 0x7f080268

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 446
    const v1, 0x7f080253

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$7;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$7;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 460
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 457
    :cond_0
    const v1, 0x7f080267

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 458
    const v1, 0x7f080254

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mNoAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private createNotEnoughSpaceDialog(Z)Landroid/support/v7/app/AlertDialog;
    .locals 5

    .prologue
    const v4, 0x7f0801f5

    .line 605
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "createNotEnoughSpaceDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x0

    .line 607
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080270

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 608
    if-eqz p1, :cond_1

    .line 609
    const v2, 0x7f08026e

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 610
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->notInMyDownloadScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    const/4 v0, 0x1

    .line 612
    const v2, 0x7f08024f

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mMyDownloadAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 618
    :cond_0
    :goto_0
    const v2, 0x7f0801c0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mNoAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 620
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_3

    .line 621
    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAndCreateAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 633
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 615
    :cond_1
    const v2, 0x7f08026f

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAndCreateAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 627
    :cond_3
    if-eqz v0, :cond_4

    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadResumeAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 630
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadResumeAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method static createOfflineErrorStateDialog(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;
    .locals 1

    .prologue
    .line 200
    .line 201
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getLastPersistentStatus()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 200
    invoke-static {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createDialogInternal(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    move-result-object v0

    return-object v0
.end method

.method private createPlayWindowExpiredButRenewableDialog()Landroid/support/v7/app/AlertDialog;
    .locals 3

    .prologue
    .line 544
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "createPlayWindowExpiredButRenewableDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    const v1, 0x7f080265

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 548
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getStringResourceIdForCancelOrDelete()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    const v1, 0x7f080268

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 552
    const v1, 0x7f080253

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$8;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$8;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 569
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    const v1, 0x7f080267

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 566
    const v1, 0x7f080254

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mNoAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private createPlayWindowFinalExpiredDialog()Landroid/support/v7/app/AlertDialog;
    .locals 5

    .prologue
    .line 579
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "createPlayWindowFinalExpiredDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mOxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDxId:Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_FINAL:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;->sendLogblob(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)V

    .line 581
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    const v1, 0x7f080265

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080266

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 584
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getStringResourceIdForCancelOrDelete()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 586
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createViewWindowExpiredDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 641
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "createViewWindowExpiredDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mOxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDxId:Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->VIEW_WINDOW_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;->sendLogblob(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)V

    .line 643
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    const v1, 0x7f08026b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 646
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getStringResourceIdForCancelOrDelete()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDeleteAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 648
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private genericErrorDialogNoAction()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 653
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080262

    .line 654
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 655
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080261

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801c0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mNoAction:Landroid/content/DialogInterface$OnClickListener;

    .line 656
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 653
    return-object v0
.end method

.method private static getBundleForLastPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    const-string/jumbo v1, "status_is_error_or_warning"

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->isErrorOrWarning()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string/jumbo v1, "status_show_message"

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->shouldDisplayMessage()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    const-string/jumbo v1, "status_displayable_message"

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "status_code_int_value"

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    return-object v0
.end method

.method private getDeleteAndRetryHelper()Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mRetryHelper:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    return-object v0
.end method

.method private getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    return-object v0
.end method

.method private getPlayContextSafely()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-nez v0, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 724
    instance-of v0, v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-nez v0, :cond_1

    .line 729
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method private getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mPlayableId:Ljava/lang/String;

    return-object v0
.end method

.method private getStringResourceIdForCancelOrDelete()I
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const v0, 0x7f08024a

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080248

    goto :goto_0
.end method

.method private getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method private static hasSomeNetflixDownloadData(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v3

    .line 418
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move v1, v2

    .line 419
    :goto_0
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 420
    invoke-interface {v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    .line 421
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    .line 422
    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-ne v0, v6, :cond_1

    .line 423
    :cond_0
    invoke-interface {v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getCurrentSpace(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 419
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 426
    :cond_2
    const-wide/32 v0, 0x2faf080

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private notInMyDownloadScreen()Z
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateErrorStatusDataFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    if-eqz p1, :cond_0

    .line 253
    const-string/jumbo v0, "status_is_error_or_warning"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStatusIsErrorOrWarning:Z

    .line 254
    const-string/jumbo v0, "status_show_message"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusShowMessage:Z

    .line 255
    const-string/jumbo v0, "status_displayable_message"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusDisplayMessage:Ljava/lang/String;

    .line 256
    const-string/jumbo v0, "status_code_int_value"

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStatusIsErrorOrWarning:Z

    .line 259
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusShowMessage:Z

    .line 260
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusDisplayMessage:Ljava/lang/String;

    .line 261
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mErrorStatusCodeIntValue:I

    goto :goto_0
.end method

.method private requestDownloadButtonRefresh()V
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 411
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requestDownloadButtonRefresh(Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 275
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 278
    const-string/jumbo v3, "playableId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mPlayableId:Ljava/lang/String;

    .line 279
    const-string/jumbo v3, "videoType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 281
    const-string/jumbo v3, "watchState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->getStateByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mWatchState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 282
    const-string/jumbo v3, "downloadState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->getStateByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 283
    const-string/jumbo v3, "stopReason"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getStopReasonByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 284
    const-string/jumbo v3, "oxid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mOxId:Ljava/lang/String;

    .line 285
    const-string/jumbo v3, "dxid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDxId:Ljava/lang/String;

    .line 287
    const-string/jumbo v3, "status_bundle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->populateErrorStatusDataFromBundle(Landroid/os/Bundle;)V

    .line 289
    const-string/jumbo v3, "hasNetflixDownloadedData"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 290
    const-string/jumbo v3, "requiresWiFiConnection"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 292
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mPlayableId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v5, :cond_1

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->genericErrorDialogNoAction()Landroid/app/Dialog;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    .line 296
    :cond_1
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mRetryHelper:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    .line 298
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    const-string/jumbo v2, "offlineErrorDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "downloadState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " watchState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mWatchState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " stopReason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    const-string/jumbo v2, ""

    .line 314
    sget-object v5, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OfflineErrorDialog unhandled downloadState"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    move v0, v1

    move-object v3, v2

    move v2, v1

    .line 397
    :goto_1
    if-eqz v0, :cond_4

    .line 398
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->requestDownloadButtonRefresh()V

    .line 399
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->genericErrorDialogNoAction()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    move-object v3, v2

    move v2, v1

    .line 316
    goto :goto_1

    :pswitch_1
    move-object v3, v2

    move v2, v1

    .line 318
    goto :goto_1

    :pswitch_2
    move-object v3, v2

    move v2, v1

    .line 320
    goto :goto_1

    .line 322
    :pswitch_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->getOfflineErrorCodeForStoppedDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v2}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->addParenthesisWithPrefixSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    sget-object v5, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$StopReason:[I

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OfflineErrorDialog unhandled stopReason"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    move-object v3, v2

    move v2, v0

    move v7, v0

    move v0, v1

    move v1, v7

    .line 362
    goto :goto_1

    :pswitch_4
    move-object v3, v2

    move v2, v1

    .line 326
    goto :goto_1

    :pswitch_5
    move-object v3, v2

    move v2, v1

    .line 328
    goto :goto_1

    :pswitch_6
    move-object v3, v2

    move v2, v0

    move v7, v0

    move v0, v1

    move v1, v7

    .line 332
    goto :goto_1

    :pswitch_7
    move-object v3, v2

    move v2, v0

    move v7, v0

    move v0, v1

    move v1, v7

    .line 336
    goto :goto_1

    .line 338
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createNotEnoughSpaceDialog(Z)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    move-object v3, v2

    move v2, v1

    .line 340
    goto :goto_1

    .line 342
    :pswitch_a
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoWifiDialog(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoInternetDialog(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 345
    :pswitch_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoInternetDialog(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    move-object v3, v2

    move v2, v1

    .line 347
    goto/16 :goto_1

    :pswitch_d
    move v0, v1

    move-object v3, v2

    move v2, v1

    .line 349
    goto/16 :goto_1

    :pswitch_e
    move-object v3, v2

    move v2, v0

    move v7, v0

    move v0, v1

    move v1, v7

    .line 356
    goto/16 :goto_1

    .line 364
    :pswitch_f
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mWatchState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->getOfflineErrorCodeForCompleteDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-static {v2}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->addParenthesisWithPrefixSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$WatchState:[I

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mWatchState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_2

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OfflineErrorDialog unhandled watchState"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mWatchState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    move-object v3, v2

    move v2, v0

    move v7, v0

    move v0, v1

    move v1, v7

    .line 386
    goto/16 :goto_1

    :pswitch_10
    move-object v3, v2

    move v2, v1

    .line 368
    goto/16 :goto_1

    :pswitch_11
    move-object v3, v2

    move v2, v1

    .line 370
    goto/16 :goto_1

    .line 372
    :pswitch_12
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createLicenseExpiredDialog()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 374
    :pswitch_13
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createPlayWindowExpiredButRenewableDialog()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 376
    :pswitch_14
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createPlayWindowFinalExpiredDialog()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 378
    :pswitch_15
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createViewWindowExpiredDialog()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 380
    :pswitch_16
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createGeoNotPlayableDialog()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_17
    move-object v3, v2

    move v2, v1

    .line 388
    goto/16 :goto_1

    :pswitch_18
    move-object v3, v2

    move v2, v1

    .line 390
    goto/16 :goto_1

    :pswitch_19
    move v0, v1

    move-object v3, v2

    move v2, v1

    .line 392
    goto/16 :goto_1

    .line 401
    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mStatusIsErrorOrWarning:Z

    if-eqz v0, :cond_5

    .line 402
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createDialogFromStatusCode(Z)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    :cond_5
    invoke-direct {p0, v3, v2, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createDefaultDialogFromOfflineStates(Ljava/lang/String;ZZ)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_f
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 324
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 366
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onDestroyView()V

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mRetryHelper:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->mRetryHelper:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->cleanUp()V

    .line 271
    :cond_0
    return-void
.end method
