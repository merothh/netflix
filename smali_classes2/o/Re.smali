.class public Lo/Re;
.super Lo/WebChromeClient;
.source ""


# instance fields
.field protected b:I

.field protected final c:Landroid/content/DialogInterface$OnClickListener;

.field protected final d:Landroid/content/DialogInterface$OnClickListener;

.field protected e:Ljava/lang/String;

.field protected final f:Landroid/content/DialogInterface$OnClickListener;

.field private h:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field private l:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private m:Ljava/lang/Long;

.field private n:Ljava/lang/String;

.field private o:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private p:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private q:Z

.field private r:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field private s:Z

.field private t:Ljava/lang/String;

.field private final u:Landroid/content/DialogInterface$OnClickListener;

.field private final v:Landroid/content/DialogInterface$OnClickListener;

.field private final w:Landroid/content/DialogInterface$OnClickListener;

.field private x:Lo/nS;

.field private final y:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lo/Re;->s:Z

    .line 95
    iput-boolean v0, p0, Lo/Re;->q:Z

    const-string v0, ""

    .line 96
    iput-object v0, p0, Lo/Re;->t:Ljava/lang/String;

    .line 97
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    iput v0, p0, Lo/Re;->b:I

    .line 103
    new-instance v0, Lo/Re$2;

    invoke-direct {v0, p0}, Lo/Re$2;-><init>(Lo/Re;)V

    iput-object v0, p0, Lo/Re;->y:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    new-instance v0, Lo/Re$3;

    invoke-direct {v0, p0}, Lo/Re$3;-><init>(Lo/Re;)V

    iput-object v0, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    new-instance v0, Lo/Re$1;

    invoke-direct {v0, p0}, Lo/Re$1;-><init>(Lo/Re;)V

    iput-object v0, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    new-instance v0, Lo/Re$4;

    invoke-direct {v0, p0}, Lo/Re$4;-><init>(Lo/Re;)V

    iput-object v0, p0, Lo/Re;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 162
    new-instance v0, Lo/Re$7;

    invoke-direct {v0, p0}, Lo/Re$7;-><init>(Lo/Re;)V

    iput-object v0, p0, Lo/Re;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 180
    new-instance v0, Lo/Re$6;

    invoke-direct {v0, p0}, Lo/Re$6;-><init>(Lo/Re;)V

    iput-object v0, p0, Lo/Re;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 191
    new-instance v0, Lo/Re$8;

    invoke-direct {v0, p0}, Lo/Re$8;-><init>(Lo/Re;)V

    iput-object v0, p0, Lo/Re;->w:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lo/Re;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/Re;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Lo/PendingIntent;
    .locals 6

    .line 779
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mH:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->na:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 780
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->na:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mH:I

    :goto_1
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 782
    new-instance v1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v1, v2, v3}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mQ:I

    invoke-virtual {v1, v2}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v1

    .line 783
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nj:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    iget-object v2, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 784
    invoke-virtual {p1, v0, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kk:I

    iget-object v2, p0, Lo/Re;->y:Landroid/content/DialogInterface$OnClickListener;

    .line 785
    invoke-virtual {p1, v0, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 786
    invoke-virtual {v1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lo/Re;)Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/Re;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/Re;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 54
    iput-object p1, p0, Lo/Re;->m:Ljava/lang/Long;

    return-object p1
.end method

.method private b(Z)Lo/PendingIntent;
    .locals 4

    const-string v0, "offlineErrorDialog"

    const-string v1, "createNotEnoughSpaceDialog"

    .line 793
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct {p0}, Lo/Re;->g()Z

    move-result v0

    .line 796
    new-instance v1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v1, v2, v3}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mQ:I

    invoke-virtual {v1, v2}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 798
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mN:I

    invoke-virtual {v1, p1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 801
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mf:I

    iget-object v3, p0, Lo/Re;->v:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_0

    .line 804
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mO:I

    invoke-virtual {v1, p1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    :cond_1
    const/4 p1, 0x0

    .line 807
    :goto_0
    iget-object v2, p0, Lo/Re;->p:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_4

    .line 811
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    if-eqz p1, :cond_3

    .line 814
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mj:I

    iget-object v0, p0, Lo/Re;->u:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, p1, v0}, Lo/PendingIntent$Activity;->c(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_2

    .line 816
    :cond_3
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mj:I

    iget-object v0, p0, Lo/Re;->u:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, p1, v0}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_2

    .line 819
    :cond_4
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object v2, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    if-eqz p1, :cond_5

    .line 821
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mj:I

    iget-object v0, p0, Lo/Re;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, p1, v0}, Lo/PendingIntent$Activity;->c(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_2

    .line 823
    :cond_5
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mj:I

    iget-object v0, p0, Lo/Re;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, p1, v0}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 826
    :goto_2
    invoke-virtual {v1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;Lcom/netflix/mediaclient/android/app/Status;)Lo/Re;
    .locals 4

    .line 246
    sget-object v0, Lo/gf;->e:Lo/gf$TaskDescription;

    .line 247
    invoke-virtual {v0}, Lo/gf$TaskDescription;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/Rf;

    invoke-direct {v0}, Lo/Rf;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/Re;

    invoke-direct {v0}, Lo/Re;-><init>()V

    .line 251
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 252
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playableId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "videoType"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-interface {p1}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->a()I

    move-result p0

    const-string v2, "watchState"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    invoke-interface {p1}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b()I

    move-result p0

    const-string v2, "downloadState"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-interface {p1}, Lo/Bi;->o()Ljava/lang/String;

    move-result-object p0

    const-string v2, "oxid"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-interface {p1}, Lo/Bi;->k()Ljava/lang/String;

    move-result-object p0

    const-string v2, "dxid"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p3}, Lo/Re;->d(Lcom/netflix/mediaclient/android/app/Status;)Landroid/os/Bundle;

    move-result-object p0

    const-string p3, "status_bundle"

    invoke-virtual {v1, p3, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 260
    invoke-interface {p1}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 261
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a()I

    move-result p0

    const-string p1, "stopReason"

    .line 262
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    invoke-static {p2}, Lo/Re;->e(Lo/nS;)Z

    move-result p0

    const-string p1, "hasNetflixDownloadedData"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    invoke-interface {p2}, Lo/nS;->i()Z

    move-result p0

    const-string p1, "requiresWiFiConnection"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    invoke-virtual {v0, v1}, Lo/Re;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lo/Re;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/Re;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/Re;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Re;->e(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private c()Landroid/app/Dialog;
    .locals 3

    const-string v0, "offlineErrorDialog"

    const-string v1, "createLicenseExpiredDialog"

    .line 477
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->getActivity()Lo/Serializable;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 483
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mz:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    .line 484
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result v1

    iget-object v2, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 486
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mD:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    .line 488
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mn:I

    new-instance v2, Lo/Re$10;

    invoke-direct {v2, p0}, Lo/Re$10;-><init>(Lo/Re;)V

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_0

    .line 499
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mG:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    .line 500
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mk:I

    iget-object v2, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 502
    :goto_0
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lo/Re;)Lo/nS;
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/Re;->q()Lo/nS;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v3, "status_is_error_or_warning"

    .line 286
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/Re;->s:Z

    const-string v3, "status_show_message"

    .line 287
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lo/Re;->q:Z

    const-string v2, "status_displayable_message"

    .line 288
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Re;->t:Ljava/lang/String;

    .line 289
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    const-string v2, "status_code_int_value"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lo/Re;->b:I

    const-string v1, "raw_error_status_code"

    .line 290
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Re;->e:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_0
    iput-boolean v2, p0, Lo/Re;->s:Z

    .line 293
    iput-boolean v2, p0, Lo/Re;->q:Z

    .line 294
    iput-object v1, p0, Lo/Re;->t:Ljava/lang/String;

    .line 295
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    iput p1, p0, Lo/Re;->b:I

    .line 296
    iput-object v0, p0, Lo/Re;->e:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static d(Lcom/netflix/mediaclient/android/app/Status;)Landroid/os/Bundle;
    .locals 3

    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->b()Z

    move-result v1

    const-string v2, "status_is_error_or_warning"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->k()Z

    move-result v1

    const-string v2, "status_show_message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status_displayable_message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    const-string v2, "status_code_int_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    instance-of v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    if-eqz v1, :cond_0

    .line 279
    check-cast p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;->o()Ljava/lang/String;

    move-result-object p0

    const-string v1, "raw_error_status_code"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static synthetic d(Lo/Re;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/Re;->r()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)Lo/Re;
    .locals 1

    .line 224
    invoke-interface {p1}, Lo/Bi;->G()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 223
    invoke-static {p0, p1, p2, v0}, Lo/Re;->b(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;Lcom/netflix/mediaclient/android/app/Status;)Lo/Re;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lo/Re;)Ljava/lang/Long;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/Re;->m:Ljava/lang/Long;

    return-object p0
