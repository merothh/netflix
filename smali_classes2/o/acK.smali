.class public Lo/acK;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acK$Application;,
        Lo/acK$Activity;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Lo/PendingIntent;

.field private d:I

.field private e:Landroid/widget/ProgressBar;

.field private f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

.field private h:Z

.field private j:Z

.field private l:Lo/acQ$Application;

.field private m:Lo/JM;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lo/acK;->n:Z

    .line 61
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lo/acK;->m:Lo/JM;

    return-void
.end method

.method protected static a(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/acK;
    .locals 3

    const-string v0, "nf_age"

    const-string v1, "creating dialog"

    .line 64
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lo/acK;

    invoke-direct {v0}, Lo/acK;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PlayVerifierVault"

    .line 68
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    invoke-virtual {v0, v1}, Lo/acK;->setArguments(Landroid/os/Bundle;)V

    .line 71
    sget p0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->k:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lo/acK;->setStyle(II)V

    return-object v0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lo/acK;->h:Z

    .line 195
    invoke-direct {p0, v0}, Lo/acK;->b(Z)V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lo/acK;->m:Lo/JM;

    invoke-virtual {v0}, Lo/JM;->c()Lio/reactivex/Observable;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/acK$1;

    const-string v2, "requestUserAgent"

    invoke-direct {v1, p0, v2, p1}, Lo/acK$1;-><init>(Lo/acK;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 175
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic a(Lo/acK;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/acK;->e()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 271
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lo/acK;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v1, 0x1

    .line 274
    iget v2, p0, Lo/acK;->d:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lo/acK;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 275
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 276
    invoke-virtual {p0}, Lo/acK;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set windowSize e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_age"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic b(Lo/acK;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/acK;->d()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 121
    iput-boolean p1, p0, Lo/acK;->j:Z

    .line 122
    iget-object v0, p0, Lo/acK;->e:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lo/acK;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ed:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ei:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    xor-int/lit8 p1, p1, 0x1

    .line 124
    invoke-direct {p0, p1}, Lo/acK;->d(Z)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 259
    new-instance v0, Lo/acI;

    invoke-direct {v0, p0}, Lo/acI;-><init>(Lo/acK;)V

    invoke-static {v0}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lo/acK;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/acK;->c()V

    return-void
.end method

.method static synthetic d(Lo/acK;)Lo/JM;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/acK;->m:Lo/JM;

    return-object p0
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 297
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 298
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s onAgeCancelled vault: %s"

    .line 297
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    const-string v1, "nf_age"

    if-nez v0, :cond_0

    const-string v0, "mValut is null - cannot start playback"

    .line 301
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 305
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->c:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/acK;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lo/acK;->getActivity()Lo/Serializable;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_5

    .line 308
    invoke-virtual {p0}, Lo/acK;->getActivity()Lo/Serializable;

    move-result-object v1

    iget-object v2, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_PINCANCELLED"

    invoke-static {v1, v3, v2}, Lo/Mb;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    goto :goto_0

    .line 312
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lo/acK;->l:Lo/acQ$Application;

    if-eqz v0, :cond_2

    .line 315
    iget-object v1, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-interface {v0, v2, v1}, Lo/acQ$Application;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    :cond_2
    const-string v0, "notifyCallerAgeCancelled PLAYER callback is null"

    .line 317
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lo/acK;->l:Lo/acQ$Application;

    if-eqz v0, :cond_4

    .line 322
    iget-object v1, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-interface {v0, v2, v1}, Lo/acQ$Application;->onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    :cond_4
    const-string v0, "notifyCallerAgeCancelled OFFLINE_DOWNLOAD callback is null"

    .line 324
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 128
    iget-object v0, p0, Lo/acK;->c:Lo/PendingIntent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lo/PendingIntent;->b(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 130
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "nf_age"

    const-string v1, "dismissing age dialog"

    .line 284
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lo/acK;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lo/acK;->h:Z

    return-void
.end method

.method static synthetic e(Lo/acK;)V
    .locals 0

    invoke-direct {p0}, Lo/acK;->h()V

    return-void
.end method

.method private synthetic h()V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lo/acK;->h:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lo/acK;->e()V

    .line 263
    :cond_0
    iget-boolean v0, p0, Lo/acK;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lo/acK;->n:Z

    .line 265
    invoke-direct {p0}, Lo/acK;->d()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lo/acQ$Application;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lo/acK;->l:Lo/acQ$Application;

    return-void
.end method

.method public d(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onVerified mVault:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_age"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-boolean v1, p0, Lo/acK;->h:Z

    if-nez v1, :cond_0

    const-string p1, "dialog was cancelled before.. nothing to do"

    .line 333
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 337
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "onAgeVerified statusCode:%d"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 339
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 340
    invoke-direct {p0}, Lo/acK;->e()V

    .line 341
    invoke-virtual {p0}, Lo/acK;->getActivity()Lo/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p2, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    iget-object v0, p0, Lo/acK;->l:Lo/acQ$Application;

    invoke-static {p1, p2, v0}, Lo/acQ;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V

    return-void

    .line 346
    :cond_1
    invoke-direct {p0}, Lo/acK;->a()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCancel(Landroid/content/DialogInterface;)V

    const-string p1, "nf_age"

    const-string v0, "onCancel"

    .line 137
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lo/acK;->h:Z

    .line 139
    invoke-direct {p0}, Lo/acK;->d()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 78
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lo/acK;->j:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 81
    :goto_0
    iput-boolean v2, p0, Lo/acK;->o:Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    iget-boolean v3, p0, Lo/acK;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    iget-boolean v3, p0, Lo/acK;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "onCreateDialog - mIsActive:%b,  restored=%b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nf_age"

    invoke-static {v3, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-boolean v2, p0, Lo/acK;->o:Z

    if-eqz v2, :cond_1

    const-string v2, "age_progress"

    .line 84
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/acK;->j:Z

    .line 86
    :cond_1
    invoke-virtual {p0}, Lo/acK;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "PlayVerifierVault"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    iput-object p1, p0, Lo/acK;->f:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    .line 88
    new-instance p1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/acK;->getActivity()Lo/Serializable;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, v2, v3}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 90
    invoke-virtual {p0}, Lo/acK;->getActivity()Lo/Serializable;

    move-result-object v2

    invoke-virtual {v2}, Lo/Serializable;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 91
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->d:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->eK:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lo/acK;->e:Landroid/widget/ProgressBar;

    .line 94
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->k:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lo/acK;->b:Landroid/widget/TextView;

    .line 95
    invoke-static {}, Lo/adq;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x190

    goto :goto_1

    :cond_2
    const/16 v3, 0x140

    :goto_1
    iput v3, p0, Lo/acK;->d:I

    .line 97
    invoke-virtual {p1, v2}, Lo/PendingIntent$Activity;->d(Landroid/view/View;)Lo/PendingIntent$Activity;

    .line 98
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Lo/PendingIntent;->setCanceledOnTouchOutside(Z)V

    const/4 v1, -0x2

    .line 100
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {p0, v2}, Lo/acK;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/acK$Activity;

    invoke-direct {v3, p0, v4}, Lo/acK$Activity;-><init>(Lo/acK;Lo/acK$1;)V

    invoke-virtual {p1, v1, v2, v3}, Lo/PendingIntent;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    .line 101
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ec:I

    invoke-virtual {p0, v2}, Lo/acK;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/acK$Application;

    invoke-direct {v3, p0, v4}, Lo/acK$Application;-><init>(Lo/acK;Lo/acK$1;)V

    invoke-virtual {p1, v1, v2, v3}, Lo/PendingIntent;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    iput-boolean v0, p0, Lo/acK;->h:Z

    .line 104
    iput-object p1, p0, Lo/acK;->c:Lo/PendingIntent;

    .line 106
    iget-boolean v0, p0, Lo/acK;->o:Z

    return-object p1
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string p1, "nf_age"

    const-string p2, "onManagerReady - starting age verification"

    .line 165
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lo/acK;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lo/acK;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 144
    invoke-super {p0}, Lo/WebChromeClient;->onResume()V

    const-string v0, "nf_age"

    const-string v1, "onResume"

    .line 145
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lo/acK;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Lo/WebChromeClient;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "nf_age"

    const-string v1, "onSavedInstanceState"

    .line 115
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lo/acK;->j:Z

    const-string v1, "age_progress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "nf_age"

    const-string v1, "onStart"

    .line 151
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Lo/WebChromeClient;->onStart()V

    .line 153
    iget-boolean v1, p0, Lo/acK;->j:Z

    invoke-direct {p0, v1}, Lo/acK;->b(Z)V

    .line 155
    invoke-virtual {p0}, Lo/acK;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    .line 156
    iget-boolean v2, p0, Lo/acK;->o:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "starting age verification"

    .line 157
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0, v1}, Lo/acK;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method
