.class public Lo/abT;
.super Lo/add;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abT$ActionBar;,
        Lo/abT$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/abT$StateListAnimator;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/JM;

.field private b:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/abT$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/abT$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/abT;->c:Lo/abT$StateListAnimator;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lo/abT;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lo/add;-><init>()V

    .line 30
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lo/abT;->a:Lo/JM;

    return-void
.end method

.method public static final synthetic b(Lo/abT;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lo/abT;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic b(Lo/abT;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lo/add;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 6

    sget-object v0, Lo/abT;->c:Lo/abT$StateListAnimator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lo/abT$StateListAnimator;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    .line 28
    sget-object v0, Lo/abT;->i:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic c(Lo/abT;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/abT;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lo/abT;->c:Lo/abT$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/abT$StateListAnimator;->d(Ljava/lang/String;)V

    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    sget-object v0, Lo/abT;->c:Lo/abT$StateListAnimator;

    invoke-static {v0, p1}, Lo/abT$StateListAnimator;->d(Lo/abT$StateListAnimator;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with auto login token for non-trusted host names"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 132
    :cond_1
    new-instance v0, Lo/Ik;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 133
    new-instance v2, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    sget-object v3, Lo/aeK;->c:Lcom/android/volley/VolleyError;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    .line 134
    new-instance v3, Lo/abT$TaskDescription;

    invoke-direct {v3, v0, v2, p1}, Lo/abT$TaskDescription;-><init>(Lo/Ik;Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 135
    invoke-virtual {p0}, Lo/abT;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    invoke-static {v1}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lo/abT;->a:Lo/JM;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lo/abT;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v4

    const-string v0, "userAgentRepository.crea\u2026keUntil(mActivityDestroy)"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;

    invoke-direct {v0, p0, v3, p1}, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;-><init>(Lo/abT;Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lo/alA;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "not loading empty url"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    iget-boolean v0, p0, Lo/abT;->b:Z

    if-nez v0, :cond_1

    .line 116
    invoke-super {p0, p1}, Lo/add;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Lo/abT$Activity;

    invoke-direct {v0, p0, p1}, Lo/abT$Activity;-><init>(Lo/abT;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p0, v0}, Lo/abT;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "successMsg"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 165
    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 166
    iput-boolean v0, p0, Lo/abT;->d:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "failureMsg"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 161
    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 170
    iget-boolean v0, p0, Lo/abT;->d:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string v2, "RefreshUserMessageRequest.ACTION_DISMISS_UMA_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lo/abT;->getServiceManager()Lo/Am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Am;->d(Z)V

    :goto_0
    return-void
.end method

.method public handleBackPressed()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lo/abT;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/abT;->e:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lo/abT;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    .line 104
    :cond_1
    :goto_0
    invoke-super {p0}, Lo/add;->handleBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 88
    invoke-super {p0, p1}, Lo/add;->onCreate(Landroid/os/Bundle;)V

    .line 92
    iget-object p1, p0, Lo/abT;->e:Landroid/webkit/WebView;

    .line 93
    new-instance v0, Lo/abT$ActionBar;

    .line 94
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lo/abT;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "success_msg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Success!"

    .line 96
    :goto_0
    invoke-virtual {p0}, Lo/abT;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "failure_msg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "Failed!"

    .line 93
    :goto_1
    invoke-direct {v0, p0, v1, v2, v3}, Lo/abT$ActionBar;-><init>(Lo/abT;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nfandroid"

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lo/abT;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "auto_login_enable"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lo/abT;->b:Z

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 156
    invoke-super {p0}, Lo/add;->onStop()V

    .line 157
    invoke-virtual {p0}, Lo/abT;->e()V

    return-void
.end method