.end method

.method private e(Z)Lo/PendingIntent;
    .locals 3

    .line 767
    invoke-direct {p0}, Lo/Re;->q()Lo/nS;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lo/Re;->p:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 769
    invoke-direct {p0}, Lo/Re;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper;->d(Lo/nS;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    move-result-object v0

    .line 770
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;->b:Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    if-eq v0, v1, :cond_1

    .line 771
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;->a:Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lo/Re;->a(Z)Lo/PendingIntent;

    move-result-object p1

    return-object p1

    .line 774
    :cond_1
    invoke-direct {p0, p1}, Lo/Re;->b(Z)Lo/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lorg/json/JSONObject;
    .locals 1

    .line 896
    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 898
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p1

    iget-object v0, p0, Lo/Re;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 900
    invoke-interface {p1}, Lo/Bi;->G()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 901
    instance-of v0, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    if-eqz v0, :cond_0

    .line 902
    check-cast p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;->n()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private e()V
    .locals 2

    .line 449
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 450
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-direct {p0}, Lo/Re;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requestDownloadButtonRefresh(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic e(Landroid/content/DialogInterface;)V
    .locals 1

    .line 653
    iget-object p1, p0, Lo/Re;->m:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 654
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/Re;->m:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    const/4 p1, 0x0

    .line 655
    iput-object p1, p0, Lo/Re;->m:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private static e(Lo/nS;)Z
    .locals 6

    .line 456
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 458
    :goto_0
    invoke-interface {p0}, Lo/Rq;->c()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 459
    invoke-interface {p0, v1}, Lo/Rq;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 460
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v4

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    .line 461
    sget-object v5, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-ne v4, v5, :cond_1

    .line 462
    :cond_0
    invoke-interface {p0, v1}, Lo/Rq;->c(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x2faf080

    cmp-long p0, v2, v4

    if-lez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private f()Lo/PendingIntent;
    .locals 3

    const-string v0, "offlineErrorDialog"

    const-string v1, "createPlayWindowExpiredButRenewableDialog"

    .line 707
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->getActivity()Lo/Serializable;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 710
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mz:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    .line 711
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result v1

    iget-object v2, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 713
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mD:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    .line 715
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mn:I

    new-instance v2, Lo/Re$9;

    invoke-direct {v2, p0}, Lo/Re$9;-><init>(Lo/Re;)V

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_0

    .line 728
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mG:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    .line 729
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mk:I

    iget-object v2, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 732
    :goto_0
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private g()Z
    .locals 1

    .line 830
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    instance-of v0, v0, Lo/QU;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private h()Lo/PendingIntent;
    .locals 5

    const-string v0, "offlineErrorDialog"

    const-string v1, "createPlayWindowFinalExpiredDialog"

    .line 742
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p0}, Lo/Re;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/Re;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/Re;->n:Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-static {v0, v1, v2, v3, v4}, Lo/Rd;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)V

    .line 744
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->getActivity()Lo/Serializable;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 746
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mz:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mE:I

    invoke-virtual {v1, v2}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object v1

    .line 747
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result v2

    iget-object v3, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 749
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private i()Landroid/app/Dialog;
    .locals 5

    const-string v0, "offlineErrorDialog"

    const-string v1, "createViewWindowExpiredDialog"

    .line 834
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p0}, Lo/Re;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/Re;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/Re;->n:Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-static {v0, v1, v2, v3, v4}, Lo/Rd;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)V

    .line 836
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->getActivity()Lo/Serializable;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 838
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mJ:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object v1

    .line 839
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result v2

    iget-object v3, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 841
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 860
    iget-object v0, p0, Lo/Re;->l:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-nez v0, :cond_1

    .line 861
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 862
    instance-of v0, v0, Lo/CY;

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Lo/CY;

    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->l:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 866
    :cond_0
    iget-object v0, p0, Lo/Re;->l:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-nez v0, :cond_1

    .line 867
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v1, -0x208

    const-string v2, "offlineErrorDialog"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/Re;->l:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 870
    :cond_1
    iget-object v0, p0, Lo/Re;->l:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method private q()Lo/nS;
    .locals 1

    .line 885
    iget-object v0, p0, Lo/Re;->x:Lo/nS;

    if-nez v0, :cond_0

    .line 886
    invoke-virtual {p0}, Lo/Re;->n()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->x:Lo/nS;

    .line 891
    :cond_0
    iget-object v0, p0, Lo/Re;->x:Lo/nS;

    return-object v0
