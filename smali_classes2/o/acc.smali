.class public Lo/acc;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private final a:Landroid/widget/TextView;

.field protected b:Landroid/view/ViewGroup;

.field protected final c:Lo/GridView;

.field protected final d:Landroid/widget/TextView;

.field private final e:Landroid/animation/ValueAnimator;

.field protected f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

.field protected g:Z

.field protected final h:Landroid/view/View;

.field private final i:Landroid/view/ViewPropertyAnimator;

.field public final j:Z

.field private k:Ljava/lang/Long;

.field private l:Lo/WebChromeClient;

.field private m:Lo/Kx;

.field private final n:Landroid/widget/Space;

.field private o:Landroid/widget/Space;

.field private p:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lo/JM;

.field private r:Ljava/lang/Long;

.field private s:Ljava/lang/Long;

.field private t:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, v0}, Lo/acc;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .line 167
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lo/acc;->q:Lo/JM;

    .line 157
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lo/acc;->p:Lio/reactivex/subjects/PublishSubject;

    .line 168
    iput-boolean p2, p0, Lo/acc;->g:Z

    .line 169
    iput-boolean p3, p0, Lo/acc;->j:Z

    .line 170
    invoke-virtual {p0}, Lo/acc;->a()I

    move-result p2

    invoke-static {p1, p2, p0}, Lo/acc;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 171
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->tq:I

    invoke-virtual {p0, p1}, Lo/acc;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/acc;->a:Landroid/widget/TextView;

    .line 172
    iget-object p1, p0, Lo/acc;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/acc;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lo/acc;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 175
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aB:I

    invoke-virtual {p0, p1}, Lo/acc;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/acc;->d:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p0}, Lo/acc;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lo/acc;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 179
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->db:I

    invoke-virtual {p0, p1}, Lo/acc;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/acc;->b:Landroid/view/ViewGroup;

    .line 180
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->hG:I

    invoke-virtual {p0, p1}, Lo/acc;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/GridView;

    iput-object p1, p0, Lo/acc;->c:Lo/GridView;

    .line 182
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->q:I

    invoke-virtual {p0, p1}, Lo/acc;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/acc;->h:Landroid/view/View;

    .line 183
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->eV:I

    invoke-virtual {p0, p1}, Lo/acc;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    iput-object p1, p0, Lo/acc;->n:Landroid/widget/Space;

    .line 184
    new-instance p1, Lo/acc$4;

    invoke-direct {p1, p0}, Lo/acc$4;-><init>(Lo/acc;)V

    invoke-virtual {p0, p1}, Lo/acc;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget-object p1, p0, Lo/acc;->b:Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/afw;->a(Landroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Lo/acc;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lo/acc;->i:Landroid/view/ViewPropertyAnimator;

    .line 196
    iget-object p1, p0, Lo/acc;->i:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lo/acc;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0001

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 197
    iget-object p1, p0, Lo/acc;->i:Landroid/view/ViewPropertyAnimator;

    new-instance p2, Lo/acc$8;

    invoke-direct {p2, p0}, Lo/acc$8;-><init>(Lo/acc;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 206
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lo/acc;->e:Landroid/animation/ValueAnimator;

    .line 207
    iget-object p1, p0, Lo/acc;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 208
    iget-object p1, p0, Lo/acc;->e:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    iget-object p1, p0, Lo/acc;->e:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 210
    iget-object p1, p0, Lo/acc;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lo/acc;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    iget-object p1, p0, Lo/acc;->e:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/acc$7;

    invoke-direct {p2, p0}, Lo/acc$7;-><init>(Lo/acc;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    iget-object p1, p0, Lo/acc;->e:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/acc$9;

    invoke-direct {p2, p0}, Lo/acc$9;-><init>(Lo/acc;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    iget-boolean p1, p0, Lo/acc;->g:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    .line 244
    invoke-virtual {p0, p1}, Lo/acc;->setVisibility(I)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 851
    new-instance v0, Lo/acc$11;

    invoke-direct {v0, p0, p1}, Lo/acc$11;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-object v0
.end method

.method static synthetic a(Lo/acc;Landroid/widget/Space;)Landroid/widget/Space;
    .locals 0

    .line 113
    iput-object p1, p0, Lo/acc;->o:Landroid/widget/Space;

    return-object p1
.end method

.method static synthetic a(Lo/acc;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/acc;->p:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 393
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 9

    .line 1078
    invoke-static {p1}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1080
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Unable to generate token, no userAgent"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1082
    :cond_0
    new-instance v5, Lo/Ik;

    invoke-direct {v5, p1}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1083
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    sget-object v1, Lo/aeK;->c:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    .line 1084
    new-instance v4, Lo/acc$1;

    invoke-direct {v4, p0, v5, v0, p2}, Lo/acc$1;-><init>(Lo/acc;Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    .line 1090
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1092
    iget-object v0, p0, Lo/acc;->q:Lo/JM;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 1093
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v7

    new-instance v8, Lo/acc$6;

    const-string v2, "UMA createAutoLoginToken"

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lo/acc$6;-><init>(Lo/acc;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Runnable;Lo/Ik;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    .line 1094
    invoke-virtual {v7, v8}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method private synthetic a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 3

    .line 1062
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_0

    .line 1063
    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    new-instance v0, Lcom/netflix/cl/model/context/GestureInput;

    sget-object v1, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    invoke-direct {p0, p1, v0}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/cl/model/context/UserInput;)V

    .line 1065
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->R()V

    const/4 p1, 0x1

    .line 1067
    invoke-virtual {p0, p1}, Lo/acc;->c(Z)V

    .line 1069
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lo/Ir;->g()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 1070
    invoke-direct {p0}, Lo/acc;->c()V

    goto :goto_0

    .line 1072
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Expected UMA view to run in a NetflixActivity"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lo/acc;Lcom/netflix/cl/model/Error;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/acc;->e(Lcom/netflix/cl/model/Error;)V

    return-void
.end method

.method static synthetic a(Lo/acc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/acc;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-void
.end method

.method static synthetic a(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/acc;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lo/acc;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 113
    invoke-direct/range {p0 .. p5}, Lo/acc;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lo/acc;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/acc;->e:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 913
    new-instance v0, Lo/aca;

    invoke-direct {v0, p0, p1}, Lo/aca;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-object v0
.end method

.method private synthetic b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 2

    .line 1047
    iget-object p2, p0, Lo/acc;->l:Lo/WebChromeClient;

    instance-of v0, p2, Lo/abV;

    if-eqz v0, :cond_0

    .line 1048
    check-cast p2, Lo/abV;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->parameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lo/abV;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->umsAlertCtaFeedback()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1052
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_1

    .line 1054
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->umsAlertCtaFeedback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/Am;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/acc;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/cl/model/context/UserInput;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/cl/model/context/UserInput;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 701
    new-instance v0, Lo/acc$13;

    invoke-direct {v0, p0, p1}, Lo/acc$13;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-object v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 411
    invoke-direct {p0, v0}, Lo/acc;->e(Lcom/netflix/cl/model/Error;)V

    return-void
.end method

.method private synthetic c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 5

    .line 942
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 943
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    .line 945
    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    new-instance v1, Lcom/netflix/cl/model/context/GestureInput;

    sget-object v3, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    invoke-direct {p0, p1, v1}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/cl/model/context/UserInput;)V

    .line 953
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/action/NotifyUms;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/action/NotifyUms;-><init>()V

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    .line 954
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v3

    iget-object v4, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->callback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lo/Am;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance p1, Lo/SyncStateContract;

    invoke-direct {p1}, Lo/SyncStateContract;-><init>()V

    new-instance v3, Lo/acc$3;

    invoke-direct {v3, p0}, Lo/acc$3;-><init>(Lo/acc;)V

    invoke-interface {v0, p1, v3}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    .line 958
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->R()V

    .line 959
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 960
    invoke-direct {p0}, Lo/acc;->c()V

    .line 961
    invoke-virtual {p0, v2}, Lo/acc;->c(Z)V

    return-void

    .line 946
    :cond_1
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Expected UMA view to run in a NetflixActivity"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0, v2}, Lo/acc;->c(Z)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/cl/model/context/UserInput;)V
    .locals 4

    .line 386
    new-instance v0, Lo/afC;

    invoke-direct {v0}, Lo/afC;-><init>()V

    .line 387
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/afC;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 391
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    new-instance v2, Lo/abY;

    invoke-direct {v2, v1}, Lo/abY;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 396
    :catchall_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad UMA cta trackingInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 398
    :cond_0
    :goto_0
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v3, Lcom/netflix/cl/model/AppView;->umsAlertButton:Lcom/netflix/cl/model/AppView;

    invoke-direct {v2, v3, v0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/acc;->r:Ljava/lang/Long;

    .line 399
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lo/acc;->t:Ljava/lang/Long;

    .line 400
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/SubmitCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SubmitCommand;-><init>()V

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lo/acc;->s:Ljava/lang/Long;

    .line 402
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->umsAlertCtaFeedback()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 403
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_1

    .line 405
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->umsAlertCtaFeedback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/Am;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V
    .locals 9

    .line 757
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->M()Lio/reactivex/Observable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 759
    new-instance p1, Lcom/netflix/cl/model/Error;

    sget-object p4, Lo/LegacyErrorStrings;->ah:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p4}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/acc;->e(Lcom/netflix/cl/model/Error;)V

    .line 760
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p4, "Retry payment rx is null, request is not sent out"

    invoke-interface {p1, p4}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 762
    iget-object p1, p0, Lo/acc;->p:Lio/reactivex/subjects/PublishSubject;

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "Retry payment rx is null"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 765
    invoke-static {p2, p1}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 767
    :cond_1
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/Am;->d(Z)V

    goto :goto_0

    .line 771
    :cond_2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 772
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 773
    invoke-static {p0}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v8, Lo/acc$12;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lo/acc$12;-><init>(Lo/acc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 774
    invoke-virtual {v0, v8}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lo/acc;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/acc;->c()V

    return-void
.end method

.method static synthetic c(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/acc;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 834
    new-instance v0, Lo/acc$14;

    invoke-direct {v0, p0, p1}, Lo/acc$14;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-object v0
.end method

.method private d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Z)Landroid/view/View$OnClickListener;
    .locals 1

    .line 966
    new-instance v0, Lo/acc$2;

    invoke-direct {v0, p0, p1, p2}, Lo/acc$2;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Z)V

    return-object v0
.end method

.method static synthetic d(Lo/acc;)Lo/Kx;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/acc;->m:Lo/Kx;

    return-object p0
.end method

.method static synthetic d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lo/acc;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 10

    .line 994
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->parameters()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Expected UMA view to run in a NetflixActivity"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 995
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0, v1}, Lo/acc;->c(Z)V

    return-void

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_2

    .line 1001
    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1007
    :cond_1
    new-instance v0, Lcom/netflix/cl/model/context/GestureInput;

    sget-object v2, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    invoke-direct {p0, p1, v0}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/cl/model/context/UserInput;)V

    .line 1009
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/NotifyUms;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/action/NotifyUms;-><init>()V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v5

    .line 1010
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    iget-object v2, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->callback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lo/Am;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 1012
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->parameters()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lo/acc$5;

    const-string v4, "UserMessageAreaView"

    move-object v2, v9

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lo/acc$5;-><init>(Lo/acc;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1011
    invoke-virtual {v0, v8, v9}, Lo/Am;->b(Ljava/lang/String;Lo/zU;)V

    .line 1040
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->R()V

    .line 1041
    invoke-virtual {p0, v1}, Lo/acc;->c(Z)V

    return-void

    .line 1002
    :cond_2
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0, v1}, Lo/acc;->c(Z)V

    return-void
.end method

.method static synthetic d(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lo/acc;)Landroid/widget/Space;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/acc;->o:Landroid/widget/Space;

    return-object p0
.end method

.method private e(Lcom/netflix/cl/model/Error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 416
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/ExtLogger;->logError(Lcom/netflix/cl/model/Error;)V

    .line 418
    :cond_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/acc;->s:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 419
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/acc;->t:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 420
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/acc;->r:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method private synthetic e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 5

    .line 914
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 915
    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 921
    :cond_0
    new-instance v1, Lcom/netflix/cl/model/context/GestureInput;

    sget-object v2, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    invoke-direct {p0, p1, v1}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/cl/model/context/UserInput;)V

    .line 923
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/NotifyUms;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/action/NotifyUms;-><init>()V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    .line 924
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    iget-object v3, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->callback()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/Am;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    invoke-virtual {v2}, Lo/Am;->O()V

    .line 928
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->R()V

    .line 929
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 930
    invoke-direct {p0}, Lo/acc;->c()V

    .line 931
    invoke-virtual {p0, v0}, Lo/acc;->c(Z)V

    .line 934
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->successMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 935
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->successMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/adk;->a(Ljava/lang/String;I)V

    :cond_1
    return-void

    .line 916
    :cond_2
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Expected UMA view to run in a NetflixActivity"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0, v0}, Lo/acc;->c(Z)V

    return-void
.end method

.method static synthetic e(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/acc;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V

    return-void
.end method

.method private f(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 993
    new-instance v0, Lo/acb;

    invoke-direct {v0, p0, p1}, Lo/acb;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-object v0
.end method

.method private g(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1061
    new-instance v0, Lo/acf;

    invoke-direct {v0, p0, p1}, Lo/acf;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-object v0
.end method

.method private h(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 941
    new-instance v0, Lo/abZ;

    invoke-direct {v0, p0, p1}, Lo/abZ;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-object v0
.end method

.method private i(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1046
    new-instance v0, Lo/ach;

    invoke-direct {v0, p0, p1}, Lo/ach;-><init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 256
    iget-boolean v0, p0, Lo/acc;->g:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fS:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fY:I

    :goto_0
    return v0
.end method

.method protected a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;I)V
    .locals 1

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, p1, p2, v0}, Lo/acc;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;IZ)V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 580
    iget-boolean v0, p0, Lo/acc;->g:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->T:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->ab:I

    :goto_0
    return v0
.end method

.method protected b(Landroid/widget/Button;)V
    .locals 4

    .line 589
    iget-object v0, p0, Lo/acc;->b:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "RETRY_PAYMENT"

    .line 695
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    .line 696
    invoke-direct/range {v0 .. v5}, Lo/acc;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;IZ)V
    .locals 4

    .line 600
    :try_start_0
    new-instance v0, Lo/HorizontalScrollView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->selected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lo/acc;->b()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/acc;->f()I

    move-result v3

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lo/HorizontalScrollView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 602
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-13671 - NetflixTextButton with font-family failed"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 604
    :try_start_1
    new-instance v0, Lo/HorizontalScrollView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->i:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lo/HorizontalScrollView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 606
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-13671 - NetflixTextButton with NetflixButtonDebugForSPY13671 failed"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 608
    :try_start_2
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->i:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 610
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-13671 - AppCompatButton with NetflixButtonDebugForSPY13671 failed"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    :try_start_3
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 613
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 615
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-13671 - AppCompatButton without style failed"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    :try_start_4
    new-instance v0, Landroid/widget/Button;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->i:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 627
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 628
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setId(I)V

    .line 629
    iget-boolean p2, p0, Lo/acc;->g:Z

    if-eqz p2, :cond_1

    .line 630
    iget-object p2, p0, Lo/acc;->b:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 632
    :cond_1
    invoke-virtual {p0, v0}, Lo/acc;->b(Landroid/widget/Button;)V

    .line 635
    :goto_2
    iget-object p2, p0, Lo/acc;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 636
    iget-object p2, p0, Lo/acc;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 638
    invoke-virtual {p0, p1}, Lo/acc;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_2

    .line 641
    invoke-virtual {p0}, Lo/acc;->i()I

    move-result p1

    .line 642
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 643
    invoke-virtual {p2, v1, v1, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 644
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :catch_4
    move-exception p1

    .line 619
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const-string p3, "SPY-13671 - Button with NetflixButtonDebugForSPY13671 failed (last resort, no UMA for this device!!"

    invoke-interface {p2, p3, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lo/Kx;Landroid/view/ViewGroup;)V
    .locals 5

    .line 270
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_5

    .line 272
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "Uma Banner showBanner start"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 273
    iput-object p2, p0, Lo/acc;->m:Lo/Kx;

    .line 274
    iput-object p1, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 275
    invoke-virtual {p0}, Lo/acc;->d()V

    const/4 p2, 0x0

    .line 276
    invoke-virtual {p0, p2}, Lo/acc;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 279
    invoke-static {}, Lo/Kl$ActionBar;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    invoke-static {p0, v3, v1}, Lo/RemoteException;->e(Landroid/view/View;II)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    invoke-static {p0, v3, v1}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 286
    invoke-virtual {p0}, Lo/acc;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v4, Lo/acc$10;

    invoke-direct {v4, p0}, Lo/acc$10;-><init>(Lo/acc;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 298
    :goto_0
    invoke-static {p3, p0, v3}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 300
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 306
    :cond_2
    :goto_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p3, "Uma Banner [blocking] addView"

    invoke-interface {p1, p3}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lo/acc;->n:Landroid/widget/Space;

    invoke-virtual {p1, p2}, Landroid/widget/Space;->setVisibility(I)V

    .line 310
    sget p1, Lcom/netflix/mediaclient/ui/R$Application;->ai:I

    invoke-virtual {p0, p1}, Lo/acc;->setBackgroundResource(I)V

    goto :goto_2

    .line 313
    :cond_3
    invoke-static {}, Lo/Kl$ActionBar;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 314
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Uma Banner [nonblocking] addView"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result p1

    invoke-static {v0}, Lo/RemoteException;->a(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {p0, v3, p1}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 317
    sget p1, Lcom/netflix/mediaclient/ui/R$Application;->ai:I

    invoke-virtual {p0, p1}, Lo/acc;->setBackgroundResource(I)V

    goto :goto_2

    .line 320
    :cond_4
    iget-object p1, p0, Lo/acc;->m:Lo/Kx;

    invoke-virtual {p1, p0}, Lo/Kx;->setHeaderView(Landroid/view/View;)V

    .line 322
    iget-object p1, p0, Lo/acc;->n:Landroid/widget/Space;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Space;->setVisibility(I)V

    const/4 p1, 0x0

    .line 323
    invoke-virtual {p0, p1}, Lo/acc;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :goto_2
    invoke-virtual {p0}, Lo/acc;->o()V

    .line 327
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Uma Banner showBanner complete"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Displaying uma alert for banner created on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    iget-object p3, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UserMessageAreaView"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lo/WebChromeClient;)V
    .locals 2

    .line 333
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 335
    iput-object p1, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 336
    iput-object p2, p0, Lo/acc;->l:Lo/WebChromeClient;

    .line 337
    invoke-virtual {p0}, Lo/acc;->d()V

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Displaying uma alert for modal created on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UserMessageAreaView"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 428
    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz v0, :cond_7

    .line 430
    iget-boolean v0, p0, Lo/acc;->g:Z

    if-nez v0, :cond_1

    .line 431
    iget-object p1, p0, Lo/acc;->l:Lo/WebChromeClient;

    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {p1}, Lo/WebChromeClient;->dismissAllowingStateLoss()V

    :cond_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p0}, Lo/acc;->n()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 441
    iget-object p1, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 444
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v1, "Uma Banner dismiss [with animation] started"

    invoke-interface {p1, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lo/acc;->i:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 446
    invoke-virtual {p0}, Lo/acc;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 447
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 448
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, p0, v0}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    goto :goto_0

    .line 451
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v1, "Uma Banner dismiss [no animation] started"

    invoke-interface {p1, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 453
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v2, "Uma Banner [blocking] removeView"

    invoke-interface {p1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lo/acc;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 455
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 456
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, p0, v0}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 457
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 459
    :cond_3
    iget-object p1, p0, Lo/acc;->m:Lo/Kx;

    invoke-virtual {p1, v1}, Lo/Kx;->setHeaderView(Landroid/view/View;)V

    goto :goto_0

    .line 461
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Uma Banner [non-blocking] removeView"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lo/adq;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 463
    invoke-virtual {p0}, Lo/acc;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 464
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 465
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 468
    :cond_5
    iget-object p1, p0, Lo/acc;->m:Lo/Kx;

    invoke-virtual {p1, v1}, Lo/Kx;->setHeaderView(Landroid/view/View;)V

    .line 472
    :cond_6
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Uma Banner dismiss complete"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected d()V
    .locals 3

    .line 507
    iget-object v0, p0, Lo/acc;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 508
    iget-boolean v0, p0, Lo/acc;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v0

    .line 509
    :goto_0
    iget-object v2, p0, Lo/acc;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :cond_2
    iget-boolean v0, p0, Lo/acc;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_2
    iget-object v2, p0, Lo/acc;->d:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p0}, Lo/acc;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    iget-object v0, p0, Lo/acc;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 519
    :cond_5
    invoke-virtual {p0}, Lo/acc;->j()V

    .line 521
    iget-object v0, p0, Lo/acc;->c:Lo/GridView;

    if-eqz v0, :cond_8

    .line 522
    iget-boolean v0, p0, Lo/acc;->g:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerIcon()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->icon()Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 524
    iget-object v0, p0, Lo/acc;->c:Lo/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    goto :goto_5

    .line 526
    :cond_7
    iget-object v1, p0, Lo/acc;->c:Lo/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/GridView;->setVisibility(I)V

    .line 527
    invoke-virtual {p0, v0}, Lo/acc;->e(Ljava/lang/String;)Z

    :cond_8
    :goto_5
    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
    .locals 3

    .line 650
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINK"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0, p1}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 652
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RETRY_PAYMENT"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-direct {p0, p1}, Lo/acc;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 654
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESTART_MEMBERSHIP"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    invoke-direct {p0, p1}, Lo/acc;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 656
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UMS_IMPRESSION"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT_NOW"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 657
    invoke-direct {p0, p1, v0}, Lo/acc;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Z)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 658
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BACKGROUND_CALL"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DISMISS"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 659
    invoke-direct {p0, p1, v0}, Lo/acc;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Z)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 660
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CONNECT_TO_WHATSAPP"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 661
    invoke-direct {p0, p1}, Lo/acc;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 662
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TOU_AGREE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 663
    invoke-direct {p0, p1}, Lo/acc;->h(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 664
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PRICE_ACKNOWLEDGE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 665
    invoke-direct {p0, p1}, Lo/acc;->f(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 666
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PLAN_ACKNOWLEDGE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 667
    invoke-direct {p0, p1}, Lo/acc;->f(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 668
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLAN_SELECT"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "APP_REDIRECT"

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 669
    invoke-direct {p0, p1}, Lo/acc;->i(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 670
    :cond_9
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    const-string v2, "REFER_FRIENDS"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 671
    invoke-direct {p0, p1}, Lo/acc;->g(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 2

    .line 483
    iput-object p1, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 487
    iget-object v0, p0, Lo/acc;->l:Lo/WebChromeClient;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerAlert()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lo/acc;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->modalAlert()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/acc;->l:Lo/WebChromeClient;

    invoke-virtual {p1}, Lo/WebChromeClient;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 498
    invoke-virtual {p0}, Lo/acc;->n()V

    .line 500
    :cond_2
    invoke-virtual {p0}, Lo/acc;->d()V

    if-eqz v1, :cond_3

    .line 502
    invoke-virtual {p0}, Lo/acc;->o()V

    :cond_3
    return-void
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 5

    .line 533
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "whatsapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "warn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    .line 550
    iget-object p1, p0, Lo/acc;->c:Lo/GridView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    return v1

    .line 547
    :cond_1
    iget-object p1, p0, Lo/acc;->c:Lo/GridView;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bK:I

    invoke-virtual {p1, v0}, Lo/GridView;->setImageResource(I)V

    return v4

    .line 543
    :cond_2
    iget-object p1, p0, Lo/acc;->c:Lo/GridView;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aW:I

    invoke-virtual {p1, v0}, Lo/GridView;->setImageResource(I)V

    .line 544
    iget-object p1, p0, Lo/acc;->c:Lo/GridView;

    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->z:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/GridView;->setColorFilter(I)V

    return v4

    .line 539
    :cond_3
    iget-object p1, p0, Lo/acc;->c:Lo/GridView;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bO:I

    invoke-virtual {p1, v0}, Lo/GridView;->setImageResource(I)V

    .line 540
    iget-object p1, p0, Lo/acc;->c:Lo/GridView;

    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->A:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/GridView;->setColorFilter(I)V

    return v4

    .line 535
    :cond_4
    iget-object p1, p0, Lo/acc;->c:Lo/GridView;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bO:I

    invoke-virtual {p1, v0}, Lo/GridView;->setImageResource(I)V

    .line 536
    iget-object p1, p0, Lo/acc;->c:Lo/GridView;

    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->D:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/GridView;->setColorFilter(I)V

    return v4

    :sswitch_data_0
    .sparse-switch
        0x3164ae -> :sswitch_3
        0x379286 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x73526992 -> :sswitch_0
    .end sparse-switch
.end method

.method protected f()I
    .locals 1

    .line 585
    iget-boolean v0, p0, Lo/acc;->g:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->X:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->W:I

    :goto_0
    return v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected i()I
    .locals 2

    .line 678
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aO:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected j()V
    .locals 6

    .line 557
    iget-boolean v0, p0, Lo/acc;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerCtas()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->ctas()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 558
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 562
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 565
    iget-boolean v4, p0, Lo/acc;->g:Z

    if-nez v4, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 566
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->tQ:I

    invoke-virtual {p0, v1, v5, v4}, Lo/acc;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;IZ)V

    .line 569
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 570
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->tU:I

    invoke-virtual {p0, v1, v3}, Lo/acc;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;I)V

    .line 573
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 574
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->tW:I

    invoke-virtual {p0, v0, v1}, Lo/acc;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lo/acc;->p:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public n()V
    .locals 2

    .line 374
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/acc;->k:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lo/acc;->k:Ljava/lang/Long;

    return-void
.end method

.method public o()V
    .locals 4

    .line 348
    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 354
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->trackingInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->trackingInfo()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lo/acG;->d(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 361
    :catchall_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad UMA trackingInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->trackingInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 364
    :cond_1
    :goto_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v3, Lcom/netflix/cl/model/AppView;->umsAlert:Lcom/netflix/cl/model/AppView;

    invoke-direct {v2, v3, v1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/acc;->k:Ljava/lang/Long;

    .line 365
    iget-object v0, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->umsAlertRenderFeedback()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    iget-object v1, p0, Lo/acc;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->umsAlertRenderFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Am;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
