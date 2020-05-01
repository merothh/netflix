.class public Lo/Jw;
.super Lo/JE;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private A:Z

.field private final B:Lio/reactivex/disposables/CompositeDisposable;

.field private C:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private D:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

.field private final E:Landroid/os/Handler;

.field private final G:Lo/Ai;

.field private f:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Lcom/google/android/material/textfield/TextInputLayout;

.field private k:Lcom/google/android/material/textfield/TextInputLayout;

.field private l:Lo/HorizontalScrollView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/TextView;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Lo/JM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Lo/JE;-><init>()V

    .line 131
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lo/Jw;->B:Lio/reactivex/disposables/CompositeDisposable;

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/Jw;->E:Landroid/os/Handler;

    .line 902
    new-instance v0, Lo/Jw$5;

    invoke-direct {v0, p0}, Lo/Jw$5;-><init>(Lo/Jw;)V

    iput-object v0, p0, Lo/Jw;->G:Lo/Ai;

    return-void
.end method

.method private A()V
    .locals 4

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://signup.netflix.com/loginhelp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 522
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 523
    invoke-virtual {p0, v0, v3}, Lo/Jw;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 525
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kC:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lo/Jw;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    :goto_0
    return-void
.end method

.method private B()V
    .locals 3

    const/4 v0, 0x0

    .line 501
    invoke-direct {p0, v0}, Lo/Jw;->c(Z)V

    .line 502
    iget-object v1, p0, Lo/Jw;->f:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 503
    iget-object v1, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 504
    iget-object v1, p0, Lo/Jw;->t:Landroid/widget/TextView;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pZ:I

    invoke-virtual {p0, v2}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iput-boolean v0, p0, Lo/Jw;->x:Z

    return-void
.end method