.end method

.method private r()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 875
    iget-object v0, p0, Lo/Re;->o:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method private t()Ljava/lang/String;
    .locals 1

    .line 880
    iget-object v0, p0, Lo/Re;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Lo/PendingIntent;
    .locals 4

    const-string v0, "offlineErrorDialog"

    const-string v1, "createGeoNotPlayableDialog"

    .line 754
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->getActivity()Lo/Serializable;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 757
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mI:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mK:I

    invoke-virtual {v1, v2}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object v1

    .line 758
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result v2

    iget-object v3, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object v3, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 759
    invoke-virtual {v1, v2, v3}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 761
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected b()Landroid/app/Dialog;
    .locals 6

    .line 846
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mB:I

    .line 847
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 848
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mw:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object v2, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 849
    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected c(Z)Lo/PendingIntent;
    .locals 7

    .line 589
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->getActivity()Lo/Serializable;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 591
    iget v1, p0, Lo/Re;->b:I

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 592
    invoke-direct {p0, p1}, Lo/Re;->e(Z)Lo/PendingIntent;

    move-result-object p1

    return-object p1

    .line 596
    :cond_0
    iget-boolean p1, p0, Lo/Re;->q:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 597
    iget-object p1, p0, Lo/Re;->t:Ljava/lang/String;

    goto :goto_0

    .line 599
    :cond_1
    iget p1, p0, Lo/Re;->b:I

    invoke-static {p1}, Lo/aeF;->d(I)Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-static {p1}, Lo/aeF;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 602
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->mw:I

    .line 603
    iget v4, p0, Lo/Re;->b:I

    invoke-static {v4}, Lcom/netflix/mediaclient/StatusCode;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 604
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->my:I

    .line 607
    :cond_2
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v4, v3, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 610
    :goto_0
    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 612
    iget v3, p0, Lo/Re;->b:I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bg:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 615
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mA:I

    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object v2, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 616
    invoke-virtual {p1, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto/16 :goto_1

    .line 618
    :cond_3
    iget v3, p0, Lo/Re;->b:I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bj:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 620
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mA:I

    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object v2, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 621
    invoke-direct {p0}, Lo/Re;->g()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 622
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mf:I

    iget-object v1, p0, Lo/Re;->v:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto/16 :goto_1

    .line 625
    :cond_4
    iget v3, p0, Lo/Re;->b:I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bh:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 627
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Re;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 629
    sget-object v3, Lo/Tn;->d:Lo/Tn$Application;

    invoke-virtual {v3, p1}, Lo/Tn$Application;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    .line 630
    sget-object v3, Lo/Tn;->d:Lo/Tn$Application;

    invoke-virtual {v3, p1}, Lo/Tn$Application;->e(Ljava/util/List;)Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v3

    .line 631
    sget-object v4, Lcom/netflix/mediaclient/ui/player/PlanChoice;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice$ActionBar;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlanChoice$ActionBar;->e()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 632
    invoke-virtual {p0}, Lo/Re;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->mv:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 633
    invoke-virtual {p0, v0}, Lo/Re;->d(Lo/PendingIntent$Activity;)V

    .line 635
    sget-object v1, Lo/Tn;->d:Lo/Tn$Application;

    invoke-virtual {v1, p1}, Lo/Tn$Application;->d(Ljava/util/List;)I

    move-result p1

    .line 636
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v3, Lcom/netflix/cl/model/AppView;->planUpgradeGate:Lcom/netflix/cl/model/AppView;

    sget-object v4, Lo/Tn;->d:Lo/Tn$Application;

    iget-object v5, p0, Lo/Re;->l:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v6, "DownloadLimitUpgrade"

    .line 638
    invoke-virtual {v4, v5, v6, p1}, Lo/Tn$Application;->a(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;I)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 636
    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/Re;->m:Ljava/lang/Long;

    .line 648
    :cond_5
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mu:I

    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mj:I

    iget-object v2, p0, Lo/Re;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 649
    invoke-virtual {p1, v1, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    .line 650
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result v1

    iget-object v2, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Lo/PendingIntent$Activity;->c(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    new-instance v1, Lo/Ri;

    invoke-direct {v1, p0}, Lo/Ri;-><init>(Lo/Re;)V

    .line 651
    invoke-virtual {p1, v1}, Lo/PendingIntent$Activity;->c(Landroid/content/DialogInterface$OnDismissListener;)Lo/PendingIntent$Activity;

    goto/16 :goto_1

    .line 659
    :cond_6
    iget v1, p0, Lo/Re;->b:I

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->da:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 663
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    iget-object v1, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ak:I

    iget-object v2, p0, Lo/Re;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 664
    invoke-virtual {p1, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_1

    .line 666
    :cond_7
    iget v1, p0, Lo/Re;->b:I

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->bl:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 668
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mI:I

    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mE:I

    invoke-virtual {p1, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    .line 669
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result p1

    iget-object v1, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 670
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mc:I

    invoke-virtual {p0, p1}, Lo/Re;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lo/Re;->u:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_1

    .line 672
    :cond_8
    iget v1, p0, Lo/Re;->b:I

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->bp:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 675
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mA:I

    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mW:I

    invoke-virtual {p1, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    .line 676
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object v1, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 677
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mf:I

    iget-object v1, p0, Lo/Re;->v:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_1

    .line 681
    :cond_9
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mB:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 682
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result p1

    iget-object v1, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mj:I

    iget-object v2, p0, Lo/Re;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 683
    invoke-virtual {p1, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 685
    :cond_a
    :goto_1
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected d()I
    .locals 2

    .line 855
    iget-object v0, p0, Lo/Re;->p:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mb:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lZ:I

    :goto_0
    return v0
.end method

.method protected d(Ljava/lang/String;ZZ)Landroid/app/Dialog;
    .locals 6

    .line 564
    invoke-static {p1}, Lo/aeF;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 571
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Re;->getActivity()Lo/Serializable;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 572
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mB:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v1

    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->mw:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    if-eqz p2, :cond_0

    .line 575
    invoke-virtual {p0}, Lo/Re;->d()I

    move-result p1

    iget-object p2, p0, Lo/Re;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, p2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    :cond_0
    if-eqz p3, :cond_1

    .line 578
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mj:I

    iget-object p2, p0, Lo/Re;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, p2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 580
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object p2, p0, Lo/Re;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, p2}, Lo/PendingIntent$Activity;->c(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 581
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/PendingIntent$Activity;)V
    .locals 2

    .line 694
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ms:I

    iget-object v1, p0, Lo/Re;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 302
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreate(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {p0}, Lo/Re;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "playableId"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->h:Ljava/lang/String;

    const-string v0, "videoType"

    .line 306
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->o:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string v0, "watchState"

    .line 308
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->e(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string v0, "downloadState"

    .line 309
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->p:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string v0, "stopReason"

    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->r:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string v0, "oxid"

    .line 311
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->j:Ljava/lang/String;

    const-string v0, "dxid"

    .line 312
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Re;->n:Ljava/lang/String;

    const-string v0, "status_bundle"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Re;->c(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "hasNetflixDownloadedData"

    .line 316
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "requiresWiFiConnection"

    .line 317
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 319
    iget-object v3, p0, Lo/Re;->h:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lo/Re;->o:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v3, :cond_6

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_0

    goto/16 :goto_5

    .line 343
    :cond_0
    sget-object v3, Lo/Re$5;->d:[I

    iget-object v4, p0, Lo/Re;->p:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, ""

    packed-switch v3, :pswitch_data_0

    .line 433
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OfflineErrorDialog unhandled downloadState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/Re;->p:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 395
    :pswitch_0
    iget-object p1, p0, Lo/Re;->k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-static {p1}, Lo/aeF;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Ljava/lang/String;

    move-result-object v4

    .line 396
    sget-object p1, Lo/Re$5;->a:[I

    iget-object v3, p0, Lo/Re;->k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v3

    aget p1, p1, v3

    packed-switch p1, :pswitch_data_1

    .line 423
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OfflineErrorDialog unhandled watchState"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo/Re;->k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :pswitch_1
    invoke-virtual {p0}, Lo/Re;->a()Lo/PendingIntent;

    move-result-object p1

    return-object p1

    .line 417
    :pswitch_2
    invoke-direct {p0}, Lo/Re;->i()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 415
    :pswitch_3
    invoke-direct {p0}, Lo/Re;->h()Lo/PendingIntent;

    move-result-object p1

    return-object p1

    .line 413
    :pswitch_4
    invoke-direct {p0}, Lo/Re;->f()Lo/PendingIntent;

    move-result-object p1

    return-object p1

    .line 402
    :pswitch_5
    iget-boolean p1, p0, Lo/Re;->s:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lo/Re;->b:I

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->bg:Lcom/netflix/mediaclient/StatusCode;

    .line 403
    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v3

    if-eq p1, v3, :cond_1

    iget p1, p0, Lo/Re;->b:I

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->bl:Lcom/netflix/mediaclient/StatusCode;

    .line 404
    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v3

    if-ne p1, v3, :cond_2

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 407
    iget v2, p0, Lo/Re;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v2, "offlineErrorDialog"

    const-string v3, "mErrorStatusCodeIntValue=%d"

    invoke-static {v2, v3, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 409
    :cond_2
    invoke-direct {p0}, Lo/Re;->c()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 351
    :pswitch_6
    iget-object v3, p0, Lo/Re;->r:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v3}, Lo/aeF;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Ljava/lang/String;

    move-result-object v4

    .line 352
    sget-object v3, Lo/Re$5;->e:[I

    iget-object v5, p0, Lo/Re;->r:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_2

    .line 391
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OfflineErrorDialog unhandled stopReason"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo/Re;->r:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    :pswitch_7
    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_3

    .line 373
    :pswitch_8
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-direct {p0}, Lo/Re;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lo/PY;->e(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :pswitch_9
    if-eqz p1, :cond_3

    .line 370
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-direct {p0}, Lo/Re;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/Re;->o:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {p1, v0, v1, v2}, Lo/PY;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;

    move-result-object p1

    goto :goto_1

    .line 371
    :cond_3
    invoke-virtual {p0}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-direct {p0}, Lo/Re;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lo/PY;->e(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p1

    :goto_1
    return-object p1

    .line 366
    :pswitch_a
    invoke-direct {p0, v1}, Lo/Re;->e(Z)Lo/PendingIntent;

    move-result-object p1

    return-object p1

    :pswitch_b
    const/4 p1, 0x0

    goto :goto_4

    :goto_2
    :pswitch_c
    const/4 p1, 0x0

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_4

    .line 437
    invoke-direct {p0}, Lo/Re;->e()V

    .line 438
    invoke-virtual {p0}, Lo/Re;->b()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 440
    :cond_4
    iget-boolean v2, p0, Lo/Re;->s:Z

    if-eqz v2, :cond_5

    .line 441
    invoke-virtual {p0, v1}, Lo/Re;->c(Z)Lo/PendingIntent;

    move-result-object p1

    return-object p1

    .line 444
    :cond_5
    invoke-virtual {p0, v4, v0, p1}, Lo/Re;->d(Ljava/lang/String;ZZ)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 320
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lo/Re;->b()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method
