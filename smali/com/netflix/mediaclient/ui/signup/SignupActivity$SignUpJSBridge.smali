.class public Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;
.super Ljava/lang/Object;
.source "SignupActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->handleTokenActivate(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.method private handleTokenActivate(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 854
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 855
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 856
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Token Activate Complete - Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DisplayMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 863
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_4

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v2, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 865
    invoke-direct {p0, p2, v4}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 877
    :cond_2
    :goto_1
    return-void

    .line 854
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 869
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 870
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const v4, 0x7f0802bb

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 872
    if-eqz p2, :cond_2

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Executing the following javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 880
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "invokeJsCallbackQuery - func: %s, data: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 884
    return-void
.end method


# virtual methods
.method public getDeviceCategory()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "phone"

    goto :goto_0
.end method

.method public getESN()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getESNPrefix()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$800(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$800(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isNetflixPreloaded()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isNetflixPreloaded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const-string/jumbo v0, "true"

    .line 579
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public isPlayBillingEnabled()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 591
    .line 592
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 593
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    .line 594
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 595
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isPlayBillingDisabled()Z

    move-result v1

    .line 599
    :goto_0
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isNetflixPreloaded(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 601
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public launchUrl(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 491
    if-nez p1, :cond_1

    .line 492
    const-string/jumbo v0, "http://netflix.com"

    .line 500
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 501
    return-void

    .line 494
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 495
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loginCompleted()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 474
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "loginCompleted, noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public loginToApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "loginToApp ongoing, returning NULL operation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_0
    return-void

    .line 631
    :cond_0
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Login with Tokens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ErrHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1202(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->noConnectivityWarning()V

    goto :goto_0

    .line 640
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetflixId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "NetflixId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecureNetflixId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SecureNetflixId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Lorg/json/JSONObject;)V

    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 648
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const-string/jumbo v3, "prefs_non_member_playback"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 649
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 650
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1300(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 655
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$2;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "Failed to LoginToApp"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 668
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const v2, 0x7f0802bb

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 652
    :cond_3
    :try_start_1
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "loginToApp, invalid state to Login, bailing out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public logoutOfApp()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 678
    :cond_0
    return-void
.end method

.method public notifyReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 610
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Signup UI ready to interact"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mJumpToSignInTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 613
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method

.method public passNonMemberInfo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 453
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Ignoring passNonMemberInfo %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 454
    return-void
.end method

.method public playBillingGetPurchaseHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "playBillingGetPurchaseHistory"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingGetPurchaseHistory - playBillingNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 766
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$6;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$6;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getPurchaseHistory(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    goto :goto_0
.end method

.method public playBillingGetPurchases(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "playBillingGetPurchases"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingGetPurchases - playBillingNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 746
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$5;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$5;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getPurchases(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    goto :goto_0
.end method

.method public playBillingGetSkuDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 704
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 705
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 706
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 707
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v2, "playBillingGetSkuDetails, input:%s,  List:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 715
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingGetSkuDetails - playBillingNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 726
    :goto_1
    return-void

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$4;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$4;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getSkuDetails(Ljava/util/ArrayList;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    goto :goto_1
.end method

.method public playBillingPurchase(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 770
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p4}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 771
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 772
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingPurchase sku:%s, callbackFunc:%s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    aput-object p5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingPurchase - playBillingNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v0, 0x0

    invoke-direct {p0, p5, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 787
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v7, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$7;

    invoke-direct {v7, p0, p5}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$7;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->purchase(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    goto :goto_0
.end method

.method public playVideo(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 791
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->setNonMemberPlayback(Z)Z

    .line 795
    :cond_0
    const-string/jumbo v0, "episode"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 796
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const-string/jumbo v2, "mcplayer"

    invoke-direct {v1, v2, p2, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 797
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->setVideoId(Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/netflix/mediaclient/ui/player/NonMemberPlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 800
    return-void

    .line 795
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0
.end method

.method public playbackTokenActivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Another potential token activate ongoing, returning NULL operation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :goto_0
    return-void

    .line 809
    :cond_0
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Token Activate with Tokens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->noConnectivityWarning()V

    goto :goto_0

    .line 817
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 819
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetflixId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "NetflixId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecureNetflixId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SecureNetflixId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Lorg/json/JSONObject;)V

    .line 823
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 825
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 827
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "Failed to TokenActivate"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 849
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const v2, 0x7f0802bb

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 834
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 835
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const-string/jumbo v3, "prefs_non_member_playback"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 836
    new-instance v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_0

    .line 844
    :cond_4
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "tokenActivate, invalid state to token activate, bailing out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public saveUserCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveUserCredentials:: email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", passwd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1402(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$3;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 548
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update language to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->setCurrentAppLocale(Ljava/lang/String;)Z

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "setLanguage  failed, invalid state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showSignIn()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 459
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Show SignIn: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    .line 462
    return-void
.end method

.method public showSignOut()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 467
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Show SignOut"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    .line 470
    return-void
.end method

.method public signupCompleted()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 479
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "signupCompleted, report"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportSignUpOnDevice(Landroid/content/Context;)V

    .line 481
    return-void
.end method

.method public supportsSignUp(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 564
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SupportSignUp flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void
.end method

.method public toSignIn()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 440
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Redirecting to Login screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->finish()V

    .line 443
    return-void
.end method