.method private C()V
    .locals 6

    .line 553
    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Jw;->v:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-virtual {p0}, Lo/Jw;->U_()Lo/Am;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lo/Jw;->a(Lo/Am;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 565
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dR:I

    invoke-virtual {p0, v1}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-direct {p0, v1}, Lo/Jw;->a(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lo/Jw;->f:Landroid/widget/EditText;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 572
    :goto_0
    invoke-virtual {p0}, Lo/Jw;->U_()Lo/Am;

    move-result-object v4

    iget-object v5, p0, Lo/Jw;->v:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lo/Jw;->e(Lo/Am;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 573
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dH:I

    invoke-virtual {p0, v1}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-direct {p0, v1}, Lo/Jw;->a(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lo/Jw;->i:Landroid/widget/EditText;

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "LoginBaseFragment"

    const-string v2, "There was an error - skipping login and showing error msg"

    .line 580
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 592
    :cond_2
    invoke-virtual {p0}, Lo/Jw;->U_()Lo/Am;

    move-result-object v1

    .line 593
    invoke-virtual {p0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 594
    invoke-virtual {v1}, Lo/Am;->c()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 599
    :cond_3
    invoke-virtual {p0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->c(Landroid/app/Activity;)V

    .line 600
    iget-object v1, p0, Lo/Jw;->n:Landroid/widget/TextView;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->kR:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 601
    invoke-virtual {p0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v1

    iget-object v2, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 602
    invoke-direct {p0, v3}, Lo/Jw;->e(Z)V

    .line 603
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/SignIn;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/action/SignIn;-><init>()V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 604
    iget-object v1, p0, Lo/Jw;->z:Lo/JM;

    invoke-virtual {v1}, Lo/JM;->c()Lio/reactivex/Observable;

    move-result-object v1

    iget-object v2, p0, Lo/Jw;->e:Lio/reactivex/Observable;

    .line 605
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lo/Jw$12;

    const-string v3, "requestUserAgent"

    invoke-direct {v2, p0, v3, v0}, Lo/Jw$12;-><init>(Lo/Jw;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_1
    return-void

    .line 595
    :cond_4
    :goto_2
    invoke-direct {p0}, Lo/Jw;->z()V

    return-void
.end method

.method private D()V
    .locals 2

    const-string v0, "LoginBaseFragment"

    const-string v1, "going to signup activity"

    .line 531
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {p0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abD$StateListAnimator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 533
    invoke-virtual {p0, v0}, Lo/Jw;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private declared-synchronized G()V
    .locals 3

    monitor-enter p0

    .line 830
    :try_start_0
    invoke-virtual {p0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "LoginBaseFragment"

    const-string v2, "SmartLock is disabled or device does not support GPS"

    .line 831
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    monitor-exit p0

    return-void

    .line 836
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/Jw;->C:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    const-string v0, "LoginBaseFragment"

    const-string v2, "GPS client unavailable, unable to attempt to save credentials"

    .line 838
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 846
    :try_start_2
    iput-boolean v1, p0, Lo/Jw;->A:Z

    .line 847
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    invoke-direct {p0, v0}, Lo/Jw;->d(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 850
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lo/Jw;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lo/Jw;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method private static a(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/ValidateInputRejected;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 376
    :cond_0
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, p0}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object p0

    .line 377
    instance-of v1, p0, Lcom/netflix/cl/model/event/session/action/ValidateInput;

    if-eqz v1, :cond_1

    .line 378
    new-instance v1, Lcom/netflix/cl/model/event/session/ValidateInputRejected;

    check-cast p0, Lcom/netflix/cl/model/event/session/action/ValidateInput;

    invoke-direct {v1, p0, v0}, Lcom/netflix/cl/model/event/session/ValidateInputRejected;-><init>(Lcom/netflix/cl/model/event/session/action/ValidateInput;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method private synthetic a(Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lo/Jw;->U_()Lo/Am;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/Jw;->a(Lo/Am;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 411
    sget-object v0, Lcom/netflix/cl/model/InputKind;->password:Lcom/netflix/cl/model/InputKind;

    invoke-direct {p0, v0, p1}, Lo/Jw;->d(Lcom/netflix/cl/model/InputKind;Z)V

    .line 412
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lo/Jw;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/Jw;->e(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lo/Jw;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lo/Jw;->a(Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Lo/Jw;
    .locals 1

    .line 150
    new-instance v0, Lo/Jw;

    invoke-direct {v0}, Lo/Jw;-><init>()V

    .line 151
    invoke-virtual {v0, p0}, Lo/Jw;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lo/Jw;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lo/Jw;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lo/Jw;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lo/Jw;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method

.method private a(Lo/Am;Ljava/lang/String;)Z
    .locals 4

    .line 648
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 649
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 652
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 653
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object p1

    invoke-interface {p1}, Lo/cz;->G()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->isPasswordValid(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method static synthetic b(Lo/Jw;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lo/Jw;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method private b(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 7

    .line 711
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 713
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->j()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ")"

    const-string v4, " ("

    if-eqz v1, :cond_0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->kS:I

    invoke-virtual {p0, v5}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 716
    invoke-direct {p0, p1, v0}, Lo/Jw;->b(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-object v0

    .line 720
    :cond_0
    sget-object v1, Lo/Jw$9;->a:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v5

    aget v1, v1, v5

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    .line 786
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    const-string v0, ""

    goto/16 :goto_0

    .line 782
    :pswitch_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ks:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 783
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->E:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 778
    :pswitch_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kt:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->A:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 774
    :pswitch_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->rJ:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 775
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->B:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 770
    :pswitch_3
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->rJ:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->C:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 766
    :pswitch_4
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->rJ:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 767
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->D:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 762
    :pswitch_5
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ks:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->z:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 758
    :pswitch_6
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kt:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->x:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 754
    :pswitch_7
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kM:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 755
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->M:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 750
    :pswitch_8
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hh:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 751
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->M:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 746
    :pswitch_9
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hh:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->M:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 742
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->kM:I

    invoke-virtual {p0, v6}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 738
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->kU:I

    invoke-virtual {p0, v6}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 734
    :pswitch_c
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->os:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->H:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 730
    :pswitch_d
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hf:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->F:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 726
    :pswitch_e
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kT:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 727
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->v:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 722
    :pswitch_f
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->dH:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->G:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lo/Jw;->e(Lcom/netflix/mediaclient/StatusCode;)V

    .line 790
    :goto_0
    invoke-direct {p0, p1, v0}, Lo/Jw;->b(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Lo/Jw;->v()V

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 476
    iput-object p1, p0, Lo/Jw;->y:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lo/Jw;->p:Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "US"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;->updateFlag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/Jw;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lo/Jw;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic b(Lo/Jw;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/Jw;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    return-void
.end method

.method static synthetic c(Lo/Jw;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lo/Jw;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic c(Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 1

    .line 397
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {p1}, Lo/Jw;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0}, Lo/Jw;->g()V

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0}, Lo/Jw;->x()V

    .line 403
    :goto_0
    invoke-virtual {p0}, Lo/Jw;->U_()Lo/Am;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/Jw;->e(Lo/Am;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 404
    sget-object v0, Lcom/netflix/cl/model/InputKind;->email:Lcom/netflix/cl/model/InputKind;

    invoke-direct {p0, v0, p1}, Lo/Jw;->d(Lcom/netflix/cl/model/InputKind;Z)V

    .line 405
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 171
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lo/Jw;->C:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 177
    iget-object v0, p0, Lo/Jw;->C:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void
.end method

.method private synthetic c(Landroid/view/View;Lo/Am;)V
    .locals 1

    .line 221
    invoke-virtual {p2}, Lo/Am;->n()Lo/cc;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 223
    new-instance v0, Lo/JA;

    invoke-direct {v0, p0}, Lo/JA;-><init>(Lo/Jw;)V

    invoke-interface {p2, v0}, Lo/cc;->b(Lo/cb;)V

    .line 237
    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->cW:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    iput-object p1, p0, Lo/Jw;->p:Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    .line 240
    new-instance p1, Lo/cH;

    invoke-virtual {p0}, Lo/Jw;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/cH;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lo/cH;->L()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-direct {p0, p1}, Lo/Jw;->b(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lo/Jw;->p:Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    new-instance p2, Lo/JB;

    invoke-direct {p2, p0}, Lo/JB;-><init>(Lo/Jw;)V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-direct {p0}, Lo/Jw;->d()V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    .line 481
    invoke-virtual {p0}, Lo/Jw;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    .line 482
    invoke-static {p1}, Lo/JI;->c(Lcom/netflix/mediaclient/StatusCode;)Lo/JI;

    move-result-object p1

    const-string v1, "fragment_alert"

    .line 483
    invoke-virtual {p1, v0, v1}, Lo/JI;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 666
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    .line 669
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const-string v1, "SignIn"

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->u:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 675
    invoke-direct {p0, p1}, Lo/Jw;->b(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 676
    invoke-direct {p0, p1}, Lo/Jw;->e(Z)V

    goto :goto_1

    .line 670
    :cond_1
    :goto_0
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    .line 671
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jI:I

    invoke-virtual {p0, v0}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    .line 672
    invoke-direct {p0}, Lo/Jw;->G()V

    :goto_1
    return-void
.end method

.method private synthetic c(Ljava/lang/Boolean;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lo/Jw;->l:Lo/HorizontalScrollView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setActivated(Z)V

    .line 432
    iget-object v0, p0, Lo/Jw;->l:Lo/HorizontalScrollView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/util/AUIViewUtilitiesKt;->updateLoginRipple(Lo/HorizontalScrollView;Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 467
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "selectedCountry"

    .line 468
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic c(Lo/Jw;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lo/Jw;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method

.method static synthetic c(Lo/Jw;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Jw;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .line 510
    :try_start_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->passwordVisibilityButton:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 511
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "showPassword"

    .line 512
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 513
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 514
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 395
    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-static {v0}, Lo/HttpResponseCache;->d(Landroid/widget/TextView;)Lo/SntpClient;

    move-result-object v0

    new-instance v1, Lo/Jy;

    invoke-direct {v1, p0}, Lo/Jy;-><init>(Lo/Jw;)V

    .line 396
    invoke-virtual {v0, v1}, Lo/SntpClient;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-static {v1}, Lo/HttpResponseCache;->d(Landroid/widget/TextView;)Lo/SntpClient;

    move-result-object v1

    new-instance v2, Lo/JC;

    invoke-direct {v2, p0}, Lo/JC;-><init>(Lo/Jw;)V

    .line 409
    invoke-virtual {v1, v2}, Lo/SntpClient;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 415
    iget-object v2, p0, Lo/Jw;->B:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v3, Lo/JD;

    invoke-direct {v3, p0}, Lo/JD;-><init>(Lo/Jw;)V

    .line 416
    invoke-static {v0, v1, v3}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lo/Jw;->l:Lo/HorizontalScrollView;

    .line 428
    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/Jz;

    invoke-direct {v1, p0}, Lo/Jz;-><init>(Lo/Jw;)V

    .line 430
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 415
    invoke-virtual {v2, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private declared-synchronized d(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "LoginBaseFragment"

    const-string v0, "GPS client is null, unable to try to save credentials"

    .line 855
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    monitor-exit p0

    return-void

    .line 859
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lo/Jw;->A:Z

    if-eqz v0, :cond_3

    const-string v0, "LoginBaseFragment"

    const-string v1, "Trying to save credentials to GPS"

    .line 860
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 861
    iput-boolean v0, p0, Lo/Jw;->A:Z

    .line 862
    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 871
    :cond_1
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/action/StoreSharedCredentials;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/action/StoreSharedCredentials;-><init>()V

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v2

    .line 873
    new-instance v3, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    invoke-direct {v3, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    .line 877
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lo/Jw$1;

    invoke-direct {v0, p0, v2}, Lo/Jw$1;-><init>(Lo/Jw;Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "LoginBaseFragment"

    const-string v0, "Credential is empty, do not save it."

    .line 866
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 867
    invoke-direct {p0, p1}, Lo/Jw;->e(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    monitor-exit p0

    return-void

    .line 899
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Lcom/netflix/cl/model/InputKind;Z)V
    .locals 2

    .line 385
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/ValidateInput;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/session/action/ValidateInput;-><init>(Lcom/netflix/cl/model/InputKind;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 387
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 389
    :cond_0
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p1}, Lo/Jw;->a(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/ValidateInputRejected;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    :goto_0
    return-void
.end method

.method private synthetic d(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getPhoneCodesData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 225
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getPhoneCodesData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    move-result-object p1

    iput-object p1, p0, Lo/Jw;->D:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    .line 226
    iget-object p1, p0, Lo/Jw;->D:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;->getPhoneCodes()Ljava/util/List;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    .line 228
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getId()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lo/Jw;->y:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 229
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getFormattedCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Jw;->u:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic d(Lo/Jw;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lo/Jw;->C()V

    return-void
.end method

.method static synthetic e(Lo/Jw;)Landroid/widget/EditText;
    .locals 0

    .line 100
    iget-object p0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method private synthetic e(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    .line 420
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    iget-object v0, p0, Lo/Jw;->j:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cc:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    .line 423
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    :cond_2
    iget-object v0, p0, Lo/Jw;->k:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cc:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    .line 426
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic e(Lo/Jw;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lo/Jw;->c(Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "email"

    .line 926
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    .line 927
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 929
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LoginBaseFragment"

    const-string v2, "We received credential"

    .line 930
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v1, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 932
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    .line 950
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "LoginBaseFragment"

    if-eqz v0, :cond_1

    const-string v0, "SmartLock.save"

    const-string v3, "StoreSharedCredentials"

    if-eqz p1, :cond_0

    .line 951
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Google Play Services: STATUS: RESOLVING"

    .line 952
    invoke-static {v2, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :try_start_0
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Google Play Services: STATUS: Failed to send resolution."

    .line 957
    invoke-static {v2, v5, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 958
    sget-object v2, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    :cond_0
    const-string v4, "Google Play Services: STATUS: FAIL"

    .line 961
    invoke-static {v2, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    const-string v4, "Google Play Services: Could Not Resolve Error"

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    .line 963
    sget-object v2, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    :cond_1
    const-string p1, "NetflixActivity is null -  skipping startResolutionForResult"

    .line 966
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_2

    .line 969
    iget-object p1, p0, Lo/Jw;->b:Lo/JF;

    if-eqz p1, :cond_2

    .line 970
    iget-object p1, p0, Lo/Jw;->b:Lo/JF;

    invoke-interface {p1}, Lo/JF;->a()V

    :cond_2
    return-void
.end method

.method private e(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 3

    .line 795
    sget-object v0, Lo/Jw$9;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 817
    :cond_0
    iget-object v0, p0, Lo/Jw;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lo/Jw;->k:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cd:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    .line 819
    iget-object v0, p0, Lo/Jw;->r:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 820
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 811
    :cond_1
    iget-object v0, p0, Lo/Jw;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lo/Jw;->k:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cd:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    .line 813
    iget-object v0, p0, Lo/Jw;->r:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 814
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 805
    :cond_2
    iget-object v0, p0, Lo/Jw;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lo/Jw;->j:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cd:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    .line 807
    iget-object v0, p0, Lo/Jw;->q:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 808
    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 799
    :cond_3
    iget-object v0, p0, Lo/Jw;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lo/Jw;->j:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cd:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    .line 801
    iget-object v0, p0, Lo/Jw;->q:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ea:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 802
    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 824
    :goto_0
    iget-boolean v0, p0, Lo/Jw;->w:Z

    if-nez v0, :cond_4

    .line 825
    invoke-direct {p0, p1}, Lo/Jw;->c(Lcom/netflix/mediaclient/StatusCode;)V

    :cond_4
    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lo/Jw;->z:Lo/JM;

    invoke-virtual {v0}, Lo/JM;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 1043
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lo/Jw;->e:Lio/reactivex/Observable;

    .line 1044
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/Jw$10;

    const-string v2, "EmailPasswordFragment logoutError"

    invoke-direct {v1, p0, v2, p1}, Lo/Jw$10;-><init>(Lo/Jw;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 1045
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Lo/Jw;->z:Lo/JM;

    iget-object v3, p0, Lo/Jw;->u:Ljava/lang/String;

    iget-object v4, p0, Lo/Jw;->y:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lo/JM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 1030
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lo/Jw;->e:Lio/reactivex/Observable;

    .line 1031
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lo/Jw$2;

    const-string p3, "EmailPasswordFragment loginError"

    invoke-direct {p2, p0, p3}, Lo/Jw$2;-><init>(Lo/Jw;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic e(Lo/Jw;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Jw;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lo/Jw;Landroid/view/View;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/Jw;->c(Landroid/view/View;Lo/Am;)V

    return-void
.end method

.method private e(Z)V
    .locals 4

    .line 539
    iget-object v0, p0, Lo/Jw;->o:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lo/Jw;->s:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lo/Jw;->m:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lo/Jw;->l:Lo/HorizontalScrollView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setActivated(Z)V

    .line 543
    iget-object v0, p0, Lo/Jw;->l:Lo/HorizontalScrollView;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/util/AUIViewUtilitiesKt;->updateLoginRipple(Lo/HorizontalScrollView;Z)V

    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "^[\\d+().\\- ]+$"

    .line 437
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private e(Lo/Am;Ljava/lang/String;)Z
    .locals 4

    .line 635
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 638
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 639
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object p1

    invoke-interface {p1}, Lo/cz;->G()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 641
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->isUserLoginIdValid(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method static synthetic f(Lo/Jw;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lo/Jw;->B()V

    return-void
.end method

.method static synthetic g(Lo/Jw;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lo/Jw;->k:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 441
    iget-object v0, p0, Lo/Jw;->p:Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/MemberIdInputState;

    sget-object v2, Lcom/netflix/cl/model/MemberIdInputKind;->phoneNumber:Lcom/netflix/cl/model/MemberIdInputKind;

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/MemberIdInputState;-><init>(Lcom/netflix/cl/model/MemberIdInputKind;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 442
    :cond_0
    iget-object v0, p0, Lo/Jw;->p:Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;->setVisibility(I)V

    return-void
.end method

.method static synthetic h(Lo/Jw;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lo/Jw;->A()V

    return-void
.end method

.method static synthetic i(Lo/Jw;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lo/Jw;->x:Z

    return p0
.end method

.method static synthetic j(Lo/Jw;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lo/Jw;->y()V

    return-void
.end method

.method static synthetic k(Lo/Jw;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lo/Jw;->D()V

    return-void
.end method

.method static synthetic m(Lo/Jw;)Landroid/os/Handler;
    .locals 0

    .line 100
    iget-object p0, p0, Lo/Jw;->E:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic o(Lo/Jw;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lo/Jw;->v:Ljava/lang/String;

    return-object p0
.end method

.method private v()V
    .locals 3

    .line 451
    iget-object v0, p0, Lo/Jw;->D:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lo/Jw;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/SnoozeCriterion;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;Ljava/lang/String;)Lo/SnoozeCriterion;

    move-result-object v0

    .line 453
    invoke-virtual {p0}, Lo/Jw;->U_()Lo/Am;

    move-result-object v1

    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lo/SnoozeCriterion;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 454
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    :cond_0
    return-void
.end method

.method private x()V
    .locals 3

    .line 446
    iget-object v0, p0, Lo/Jw;->p:Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/MemberIdInputState;

    sget-object v2, Lcom/netflix/cl/model/MemberIdInputKind;->email:Lcom/netflix/cl/model/MemberIdInputKind;

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/MemberIdInputState;-><init>(Lcom/netflix/cl/model/MemberIdInputKind;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 447
    :cond_0
    iget-object v0, p0, Lo/Jw;->p:Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;->setVisibility(I)V

    return-void
.end method

.method private y()V
    .locals 3

    const/4 v0, 0x1

    .line 493
    invoke-direct {p0, v0}, Lo/Jw;->c(Z)V

    .line 494
    iget-object v1, p0, Lo/Jw;->f:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 495
    iget-object v1, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 496
    iget-object v1, p0, Lo/Jw;->t:Landroid/widget/TextView;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->dj:I

    invoke-virtual {p0, v2}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iput-boolean v0, p0, Lo/Jw;->x:Z

    return-void
.end method

.method private z()V
    .locals 2

    .line 620
    invoke-virtual {p0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 623
    :cond_0
    invoke-virtual {p0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v0

    new-instance v1, Lo/Jw$4;

    invoke-direct {v1, p0}, Lo/Jw$4;-><init>(Lo/Jw;)V

    invoke-virtual {v0, v1}, Lo/Serializable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;)V
    .locals 1

    .line 459
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getFormattedCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Jw;->u:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Jw;->b(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Jw;->c(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    .line 1006
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1008
    iget-object p1, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1009
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-direct {p0, p1, v0, p2}, Lo/Jw;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    :cond_0
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Lo/JE;->c(Landroid/view/View;)V

    .line 202
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    .line 203
    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 205
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    .line 206
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jS:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Jw;->m:Landroid/view/View;

    .line 207
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    iput-object v0, p0, Lo/Jw;->l:Lo/HorizontalScrollView;

    .line 209
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Jw;->r:Landroid/widget/TextView;

    .line 210
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fC:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Jw;->q:Landroid/widget/TextView;

    .line 211
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lo/Jw;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 212
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lo/Jw;->k:Lcom/google/android/material/textfield/TextInputLayout;

    .line 214
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jO:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Jw;->o:Landroid/view/View;

    .line 215
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jI:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lo/Jw;->s:Landroid/widget/ProgressBar;

    .line 216
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jW:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Jw;->n:Landroid/widget/TextView;

    .line 217
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ro:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Jw;->t:Landroid/widget/TextView;

    .line 219
    invoke-virtual {p0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lo/Ju;

    invoke-direct {v1, p0, p1}, Lo/Ju;-><init>(Lo/Jw;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 247
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abD$StateListAnimator;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    invoke-static {}, Lo/afw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lo/Jw;->t:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 257
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 258
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    new-instance v1, Lo/Jw$3;

    invoke-direct {v1, p0}, Lo/Jw$3;-><init>(Lo/Jw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lo/Jw;->i:Landroid/widget/EditText;

    new-instance v1, Lo/Jw$8;

    invoke-direct {v1, p0}, Lo/Jw$8;-><init>(Lo/Jw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 284
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    new-instance v1, Lo/Jw$6;

    invoke-direct {v1, p0}, Lo/Jw$6;-><init>(Lo/Jw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 306
    iget-object v0, p0, Lo/Jw;->f:Landroid/widget/EditText;

    new-instance v1, Lo/Jw$7;

    invoke-direct {v1, p0}, Lo/Jw$7;-><init>(Lo/Jw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 329
    iget-object v0, p0, Lo/Jw;->t:Landroid/widget/TextView;

    new-instance v1, Lo/Jw$13;

    invoke-direct {v1, p0}, Lo/Jw$13;-><init>(Lo/Jw;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/Jw$11;

    invoke-direct {v1, p0}, Lo/Jw$11;-><init>(Lo/Jw;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/Jw$15;

    invoke-direct {v1, p0}, Lo/Jw$15;-><init>(Lo/Jw;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lo/Jw$14;

    invoke-direct {v0, p0}, Lo/Jw$14;-><init>(Lo/Jw;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lo/JE;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lo/Jw;->e(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onConnected(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "LoginBaseFragment"

    const-string v0, "onConnected"

    .line 993
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object p1, p0, Lo/Jw;->C:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, p1}, Lo/Jw;->d(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    const/4 p1, 0x0

    .line 988
    iput-object p1, p0, Lo/Jw;->C:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 999
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LoginBaseFragment"

    const-string v1, "onConnectionSuspended: %d"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1000
    iget-object p1, p0, Lo/Jw;->C:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_0

    .line 1001
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "LoginBaseFragment"

    const-string v1, "EmailPasswordFragment onCreateView"

    .line 183
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/MemberIdInputState;

    sget-object v2, Lcom/netflix/cl/model/MemberIdInputKind;->email:Lcom/netflix/cl/model/MemberIdInputKind;

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/MemberIdInputState;-><init>(Lcom/netflix/cl/model/MemberIdInputKind;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 185
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lo/Jw;->z:Lo/JM;

    .line 187
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cu:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lo/Jw;->c(Landroid/view/View;)V

    if-eqz p3, :cond_0

    const-string p2, "showPasswordSelected"

    .line 191
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lo/Jw;->x:Z

    .line 192
    iget-boolean p2, p0, Lo/Jw;->x:Z

    if-eqz p2, :cond_0

    .line 193
    invoke-direct {p0}, Lo/Jw;->y()V

    .line 196
    :cond_0
    invoke-direct {p0}, Lo/Jw;->c()V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 976
    invoke-super {p0}, Lo/JE;->onDetach()V

    const/4 v0, 0x0

    .line 977
    iput-object v0, p0, Lo/Jw;->b:Lo/JF;

    .line 978
    iget-object v0, p0, Lo/Jw;->C:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lo/JE;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string p1, "LoginBaseFragment"

    const-string p2, "EmailPasswordFragment onManagerReady"

    .line 158
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1016
    invoke-super {p0}, Lo/JE;->onPause()V

    const/4 v0, 0x1

    .line 1017
    iput-boolean v0, p0, Lo/Jw;->w:Z

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login is paused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Jw;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginBaseFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1023
    invoke-super {p0}, Lo/JE;->onResume()V

    const/4 v0, 0x0

    .line 1024
    iput-boolean v0, p0, Lo/Jw;->w:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 488
    iget-boolean v0, p0, Lo/Jw;->x:Z

    const-string v1, "showPasswordSelected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    invoke-super {p0, p1}, Lo/JE;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
