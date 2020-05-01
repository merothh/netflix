.class public Lo/abu$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/abu;


# direct methods
.method public constructor <init>(Lo/abu;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 928
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->h()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 4

    .line 899
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    .line 900
    :cond_0
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/abu;->c(Lo/abu;Z)Z

    .line 905
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 908
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    const-string v2, "SignIn"

    if-nez v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->u:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 914
    :cond_1
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 915
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/abu$Application;->b:Lo/abu;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qe:I

    invoke-virtual {v2, v3}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/abu$Application;->b:Lo/abu;

    iget-object v2, v2, Lo/abu;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v2}, Lo/abu;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    if-eqz p2, :cond_2

    .line 918
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 919
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Executing the following javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SignupActivity"

    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object p2, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {p2}, Lo/abu;->h()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 909
    :cond_3
    :goto_0
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v2}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 910
    invoke-direct {p0, p2, p1}, Lo/abu$Application;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic c(Lo/abu$Application;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1, p2}, Lo/abu$Application;->c(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lo/abu$Application;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1, p2}, Lo/abu$Application;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getDeviceCategory()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 644
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->j(Lo/abu;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->j(Lo/abu;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "phone"

    return-object v0
.end method

.method public getESN()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 616
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->c(Lo/abu;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->c(Lo/abu;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getESNPrefix()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 626
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->d(Lo/abu;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->d(Lo/abu;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 653
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 635
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->g(Lo/abu;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->g(Lo/abu;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isNetflixPreloaded()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 686
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/adk;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    return-object v0

    :cond_0
    const-string v0, "false"

    return-object v0
.end method

.method public launchUrl(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "http://netflix.com"

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 604
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 609
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lo/abu;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public logIDFAEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 895
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    iget-object v1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {v1}, Lo/abu;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/abD$StateListAnimator;->c(Lo/Am;Ljava/lang/String;)V

    return-void
.end method

.method public loginCompleted()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SignupActivity"

    const-string v1, "loginCompleted, noop"

    .line 583
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loginToApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 744
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->i(Lo/abu;)Z

    move-result v0

    const-string v1, "SignupActivity"

    if-eqz v0, :cond_0

    const-string p1, "loginToApp ongoing, returning NULL operation"

    .line 745
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 749
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login with Tokens "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ErrHandler: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0, p2}, Lo/abu;->b(Lo/abu;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    iget-object p2, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 752
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {p1}, Lo/abu;->g()V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 758
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 763
    new-instance p1, Lo/ToggleButton;

    invoke-direct {p1, v0}, Lo/ToggleButton;-><init>(Lorg/json/JSONObject;)V

    .line 764
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    const-string v2, "prefs_non_member_playback"

    invoke-static {v0, v2, p2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 767
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/SignIn;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/action/SignIn;-><init>()V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 769
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->f(Lo/abu;)Lo/JM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/JM;->d(Lo/ToggleButton;)Lio/reactivex/Observable;

    move-result-object p1

    .line 770
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    .line 771
    invoke-static {v0}, Lo/abu;->h(Lo/abu;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/abu$Application$4;

    const-string v2, "sendLoginUserByTokens"

    invoke-direct {v0, p0, v2}, Lo/abu$Application$4;-><init>(Lo/abu$Application;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 782
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/abu;->c(Lo/abu;Z)Z

    .line 784
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    new-instance v0, Lo/abu$Application$3;

    invoke-direct {v0, p0}, Lo/abu$Application$3;-><init>(Lo/abu$Application;)V

    invoke-virtual {p1, v0}, Lo/abu;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string p1, "loginToApp, invalid state to Login, bailing out"

    .line 779
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to LoginToApp"

    .line 793
    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {p1, p2}, Lo/abu;->c(Lo/abu;Z)Z

    .line 795
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qe:I

    invoke-virtual {p1, p2}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    iget-object v0, v0, Lo/abu;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0}, Lo/abu;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public logoutOfApp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 801
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->a(Lo/abu;)V

    return-void
.end method

.method public notifyOnRendered()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SignupActivity"

    const-string v1, "All images rendered"

    .line 730
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1}, Lo/abu;->b(Lo/abu;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public notifyReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SignupActivity"

    const-string v1, "Signup UI ready to interact"

    .line 699
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/abu$Application;->b:Lo/abu;

    iget-object v1, v1, Lo/abu;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 701
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1}, Lo/abu;->a(Lo/abu;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 703
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    new-instance v1, Lo/abu$Application$5;

    invoke-direct {v1, p0}, Lo/abu$Application$5;-><init>(Lo/abu$Application;)V

    invoke-virtual {v0, v1}, Lo/abu;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public passNonMemberInfo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SignupActivity"

    const-string v1, "passNonMemberInfo %s"

    .line 562
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public playVideo(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 825
    iget-object p4, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {p4}, Lo/abu;->getServiceManager()Lo/Am;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 826
    invoke-virtual {p4}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 827
    invoke-virtual {p4, v0}, Lo/Am;->b(Z)Z

    :cond_0
    const-string p4, "episode"

    .line 829
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 830
    :goto_0
    new-instance p4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const/4 v0, 0x0

    const-string v1, "mcplayer"

    invoke-direct {p4, v1, p2, v0, v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 831
    iget-object p2, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {p2}, Lo/abu;->f()Lo/abw;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/abw;->b(Ljava/lang/String;)V

    .line 832
    new-instance p2, Lo/u$Dialog$TaskDescription;

    .line 833
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-direct {p2, p1, p3, p4, v0}, Lo/u$Dialog$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    .line 834
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object p3, Lo/u$SharedElementCallback;->a:Lo/u$SharedElementCallback;

    invoke-virtual {p1, p3}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    .line 835
    invoke-virtual {p1, p2}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    iget-object p2, p0, Lo/abu$Application;->b:Lo/abu;

    .line 836
    invoke-virtual {p1, p2}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public playbackTokenActivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 841
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->i(Lo/abu;)Z

    move-result v0

    const-string v1, "SignupActivity"

    if-eqz v0, :cond_0

    const-string p1, "Another potential token activate ongoing, returning NULL operation"

    .line 842
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token Activate with Tokens "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {p1}, Lo/abu;->g()V

    return-void

    .line 854
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 859
    new-instance p1, Lo/ToggleButton;

    invoke-direct {p1, v0}, Lo/ToggleButton;-><init>(Lorg/json/JSONObject;)V

    .line 860
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 862
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    new-instance v0, Lo/abu$Application$1;

    invoke-direct {v0, p0, p2}, Lo/abu$Application$1;-><init>(Lo/abu$Application;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/abu;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 871
    :cond_2
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/command/SignInCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/SignInCommand;-><init>()V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 872
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    const-string v2, "prefs_non_member_playback"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 873
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->l(Lo/abu;)Lo/JM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/JM;->d(Lo/ToggleButton;)Lio/reactivex/Observable;

    move-result-object p1

    .line 874
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    .line 875
    invoke-static {v0}, Lo/abu;->m(Lo/abu;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/abu$Application$6;

    const-string v2, "sendLoginUserByTokens"

    invoke-direct {v0, p0, v2, p2}, Lo/abu$Application$6;-><init>(Lo/abu$Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_3
    const-string p1, "tokenActivate, invalid state to token activate, bailing out"

    .line 884
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to TokenActivate"

    .line 887
    invoke-static {v1, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 888
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/abu;->c(Lo/abu;Z)Z

    .line 889
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qe:I

    invoke-virtual {p1, p2}, Lo/abu;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    iget-object v0, v0, Lo/abu;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0}, Lo/abu;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public saveUserCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 811
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0, p1}, Lo/abu;->a(Lo/abu;Ljava/lang/String;)Ljava/lang/String;

    .line 812
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {p1, p2}, Lo/abu;->c(Lo/abu;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    new-instance p2, Lo/abu$Application$2;

    invoke-direct {p2, p0}, Lo/abu$Application$2;-><init>(Lo/abu$Application;)V

    invoke-virtual {p1, p2}, Lo/abu;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 658
    invoke-virtual {p0}, Lo/abu$Application;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update language to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignupActivity"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 661
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    sget-object v0, Lo/ys;->a:Lo/ys;

    iget-object v1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {v1}, Lo/abu;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lo/afz;

    invoke-direct {v2, p1}, Lo/afz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/ys;->b(Landroid/content/Context;Lo/afz;)V

    .line 664
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {p1}, Lo/abu;->b(Lo/abu;)V

    goto :goto_0

    :cond_0
    const-string p1, "setLanguage  failed, invalid state"

    .line 666
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public showSignIn()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SignupActivity"

    const-string v1, "Show SignIn: "

    .line 568
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/abu;->a(Lo/abu;Z)Z

    .line 570
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->b(Lo/abu;)V

    return-void
.end method

.method public showSignOut()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SignupActivity"

    const-string v1, "Show SignOut"

    .line 576
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/abu;->a(Lo/abu;Z)Z

    .line 578
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->b(Lo/abu;)V

    return-void
.end method

.method public signupCompleted()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SignupActivity"

    const-string v1, "signupCompleted, report"

    .line 588
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/adS;->c(Landroid/content/Context;)V

    return-void
.end method

.method public supportsSignUp(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportSignUp flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SignupActivity"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchToNative(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 736
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->Companion:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

    iget-object v1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_mode"

    .line 737
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {p1, v0}, Lo/abu;->startActivity(Landroid/content/Intent;)V

    .line 739
    iget-object p1, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {p1}, Lo/abu;->finish()V

    return-void
.end method

.method public toSignIn()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SignupActivity"

    const-string v1, "Redirecting to Login screen"

    .line 545
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abu;->d(Landroid/content/Intent;)V

    .line 547
    iget-object v0, p0, Lo/abu$Application;->b:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->finish()V

    return-void
.end method

.method public updateCookies()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method
