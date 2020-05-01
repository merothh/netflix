.class Lo/acK$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic d:Lo/acK;


# direct methods
.method private constructor <init>(Lo/acK;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lo/acK$Application;->d:Lo/acK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/acK;Lo/acK$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lo/acK$Application;-><init>(Lo/acK;)V

    return-void
.end method

.method static synthetic a(Lo/acK$Application;Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/acK$Application;->c(Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private synthetic c(Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 224
    new-instance v0, Lo/acJ;

    invoke-direct {v0, p0}, Lo/acJ;-><init>(Lo/acK$Application;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lo/Ik;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lo/Ik$Application;)V

    return-void
.end method

.method private synthetic d(Z)V
    .locals 0

    .line 224
    iget-object p1, p0, Lo/acK$Application;->d:Lo/acK;

    invoke-static {p1}, Lo/acK;->c(Lo/acK;)V

    return-void
.end method

.method static synthetic e(Lo/acK$Application;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo/acK$Application;->d(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string p1, "nf_age"

    const-string p2, "verifyButton clicked - going to webview"

    .line 215
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p2, p0, Lo/acK$Application;->d:Lo/acK;

    invoke-virtual {p2}, Lo/acK;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    const-string p2, "Get autologin token..."

    .line 219
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v5, Lo/Ik;

    invoke-direct {v5, v3}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 222
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    sget-object p2, Lo/aeK;->c:Lcom/android/volley/VolleyError;

    invoke-direct {p1, p2}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    .line 223
    new-instance v4, Lo/acL;

    invoke-direct {v4, p0, v5, p1}, Lo/acL;-><init>(Lo/acK$Application;Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 226
    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    iget-object p1, p0, Lo/acK$Application;->d:Lo/acK;

    invoke-static {p1}, Lo/acK;->d(Lo/acK;)Lo/JM;

    move-result-object p1

    invoke-virtual {p1}, Lo/JM;->c()Lio/reactivex/Observable;

    move-result-object p1

    .line 229
    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lo/acK$Application$3;

    const-string v2, "requestUserAgent"

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lo/acK$Application$3;-><init>(Lo/acK$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Runnable;Lo/Ik;)V

    .line 230
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
