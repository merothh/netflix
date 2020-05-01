.class public Lo/acP;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acP$Activity;,
        Lo/acP$Application;,
        Lo/acP$TaskDescription;
    }
.end annotation


# static fields
.field private static final e:Landroid/net/Uri;


# instance fields
.field protected b:Landroid/widget/TextView;

.field private c:I

.field protected d:Landroid/widget/EditText;

.field protected f:Z

.field protected h:I

.field protected j:Landroid/widget/TextView;

.field protected k:Ljava/lang/Long;

.field protected l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

.field private m:Z

.field protected n:I

.field private o:Landroid/widget/ImageView;

.field private q:Lo/acQ$Application;

.field private r:Z

.field private s:Lo/JM;

.field private t:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://www.netflix.com/PIN"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lo/acP;->e:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    const/4 v0, 0x4

    .line 71
    iput v0, p0, Lo/acP;->h:I

    .line 72
    iput v0, p0, Lo/acP;->n:I

    .line 77
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lo/acP;->s:Lo/JM;

    return-void
.end method

.method private synthetic a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 510
    iget-object p1, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lo/acP;->d(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/acP;I)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/acP;->c(I)Z

    move-result p0

    return p0
.end method

.method protected static b(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/acP;
    .locals 3

    const-string v0, "nf_pin"

    const-string v1, "creating dialog"

    .line 81
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lo/acP;

    invoke-direct {v0}, Lo/acP;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PlayVerifierVault"

    .line 85
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    invoke-virtual {v0, v1}, Lo/acP;->setArguments(Landroid/os/Bundle;)V

    .line 88
    sget p0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->k:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lo/acP;->setStyle(II)V

    return-object v0
.end method

.method static synthetic c(Lo/acP;)Lo/JM;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/acP;->s:Lo/JM;

    return-object p0
.end method

.method protected static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 580
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 581
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(Z)Lo/PendingIntent$Activity;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->lT:I

    .line 582
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const-string p0, "%s (%d)"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v0, Lo/acP$3;

    invoke-direct {v0}, Lo/acP$3;-><init>()V

    .line 583
    invoke-virtual {p0, p1, v0}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 588
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->e()Lo/PendingIntent;

    return-void
.end method

.method protected static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V
    .locals 4

    const-string v0, "nf_pin"

    if-eqz p1, :cond_8

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 414
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->b:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "videoid is null - cannot start playback"

    .line 416
    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 420
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->j()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a(Z)V

    .line 422
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    .line 423
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->c:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->g()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PINCONFIRMED"

    invoke-static {p0, p2, p1}, Lo/Mb;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 425
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    goto :goto_0

    .line 426
    :cond_3
    sget-object p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    .line 428
    invoke-interface {p2, v2, p1}, Lo/acQ$Application;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    :cond_4
    const-string p0, "notifyCallerPinVerified RequestedBy.PLAYER callback is null"

    .line 430
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_5
    sget-object p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_6

    .line 434
    invoke-interface {p2, v2, p1}, Lo/acQ$Application;->onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    :cond_6
    const-string p0, "notifyCallerPinVerified RequestedBy.OFFLINE_DOWNLOAD callback is null"

    .line 436
    invoke-static {v0, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    const-string p0, "mVault or activity is null - cannot start playback"

    .line 405
    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic c(Lo/acP;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo/acP;->a(Z)V

    return-void
.end method

.method private c(I)Z
    .locals 1

    .line 262
    iget v0, p0, Lo/acP;->h:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Landroid/widget/EditText;)V
    .locals 2

    .line 518
    invoke-virtual {p0}, Lo/acP;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/acP;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 520
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/acP;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lo/acP;->m:Z

    return p0
.end method

.method private e()V
    .locals 4

    .line 564
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 566
    :try_start_0
    invoke-virtual {p0}, Lo/acP;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v1, 0x1

    .line 567
    iget v2, p0, Lo/acP;->c:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lo/acP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 568
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 569
    invoke-virtual {p0}, Lo/acP;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set windowSize e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic e(Landroid/view/View;Z)V
    .locals 3

    .line 508
    iget-object p1, p0, Lo/acP;->d:Landroid/widget/EditText;

    new-instance v0, Lo/acO;

    invoke-direct {v0, p0, p2}, Lo/acO;-><init>(Lo/acP;Z)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic e(Lo/acP;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/acP;->e(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic j()Landroid/net/Uri;
    .locals 1

    .line 50
    sget-object v0, Lo/acP;->e:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 442
    invoke-virtual {p0}, Lo/acP;->g()V

    .line 443
    invoke-virtual {p0}, Lo/acP;->f()V

    return-void
.end method

.method protected b(I)V
    .locals 7

    .line 230
    iget v0, p0, Lo/acP;->n:I

    if-eq p1, v0, :cond_2

    .line 231
    iput p1, p0, Lo/acP;->n:I

    .line 232
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    const-string v1, "-"

    invoke-static {v1, p1}, Lo/aev;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    array-length v1, v0

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 237
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 238
    instance-of v6, v5, Landroid/text/InputFilter$LengthFilter;

    if-nez v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 239
    aput-object v5, v1, v4

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 241
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v1, v4

    move v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object p1, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    return-void
.end method

.method public b(Lo/acQ$Application;)V
    .locals 2

    const-string v0, "nf_pin"

    const-string v1, "setPinVerifierCallback"

    .line 225
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object p1, p0, Lo/acP;->q:Lo/acQ$Application;

    return-void
.end method

.method protected b(Z)V
    .locals 1

    .line 559
    iput-boolean p1, p0, Lo/acP;->r:Z

    .line 560
    iget-object v0, p0, Lo/acP;->o:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "nf_pin"

    const-string v1, "onVerified"

    .line 355
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-boolean v1, p0, Lo/acP;->f:Z

    if-nez v1, :cond_0

    const-string p1, "dialog was cancelled before.. nothing to do"

    .line 358
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0, v0}, Lo/acP;->d(Z)V

    .line 367
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 368
    invoke-virtual {p0}, Lo/acP;->d()V

    return-void

    .line 372
    :cond_1
    invoke-virtual {p0}, Lo/acP;->g()V

    .line 374
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 375
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object p1

    invoke-virtual {p1}, Lo/acR;->a()V

    .line 376
    invoke-virtual {p0}, Lo/acP;->getActivity()Lo/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p2, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    iget-object v0, p0, Lo/acP;->q:Lo/acQ$Application;

    invoke-static {p1, p2, v0}, Lo/acP;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p0}, Lo/acP;->getActivity()Lo/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_3

    .line 380
    invoke-static {p1, p2}, Lo/acP;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected b(ZLjava/lang/String;)V
    .locals 4

    .line 547
    iput-boolean p1, p0, Lo/acP;->m:Z

    .line 548
    iget-object v0, p0, Lo/acP;->t:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lo/acP;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 555
    iget-object p1, p0, Lo/acP;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0, v0}, Lo/acP;->d(Z)V

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Lo/acP;->b(Z)V

    .line 332
    invoke-virtual {p0, p1}, Lo/acP;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lo/adq;->b(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEditorAction gotDone! password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lo/acP;->s:Lo/JM;

    invoke-virtual {v0}, Lo/JM;->c()Lio/reactivex/Observable;

    move-result-object v0

    .line 337
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/acP$1;

    const-string v2, "requestUserAgent"

    invoke-direct {v1, p0, v2, p2, p1}, Lo/acP$1;-><init>(Lo/acP;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 338
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "input_method"

    .line 534
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()V
    .locals 2

    .line 386
    iget-object v0, p0, Lo/acP;->b:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iK:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 388
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    const/4 v0, 0x1

    .line 389
    invoke-virtual {p0, v0}, Lo/acP;->b(Z)V

    .line 391
    invoke-virtual {p0}, Lo/acP;->h()V

    return-void
.end method

.method protected d(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method protected d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 542
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->iN:I

    .line 543
    invoke-virtual {p0, v0}, Lo/acP;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 542
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo/acP;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lo/acP;->q:Lo/acQ$Application;

    .line 483
    invoke-super {p0}, Lo/WebChromeClient;->dismiss()V

    return-void
.end method

.method protected f()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 450
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 451
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s onPinCancelled vault: %s"

    .line 450
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    if-nez v0, :cond_0

    const-string v0, "mVault is null - cannot start playback"

    .line 454
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 458
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->c:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/acP;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p0}, Lo/acP;->getActivity()Lo/Serializable;

    move-result-object v0

    iget-object v1, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PINCANCELLED"

    invoke-static {v0, v2, v1}, Lo/Mb;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    invoke-virtual {p0}, Lo/acP;->getActivity()Lo/Serializable;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_5

    .line 462
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    goto :goto_0

    .line 465
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lo/acP;->q:Lo/acQ$Application;

    if-eqz v0, :cond_2

    .line 467
    iget-object v1, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-interface {v0, v2, v1}, Lo/acQ$Application;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    :cond_2
    const-string v0, "notifyCallerPinCancelled RequestedBy.PLAYER callback is null"

    .line 469
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    iget-object v0, p0, Lo/acP;->q:Lo/acQ$Application;

    if-eqz v0, :cond_4

    .line 473
    iget-object v1, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-interface {v0, v2, v1}, Lo/acQ$Application;->onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    :cond_4
    const-string v0, "notifyCallerPinCancelled RequestedBy.OFFLINE_DOWNLOAD callback is null"

    .line 475
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method protected g()V
    .locals 2

    const-string v0, "nf_pin"

    const-string v1, "dismissing pin dialog"

    .line 487
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :try_start_0
    invoke-virtual {p0}, Lo/acP;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 490
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object v1

    invoke-virtual {v1}, Lo/acR;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "app in backgound. cannot dismiss - retry on next start"

    .line 492
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected h()V
    .locals 2

    .line 504
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lo/acP;->d(Landroid/widget/EditText;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    new-instance v1, Lo/acN;

    invoke-direct {v1, p0}, Lo/acN;-><init>(Lo/acP;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 513
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCancel(Landroid/content/DialogInterface;)V

    const-string p1, "nf_pin"

    const-string v0, "onCancel"

    .line 171
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 172
    iput-boolean p1, p0, Lo/acP;->f:Z

    .line 173
    invoke-virtual {p0}, Lo/acP;->f()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    iget-boolean v1, p0, Lo/acP;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "onCreateDialog - mIsActive:%b,  restored=%b"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "nf_pin"

    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "pin_progress"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/acP;->m:Z

    const-string v0, "pin_error"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/acP;->r:Z

    .line 101
    :cond_1
    invoke-virtual {p0}, Lo/acP;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "PlayVerifierVault"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    iput-object p1, p0, Lo/acP;->l:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    .line 106
    :cond_2
    new-instance p1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/acP;->getActivity()Lo/Serializable;

    move-result-object v0

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, v0, v3}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 108
    invoke-virtual {p0}, Lo/acP;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 109
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->dv:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->eR:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lo/acP;->t:Landroid/widget/ProgressBar;

    .line 113
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->mn:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lo/acP;->d:Landroid/widget/EditText;

    const/4 v3, 0x4

    .line 114
    invoke-virtual {p0, v3}, Lo/acP;->b(I)V

    .line 116
    iget-object v3, p0, Lo/acP;->d:Landroid/widget/EditText;

    new-instance v5, Lo/acP$Activity;

    invoke-direct {v5, p0, v4}, Lo/acP$Activity;-><init>(Lo/acP;Lo/acP$4;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    iget-object v3, p0, Lo/acP;->d:Landroid/widget/EditText;

    new-instance v5, Lo/acP$Application;

    invoke-direct {v5, p0, v4}, Lo/acP$Application;-><init>(Lo/acP;Lo/acP$4;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->ml:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lo/acP;->b:Landroid/widget/TextView;

    .line 120
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->mg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lo/acP;->j:Landroid/widget/TextView;

    .line 123
    iget-object v3, p0, Lo/acP;->j:Landroid/widget/TextView;

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->iG:I

    invoke-virtual {p0, v5}, Lo/acP;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lo/acP;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 125
    iget-object v3, p0, Lo/acP;->j:Landroid/widget/TextView;

    new-instance v5, Lo/acP$4;

    invoke-direct {v5, p0}, Lo/acP$4;-><init>(Lo/acP;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v3, p0, Lo/acP;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 139
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->mh:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lo/acP;->o:Landroid/widget/ImageView;

    .line 140
    invoke-static {}, Lo/adq;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x190

    goto :goto_1

    :cond_3
    const/16 v3, 0x140

    :goto_1
    iput v3, p0, Lo/acP;->c:I

    .line 142
    iget-boolean v3, p0, Lo/acP;->r:Z

    invoke-virtual {p0, v3}, Lo/acP;->b(Z)V

    .line 143
    iget-boolean v3, p0, Lo/acP;->m:Z

    invoke-virtual {p0, v3}, Lo/acP;->d(Z)V

    .line 145
    invoke-virtual {p1, v0}, Lo/PendingIntent$Activity;->d(Landroid/view/View;)Lo/PendingIntent$Activity;

    .line 146
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v2}, Lo/PendingIntent;->setCanceledOnTouchOutside(Z)V

    const/4 v0, -0x2

    .line 148
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {p0, v2}, Lo/acP;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/acP$TaskDescription;

    invoke-direct {v3, p0, v4}, Lo/acP$TaskDescription;-><init>(Lo/acP;Lo/acP$4;)V

    invoke-virtual {p1, v0, v2, v3}, Lo/PendingIntent;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    iput-boolean v1, p0, Lo/acP;->f:Z

    .line 151
    invoke-virtual {p0, p1}, Lo/acP;->d(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lo/acP;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lo/acP;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/acP;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lo/adq;->b(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    .line 529
    :cond_0
    invoke-super {p0, p1}, Lo/WebChromeClient;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 201
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string p1, "nf_pin"

    const-string p2, "onManagerReady"

    .line 202
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-boolean p2, p0, Lo/acP;->m:Z

    if-eqz p2, :cond_0

    const-string p2, "doing pin validation again for restored dialog"

    .line 205
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Lo/acP;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p0, p2, p1}, Lo/acP;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 178
    invoke-super {p0}, Lo/WebChromeClient;->onResume()V

    const-string v0, "nf_pin"

    const-string v1, "onResume"

    .line 179
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lo/acP;->e()V

    .line 182
    iget-boolean v0, p0, Lo/acP;->m:Z

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lo/acP;->h()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Lo/WebChromeClient;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "nf_pin"

    const-string v1, "onSavedInstanceState"

    .line 163
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v0, p0, Lo/acP;->m:Z

    const-string v1, "pin_progress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    iget-boolean v0, p0, Lo/acP;->r:Z

    const-string v1, "pin_error"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 189
    invoke-super {p0}, Lo/WebChromeClient;->onStart()V

    const-string v0, "nf_pin"

    const-string v1, "onStart"

    .line 190
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object v1

    invoke-virtual {v1}, Lo/acR;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onStart - dismissOnForeground"

    .line 192
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lo/acP;->a()V

    .line 196
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->pinPrompt:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/acP;->k:Ljava/lang/Long;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 216
    invoke-super {p0}, Lo/WebChromeClient;->onStop()V

    .line 218
    iget-object v0, p0, Lo/acP;->k:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/acP;->k:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lo/acP;->k:Ljava/lang/Long;

    :cond_0
    return-void
.end method
